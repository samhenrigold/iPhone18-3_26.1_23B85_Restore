void sub_18F2A9764(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0, 0x1E696B0B8);
  v8 = sub_18F5218DC();
  v10 = sub_18F10051C(v8, v9, 0);
  v11 = LNDaemonApplicationXPCInterface();
  [v10 setRemoteObjectInterface_];

  [v10 resume];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  aBlock[4] = sub_18F2AA030;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F38D7A4;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  v15 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v16 = *v13;
  if (v16)
  {
    swift_willThrow();
    v17 = v16;
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return;
  }

  sub_18F0FECD4(v20, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8, &unk_18F560710);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18F2A9D1C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_18F2A8544(v20[5], a2, a3, a4);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    swift_unknownObjectRelease();
  }

  else
  {
    [v10 invalidate];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }
}

void sub_18F2A9A58(void (*a1)())
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0, 0x1E696B0B8);
  v3 = sub_18F5218DC();
  v5 = sub_18F10051C(v3, v4, 0);
  v6 = LNDaemonApplicationXPCInterface();
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  aBlock[4] = sub_18F21F2D8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F38D7A4;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);

  v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *v8;
  if (v11)
  {
    swift_willThrow();
    v12 = v11;
  }

  else
  {
    sub_18F0FECD4(v15, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8, &unk_18F560710);
    if (swift_dynamicCast())
    {
      a1();
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v15);

        swift_unknownObjectRelease();

        return;
      }

      [v5 invalidate];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_18F2A9D1C();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

unint64_t sub_18F2A9D1C()
{
  result = qword_1EACD46F0;
  if (!qword_1EACD46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD46F0);
  }

  return result;
}

uint64_t sub_18F2A9D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700, &qword_18F54AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F2A9E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700, &qword_18F54AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F2A9E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700, &qword_18F54AF90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppNotificationEventClient.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F2A9FBC()
{
  result = qword_1EACD4708;
  if (!qword_1EACD4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4708);
  }

  return result;
}

uint64_t IntentParameterContext.requestDisambiguation(among:dialog:)()
{
  OUTLINED_FUNCTION_69();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_10(v6);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = type metadata accessor for IntentContext(0);
  v1[34] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[35] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2AA100()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_23_22(5);
  if (v0)
  {
LABEL_5:

    OUTLINED_FUNCTION_71();

    return v4();
  }

  v1[26] = v1[28];
  swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  swift_getWitnessTable();
  if (sub_18F52213C())
  {
    v2 = sub_18F133EDC();
    OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v2);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0;
    *(v3 + 40) = 7;
    swift_willThrow();
    goto LABEL_5;
  }

  static IntentContext.current.getter(v1[35]);
  v6 = v1[32];
  v7 = v1[29];
  v1[17] = v1[30];
  OUTLINED_FUNCTION_0_66();
  v1[18] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  OUTLINED_FUNCTION_31_0();
  (*(v8 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v9 = sub_18F52298C();
  v1[36] = v9;
  sub_18F116A1C(v7, v6, &qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = type metadata accessor for IntentDialog(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
  v12 = v1[32];
  if (EnumTagSinglePayload == 1)
  {
    sub_18F116A1C(v1[31] + *(v1[30] + 48), v1[33], &qword_1EACCF7A0, &unk_18F53E6F0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v10) != 1)
    {
      sub_18F0FA038(v1[32], &qword_1EACCF7A0, &unk_18F53E6F0);
    }
  }

  else
  {
    sub_18F18F540(v1[32], v1[33]);
    v13 = OUTLINED_FUNCTION_26_26();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
  }

  v16 = (v1[35] + *(v1[34] + 72));
  v20 = (*v16 + **v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[37] = v17;
  *v17 = v18;
  v17[1] = sub_18F2AA46C;
  v19 = v1[33];

  return v20(v1 + 2, v1 + 14, v9, v19);
}

uint64_t sub_18F2AA46C()
{
  *(*v1 + 304) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2AA59C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 280);
  sub_18F0FA038(*(v0 + 264), &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F178EA4(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  sub_18F18F490(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 248);
    sub_18F18F4EC(v0 + 64);
    v3 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 8), v3);
    OUTLINED_FUNCTION_37_0();
    result = v4(v3);
    if (!v6)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = v6;
    v9 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 8), v9);
    OUTLINED_FUNCTION_7_33();
    *(v0 + 192) = v10(v9);
    *(v0 + 200) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
    v12 = sub_18F52194C();
    v14 = v13;
    v15 = sub_18F133EDC();
    v16 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v15);
    *v17 = v7;
    v17[1] = v8;
    v17[2] = v12;
    v17[3] = v14;
    OUTLINED_FUNCTION_32_6(v16, v17);
  }

  else
  {
    v18 = *(v0 + 304);
    v19 = *(v0 + 216);
    sub_18F0FD0B4((v0 + 64), v0 + 152);
    sub_18F2ABA74(v0 + 152, v19);
    if (!v18)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
      sub_18F18F4EC(v0 + 16);

      OUTLINED_FUNCTION_71();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  }

  sub_18F18F4EC(v0 + 16);

  OUTLINED_FUNCTION_71();
LABEL_7:

  return v20();
}

uint64_t sub_18F2AA78C()
{
  v1 = v0[35];
  sub_18F0FA038(v0[33], &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F178EA4(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t IntentParameterContext.requestValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2AA864()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 41) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_18F2AA90C;

  return IntentParameterContext.requestValue(_:snippetView:)();
}

uint64_t sub_18F2AA90C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 104) = v0;

  sub_18F0FA038(v3 + 16, &qword_1EACD0550, &qword_18F547EB0);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v9();
  }
}

uint64_t IntentParameterContext.requestValue(_:snippetView:)()
{
  OUTLINED_FUNCTION_69();
  v1[73] = v0;
  v1[72] = v2;
  v1[71] = v3;
  v1[70] = v4;
  v1[69] = v5;
  v6 = type metadata accessor for IntentContext(0);
  v1[74] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[75] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AAAF4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_23_22(6);
  if (v0)
  {

    OUTLINED_FUNCTION_71();

    return v2();
  }

  else
  {
    static IntentContext.current.getter(v1[75]);
    sub_18F116A1C(v1[71], (v1 + 2), &qword_1EACD0550, &qword_18F547EB0);
    if (v1[5])
    {
      sub_18F0FD6C4((v1 + 2), (v1 + 60));
      sub_18F18F3F8((v1 + 2));
      __swift_project_boxed_opaque_existential_1Tm(v1 + 60, v1[63]);
      OUTLINED_FUNCTION_9_5();
      v4 = swift_task_alloc();
      v1[76] = v4;
      *v4 = v1;
      v5 = OUTLINED_FUNCTION_12_8(v4);
    }

    else
    {
      sub_18F0FA038((v1 + 2), &qword_1EACD0550, &qword_18F547EB0);
      v1[79] = 0;
      v1[23] = v1[72];
      OUTLINED_FUNCTION_0_66();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_37_16(WitnessTable);
      OUTLINED_FUNCTION_31_0();
      (*(v8 + 16))();
      OUTLINED_FUNCTION_2_59();
      v12 = v9;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v1[80] = v10;
      *v10 = v11;
      v5 = OUTLINED_FUNCTION_4_44(v10);
      v6 = v12;
    }

    return v6(v5);
  }
}

uint64_t sub_18F2AAD8C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 616) = v4;
  *(v2 + 624) = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F2AAE98()
{
  OUTLINED_FUNCTION_31();
  if (v0[78] >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    sub_18F18F44C();
    v2 = OUTLINED_FUNCTION_56();
    v1 = sub_18F1F0988(v2, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v0[79] = v1;
  v0[23] = v0[72];
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_37_16(WitnessTable);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_111();
  v5();
  OUTLINED_FUNCTION_2_59();
  v11 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[80] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_44(v7);

  return v11(v9);
}

uint64_t sub_18F2AAFDC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 648) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AB0D4()
{
  v1 = *(v0 + 584);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_18F18D79C(v0 + 64, v0 + 112);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 584);
    sub_18F18D7F8(v0 + 112);
    v3 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v3);
    OUTLINED_FUNCTION_37_0();
    result = v4(v3);
    if (v6)
    {
      v7 = result;
      v8 = v6;
      v9 = *(v0 + 632);
      v10 = *(v0 + 600);
      v11 = *(v2 + 32);
      __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v11);
      OUTLINED_FUNCTION_7_33();
      *(v0 + 520) = v12(v11);
      *(v0 + 528) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
      v14 = sub_18F52194C();
      v16 = v15;
      v17 = sub_18F133EDC();
      v18 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v17);
      *v19 = v7;
      v19[1] = v8;
      v19[2] = v14;
      v19[3] = v16;
      OUTLINED_FUNCTION_32_6(v18, v19);

      sub_18F18D7F8(v0 + 64);
      sub_18F178EA4(v10);

      OUTLINED_FUNCTION_71();

      return v20();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_18F0FD0B4((v0 + 112), v0 + 200);
    sub_18F0FD6C4(v1 + 8, v0 + 240);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    v23 = OUTLINED_FUNCTION_36_17();
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    (*(*(v22 + 8) + 72))(v21);
    sub_18F0FD6C4(v0 + 200, v0 + 320);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v27 = OUTLINED_FUNCTION_36_17();
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    (*(*(v26 + 8) + 80))(v0 + 320, v25);
    v29 = *(v0 + 264);
    v30 = *(v0 + 272);
    v31 = OUTLINED_FUNCTION_36_17();
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v34 = (*(v30 + 40) + **(v30 + 40));
    v33 = swift_task_alloc();
    *(v0 + 656) = v33;
    *v33 = v0;
    v33[1] = sub_18F2AB44C;

    return v34(0, 0, v29, v30);
  }

  return result;
}

uint64_t sub_18F2AB3D4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 600);

  sub_18F178EA4(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F2AB44C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AB544()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = OUTLINED_FUNCTION_36_17();
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  (*(*(v2 + 8) + 72))(v1);
  if (*(v0 + 424))
  {
    v5 = *(v0 + 552);
    sub_18F0FD0B4((v0 + 400), v0 + 360);
    sub_18F116A1C(v0 + 280, v0 + 440, &qword_1EACD0620, &unk_18F541850);
    v6 = *(v0 + 264);
    v7 = *(v0 + 272);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 240, v6);
    (*(*(v7 + 8) + 80))(v0 + 440, v6);
    sub_18F2ABA74(v0 + 360, v5);
    v8 = *(v0 + 600);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 360));
    sub_18F0FA038(v0 + 280, &qword_1EACD0620, &unk_18F541850);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
    sub_18F18D7F8(v0 + 64);
    sub_18F178EA4(v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  else
  {
    v9 = *(v0 + 584);
    sub_18F0FA038(v0 + 400, &qword_1EACD0620, &unk_18F541850);
    v10 = *(v9 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v9 + 8), v10);
    OUTLINED_FUNCTION_7_33();
    *(v0 + 536) = v11(v10);
    *(v0 + 544) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
    v13 = sub_18F52194C();
    v15 = v14;
    v16 = *(v9 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v9 + 8), v16);
    OUTLINED_FUNCTION_37_0();
    result = v17(v16);
    if (!v19)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = v19;
    v22 = *(v0 + 632);
    v23 = *(v0 + 600);
    v24 = sub_18F133EDC();
    v25 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v24);
    *v26 = v20;
    v26[1] = v21;
    v26[2] = v13;
    v26[3] = v15;
    OUTLINED_FUNCTION_32_6(v25, v26);

    sub_18F0FA038(v0 + 280, &qword_1EACD0620, &unk_18F541850);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
    sub_18F18D7F8(v0 + 64);
    sub_18F178EA4(v23);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  OUTLINED_FUNCTION_71();

  return v27();
}

uint64_t sub_18F2AB7DC()
{
  OUTLINED_FUNCTION_31();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);
  v0[79] = 0;
  v0[23] = v0[72];
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_37_16(WitnessTable);
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 16))();
  OUTLINED_FUNCTION_2_59();
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[80] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_44(v4);

  return v8(v6);
}

uint64_t sub_18F2AB8E8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 600);

  sub_18F0FA038(v0 + 280, &qword_1EACD0620, &unk_18F541850);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  sub_18F18D7F8(v0 + 64);
  sub_18F178EA4(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));

  OUTLINED_FUNCTION_71();

  return v2();
}

void sub_18F2AB988(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (sub_18F15BA34(*(v3 + 48), 1))
  {
    if (qword_1ED6FDA70 != -1)
    {
      swift_once();
    }

    v7 = sub_18F52165C();
    __swift_project_value_buffer(v7, qword_1ED7076B0);
    sub_18F1F8920();
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    sub_18F172BEC(a1, a2, a3);
    sub_18F2033C0(v8);
  }
}

uint64_t sub_18F2ABA74@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_18F52254C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-1] - v8;
  sub_18F0FD6C4(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v9, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v11 = sub_18F52165C();
    __swift_project_value_buffer(v11, qword_1ED7077A8);
    sub_18F0FD6C4(a1, v27);
    v12 = sub_18F52163C();
    v13 = sub_18F52221C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_18F11897C(0xD00000000000001ALL, 0x800000018F527D90, &v26);
      *(v14 + 12) = 2080;
      sub_18F0FD6C4(v27, v25);
      v16 = sub_18F52194C();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v19 = sub_18F11897C(v16, v18, &v26);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2080;
      v25[0] = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v20 = sub_18F52194C();
      v22 = sub_18F11897C(v20, v21, &v26);

      *(v14 + 24) = v22;
      _os_log_impl(&dword_18F0E9000, v12, v13, "%s failed, %s not of type %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v15, -1, -1);
      MEMORY[0x193ADD350](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    sub_18F133EDC();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 7;
    return swift_willThrow();
  }
}

uint64_t IntentParameterContext.requestConfirmation(for:dialog:)()
{
  OUTLINED_FUNCTION_69();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_18F5205FC();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = OUTLINED_FUNCTION_34_0();
  v6 = type metadata accessor for IntentContext(0);
  v1[39] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[40] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F2ABEF4()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_23_22(4);
  if (v0)
  {
    OUTLINED_FUNCTION_30_19();

    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X2, X16 }
  }

  static IntentContext.current.getter(v1[40]);
  v1[23] = v1[34];
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_37_16(WitnessTable);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_111();
  v5();
  OUTLINED_FUNCTION_111();
  v1[28] = swift_getAssociatedTypeWitness();
  v1[29] = OUTLINED_FUNCTION_21_22();
  __swift_allocate_boxed_opaque_existential_1(v1 + 25);
  OUTLINED_FUNCTION_31_0();
  (*(v6 + 16))();
  OUTLINED_FUNCTION_1_57();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[41] = v7;
  *v7 = v8;
  v7[1] = sub_18F2AC15C;
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_18F2AC15C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AC254()
{
  OUTLINED_FUNCTION_31();
  sub_18F178EA4(*(v0 + 320));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 41) = *(v0 + 89);
  sub_18F18F5A4(v0 + 16, v0 + 112);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 280);
    sub_18F18F600(v0 + 112);
    v3 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 8), v3);
    OUTLINED_FUNCTION_37_0();
    result = v4(v3);
    if (!v6)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = v6;
    v9 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 8), v9);
    OUTLINED_FUNCTION_7_33();
    *(v0 + 240) = v10(v9);
    *(v0 + 248) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530, &qword_18F549B50);
    v12 = sub_18F52194C();
    v14 = v13;
    v15 = sub_18F133EDC();
    v16 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v15);
    *v17 = v7;
    v17[1] = v8;
    v17[2] = v12;
    v17[3] = v14;
    OUTLINED_FUNCTION_32_6(v16, v17);
    sub_18F18F600(v0 + 16);
    OUTLINED_FUNCTION_30_19();

    v18 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    sub_18F18F600(v0 + 16);
    sub_18F18F600(v0 + 112);
    OUTLINED_FUNCTION_30_19();

    v19 = *(v0 + 8);
    v18 = 1;
  }

  return v19(v18);
}

uint64_t sub_18F2AC3F4()
{
  OUTLINED_FUNCTION_31();
  sub_18F178EA4(v0[40]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v1;
  sub_18F5205DC();
  sub_18F2AC4F8();
  v6 = sub_18F52095C();

  (*(v3 + 8))(v2, v4);
  if (v6)
  {
  }

  OUTLINED_FUNCTION_30_19();

  v7 = OUTLINED_FUNCTION_10_8();

  return v8(v7);
}

unint64_t sub_18F2AC4F8()
{
  result = qword_1EACD0560;
  if (!qword_1EACD0560)
  {
    sub_18F5205FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0560);
  }

  return result;
}

uint64_t IntentParameterContext.needsValueError(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_18F0FD6C4(v3 + 8, v21);
  sub_18F116A1C(a1, v11, &qword_1EACCF7A0, &unk_18F53E6F0);
  v15 = type metadata accessor for IntentDialog(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    sub_18F116A1C(v3 + *(a2 + 44), v14, &qword_1EACCF7A0, &unk_18F53E6F0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      sub_18F0FA038(v11, &qword_1EACCF7A0, &unk_18F53E6F0);
    }
  }

  else
  {
    sub_18F18F540(v11, v14);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568, &qword_18F5459F0);
  v17 = *(v16 + 48);
  v18 = (a3 + *(v16 + 64));
  sub_18F0FD0B4(v21, a3);
  sub_18F1170D0(v14, a3 + v17);
  type metadata accessor for AppIntentError.Context(0);
  *v18 = 0u;
  v18[1] = 0u;
  *(v18 + 25) = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t IntentParameterContext.needsValueError(_:snippetView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_29_25();
  sub_18F116A1C(a1, v14, &qword_1EACCF7A0, &unk_18F53E6F0);
  v16 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_0_13(v14);
  if (v17)
  {
    sub_18F116A1C(v4 + *(a3 + 44), v5, &qword_1EACCF7A0, &unk_18F53E6F0);
    OUTLINED_FUNCTION_0_13(v14);
    if (!v17)
    {
      sub_18F0FA038(v14, &qword_1EACCF7A0, &unk_18F53E6F0);
    }
  }

  else
  {
    sub_18F18F540(v14, v5);
    v18 = OUTLINED_FUNCTION_26_26();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568, &qword_18F5459F0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  sub_18F0FD0B4(&v25, a4);
  sub_18F1170D0(v5, a4 + v22);
  sub_18F116A1C(a2, a4 + v23, &qword_1EACD0550, &qword_18F547EB0);
  type metadata accessor for AppIntentError.Context(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t IntentParameterContext.needsDisambiguationError(among:dialog:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_29_25();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v15 = sub_18F52298C();
  sub_18F116A1C(a2, v13, &qword_1EACCF7A0, &unk_18F53E6F0);
  v16 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_0_13(v13);
  if (v17)
  {
    sub_18F116A1C(v4 + *(a3 + 48), v5, &qword_1EACCF7A0, &unk_18F53E6F0);
    OUTLINED_FUNCTION_0_13(v13);
    if (!v17)
    {
      sub_18F0FA038(v13, &qword_1EACCF7A0, &unk_18F53E6F0);
    }
  }

  else
  {
    sub_18F18F540(v13, v5);
    v18 = OUTLINED_FUNCTION_26_26();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0570, &unk_18F547EA0) + 64);
  sub_18F0FD0B4(&v23, a4);
  *(a4 + 40) = v15;
  sub_18F1170D0(v5, a4 + v21);
  type metadata accessor for AppIntentError.Context(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t IntentParameterContext.requestConfirmation(for:dialog:snippetView:)()
{
  OUTLINED_FUNCTION_69();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v1[41] = v5;
  v6 = sub_18F5205FC();
  v1[46] = v6;
  v1[47] = *(v6 - 8);
  v1[48] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for IntentContext(0);
  v1[49] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[50] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_18F2ACB78()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_23_22(4);
  if (!v0)
  {
    static IntentContext.current.getter(v1[50]);
    sub_18F116A1C(v1[43], (v1 + 2), &qword_1EACD0550, &qword_18F547EB0);
    if (v1[5])
    {
      sub_18F0FD6C4((v1 + 2), (v1 + 36));
      sub_18F18F3F8((v1 + 2));
      __swift_project_boxed_opaque_existential_1Tm(v1 + 36, v1[39]);
      OUTLINED_FUNCTION_9_5();
      v4 = swift_task_alloc();
      v1[51] = v4;
      *v4 = v1;
      OUTLINED_FUNCTION_12_8(v4);
      OUTLINED_FUNCTION_54_3();

      __asm { BRAA            X4, X16 }
    }

    sub_18F0FA038((v1 + 2), &qword_1EACD0550, &qword_18F547EB0);
    v1[54] = 0;
    v1[29] = v1[44];
    OUTLINED_FUNCTION_0_66();
    v1[30] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v1 + 26);
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_111();
    v7();
    OUTLINED_FUNCTION_111();
    v1[34] = swift_getAssociatedTypeWitness();
    v1[35] = OUTLINED_FUNCTION_21_22();
    __swift_allocate_boxed_opaque_existential_1(v1 + 31);
    OUTLINED_FUNCTION_31_0();
    (*(v8 + 16))();
    OUTLINED_FUNCTION_1_57();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v1[55] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_3_40(v9);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_38_12();

  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_18F2ACE74()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 416) = v4;
  *(v2 + 424) = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18F2ACF7C()
{
  OUTLINED_FUNCTION_24_4();
  if (v0[53] >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    sub_18F18F44C();
    v2 = OUTLINED_FUNCTION_56();
    v1 = sub_18F1F0988(v2, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v0[54] = v1;
  v0[29] = v0[44];
  OUTLINED_FUNCTION_0_66();
  v0[30] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v0 + 26);
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 16))();
  v0[34] = swift_getAssociatedTypeWitness();
  v0[35] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 31);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 16))();
  OUTLINED_FUNCTION_1_57();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[55] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_3_40(v6);
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_18F2AD150()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AD248()
{
  OUTLINED_FUNCTION_31();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v1 = *(v0 + 128);
  *(v0 + 64) = *(v0 + 112);
  *(v0 + 80) = v1;
  *(v0 + 89) = *(v0 + 137);
  sub_18F18F5A4(v0 + 64, v0 + 160);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  if (*(v0 + 200))
  {
    sub_18F18F600(v0 + 160);
    v4 = sub_18F133EDC();
    OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v4);
    *v5 = 4;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 7;
    swift_willThrow();

    sub_18F18F600(v0 + 64);
    sub_18F178EA4(v3);
    OUTLINED_FUNCTION_38_12();

    v6 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    sub_18F18F600(v0 + 64);

    sub_18F178EA4(v3);
    sub_18F18F600(v0 + 160);
    OUTLINED_FUNCTION_38_12();

    v6 = OUTLINED_FUNCTION_27_26();
  }

  return v7(v6);
}

uint64_t sub_18F2AD380()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v7 = v1;
  sub_18F5205DC();
  sub_18F2AC4F8();
  v8 = sub_18F52095C();

  (*(v5 + 8))(v4, v6);
  sub_18F178EA4(v3);
  if (v8)
  {

    OUTLINED_FUNCTION_38_12();

    v9 = OUTLINED_FUNCTION_27_26();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_10_8();
  }

  return v10(v9);
}

uint64_t sub_18F2AD4A0()
{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v0[54] = 0;
  v0[29] = v0[44];
  OUTLINED_FUNCTION_0_66();
  v0[30] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v0 + 26);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_111();
  v1();
  OUTLINED_FUNCTION_111();
  v0[34] = swift_getAssociatedTypeWitness();
  v0[35] = OUTLINED_FUNCTION_21_22();
  __swift_allocate_boxed_opaque_existential_1(v0 + 31);
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 16))();
  OUTLINED_FUNCTION_1_57();
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[55] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_40(v4);

  return v8(v6);
}

uint64_t sub_18F2AD628(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != *(a1 + 16); ++i)
  {
    v3 = (*a2 + 32);
    v4 = *(*a2 + 16) + 1;
    while (--v4)
    {
      v5 = *v3;
      v3 += 2;
      if (v5 == *(a1 + 32 + 16 * i))
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t sub_18F2AD68C()
{
  OUTLINED_FUNCTION_69();
  v1[2] = v0;
  v1[3] = sub_18F52159C();
  OUTLINED_FUNCTION_14_6();
  v1[4] = v2;
  v1[5] = OUTLINED_FUNCTION_34_0();
  v3 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2AD734()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2AD790()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 48) = sub_18F2B6EC0(*(v0 + 40), 0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_134_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_133_2(v2);

  return sub_18F2B5D04(v4, v5);
}

uint64_t sub_18F2AD820()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2AD924()
{
  OUTLINED_FUNCTION_21();
  sub_18F2B70D8(*(v0 + 48), 0);

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 72);

  return v3(v4);
}

uint64_t sub_18F2AD9B8()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_43_14();
  sub_18F2B70D8(v0, 0);

  v1 = OUTLINED_FUNCTION_15_26();
  v2(v1);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2ADA38()
{
  OUTLINED_FUNCTION_69();
  v1[2] = v0;
  v1[3] = sub_18F52159C();
  OUTLINED_FUNCTION_14_6();
  v1[4] = v2;
  v1[5] = OUTLINED_FUNCTION_34_0();
  v3 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2ADAE0()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2ADB3C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 48) = sub_18F2B6EC0(*(v0 + 40), 1);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_134_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_133_2(v2);

  return sub_18F2B647C(v4, v5);
}

uint64_t sub_18F2ADBCC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2ADCD0()
{
  OUTLINED_FUNCTION_21();
  sub_18F2B70D8(*(v0 + 48), 1);

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 72);

  return v3(v4);
}

uint64_t sub_18F2ADD64()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_43_14();
  sub_18F2B70D8(v0, 1);

  v1 = OUTLINED_FUNCTION_15_26();
  v2(v1);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2ADDE4()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 112) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 64) = sub_18F52159C();
  OUTLINED_FUNCTION_14_6();
  *(v1 + 72) = v6;
  *(v1 + 80) = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2ADE94()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2ADEF0()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 112);
  *(v0 + 88) = sub_18F2B6EC0(*(v0 + 80), 2);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_18F2ADFA0;
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_18F2AE224(v0 + 16, v3, v5, v6, v4, v1 & 1);
}

uint64_t sub_18F2ADFA0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_18F2AE140;
  }

  else
  {
    v7 = sub_18F2AE09C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F2AE09C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_132_3();
  sub_18F2B70D8(v1, v2);

  v3 = OUTLINED_FUNCTION_28_32();
  v4(v3);
  v5 = v0[2];
  if (v5)
  {
    v6 = v0[3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_18F2AE140()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_132_3();
  sub_18F2B70D8(v0, v1);

  v2 = OUTLINED_FUNCTION_15_26();
  v3(v2);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2AE1C8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2AE224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v12 = swift_task_alloc();
  v6[6] = v12;
  *v12 = v6;
  v12[1] = sub_18F2AE2F4;

  return sub_18F2B0E78(0, a2, a3, a4, a5, a6 & 1);
}

uint64_t sub_18F2AE2F4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_18F2AE41C()
{
  OUTLINED_FUNCTION_24_4();
  v26 = v0;
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7)
    {
      v8 = *(v6 - 1);

      if (v3 >= 2)
      {
        if (qword_1ED6FE088 != -1)
        {
          swift_once();
        }

        v9 = sub_18F52165C();
        __swift_project_value_buffer(v9, qword_1ED707760);
        v10 = sub_18F52163C();
        v11 = sub_18F52222C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = v0[4];
          OUTLINED_FUNCTION_126();
          v13 = OUTLINED_FUNCTION_51_1();
          v25 = v13;
          *v1 = 136315138;
          v14 = static AppIntent._identifier.getter(v12);
          v16 = sub_18F11897C(v14, v15, &v25);

          *(v1 + 4) = v16;
          _os_log_impl(&dword_18F0E9000, v10, v11, "More than one intent matching %s associated to views,\nwhich is performed will be arbitrary", v1, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v13);
          OUTLINED_FUNCTION_55_0();
          OUTLINED_FUNCTION_65();
        }
      }

      v17 = v0[2];
      *v17 = v7;
      v17[1] = v8;
      goto LABEL_16;
    }
  }

  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v18 = sub_18F52165C();
  __swift_project_value_buffer(v18, qword_1ED707698);
  v19 = sub_18F52163C();
  v20 = sub_18F52223C();
  if (OUTLINED_FUNCTION_84_2(v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_18F0E9000, v19, v20, "No valid view intents located", v21, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v22 = v0[2];

  *v22 = 0;
  v22[1] = 0;
LABEL_16:
  OUTLINED_FUNCTION_71();

  return v23();
}

uint64_t sub_18F2AE66C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F2AE68C, v1, 0);
}

uint64_t sub_18F2AE68C()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_18F2AE74C;

  return sub_18F2B0A9C(1, &unk_18F550858, v2);
}

uint64_t sub_18F2AE74C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_24_10();

    return v10();
  }
}

uint64_t sub_18F2AE884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_18F521EBC();
  v4[3] = sub_18F521EAC();
  ObjectType = swift_getObjectType();
  v10 = (*(a3 + 32) + **(a3 + 32));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_18F2AE9D4;

  return v10(a4, ObjectType, a3);
}

uint64_t sub_18F2AE9D4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_18F521E1C();
  OUTLINED_FUNCTION_114_2();
  if (v0)
  {
    v9 = sub_18F2AEB70;
  }

  else
  {
    v9 = sub_18F2AEB14;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_18F2AEB14()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2AEB70()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2AEBCC()
{
  OUTLINED_FUNCTION_69();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_18F52159C();
  OUTLINED_FUNCTION_14_6();
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_34_0();
  v4 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F2AEC74()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2AECD0()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 56) = sub_18F2B6EC0(*(v0 + 48), 0);
  v1 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F2AED38()
{
  OUTLINED_FUNCTION_69();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F2AEDD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_18F2B6044(0, v2, v3);
}

uint64_t sub_18F2AEDD4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2AEED8()
{
  OUTLINED_FUNCTION_21();
  sub_18F2B70D8(*(v0 + 56), 0);

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_18F2AEF6C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  sub_18F2B70D8(*(v0 + 56), 0);

  v1 = OUTLINED_FUNCTION_15_26();
  v2(v1);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2AEFF8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2AF054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = OUTLINED_FUNCTION_20_22();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2AF080()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 96);
  v15 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v15;
  type metadata accessor for CompletionAggregator();
  swift_allocObject();
  *(v0 + 104) = sub_18F2B6D74(v2, sub_18F2B6E50, v3);
  v4 = *(v1 + 112);
  *(v0 + 112) = v4;
  v5 = v4[2];
  *(v0 + 120) = v5;
  if (v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v0 + 128) = 0;
    *(v0 + 136) = v6;
    *(v0 + 144) = v4[4];
    v7 = v4[5];

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    swift_getObjectType();
    v8 = *(v7 + 72);
    swift_unknownObjectRetain();

    v14 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_40_14(v9);

    return v14(v10);
  }

  else
  {

    OUTLINED_FUNCTION_20_0();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t sub_18F2AF2A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_103_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2AF3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  v17 = v16[20];
  if (v17 >> 62)
  {
    v18 = sub_18F5226AC();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v16[17];
  v20 = v19 >> 62;
  if (v19 >> 62)
  {
    result = sub_18F5226AC();
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = result + v18;
  if (__OFADD__(result, v18))
  {
    __break(1u);
    goto LABEL_39;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if (!v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    sub_18F5226AC();
    goto LABEL_13;
  }

  v23 = v19 & 0xFFFFFFFFFFFFFF8;
  v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v24 >= v22)
  {
    v25 = v16[17];
    goto LABEL_14;
  }

LABEL_13:
  result = sub_18F52283C();
  v25 = result;
  v23 = result & 0xFFFFFFFFFFFFFF8;
  v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_14:
  v26 = *(v23 + 16);
  v27 = v24 - v26;
  if (v17 >> 62)
  {
    if (sub_18F5226AC())
    {
      OUTLINED_FUNCTION_60_5();
      result = sub_18F5226AC();
      if (v27 < result)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v19 < 1)
      {
LABEL_43:
        __break(1u);
        return result;
      }

      a10 = result;
      a11 = v23;
      a12 = v25;
      a13 = v18;
      sub_18F2B75A4();
      for (i = 0; i != v19; ++i)
      {
        v30 = v16[20];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4710, &qword_18F550828);
        v31 = sub_18F230E10((v16 + 2), i, v30);
        v33 = *v32;
        v31(v16 + 2, 0);
        *(v23 + 8 * v26 + 32 + 8 * i) = v33;
      }

      v25 = a12;
      v28 = a10;
      goto LABEL_24;
    }
  }

  else
  {
    v28 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      if (v27 < v28)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      sub_18F2B6E7C();
      swift_arrayInitWithCopy();
LABEL_24:

      if (v28 >= v18)
      {
        if (v28 <= 0)
        {
          goto LABEL_29;
        }

        v34 = *(v23 + 16);
        v35 = __OFADD__(v34, v28);
        v36 = v34 + v28;
        if (!v35)
        {
          *(v23 + 16) = v36;
          goto LABEL_29;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  if (v18 > 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  v37 = v16[15];
  v38 = v16[16];
  swift_unknownObjectRelease();
  if (v38 + 1 == v37)
  {

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_28_2();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v47 = v16[16] + 1;
    v16[16] = v47;
    v16[17] = v25;
    v48 = v16[14] + 16 * v47;
    v16[18] = *(v48 + 32);
    v49 = *(v48 + 40);
    swift_getObjectType();
    v50 = *(v49 + 72);
    swift_unknownObjectRetain();

    v60 = v50 + *v50;
    v51 = swift_task_alloc();
    v16[19] = v51;
    *v51 = v16;
    OUTLINED_FUNCTION_40_14(v51);
    OUTLINED_FUNCTION_28_2();

    return v57(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, v60, v49 + 72, a14, a15, a16);
  }
}

void sub_18F2AF76C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_18F2B773C(v2, &v3);
  os_unfair_lock_unlock(v1 + 4);
  if (!v3)
  {
    (*(v0 + 32))();
  }
}

uint64_t sub_18F2AF7E8()
{
  OUTLINED_FUNCTION_69();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v1[10] = *(v4 - 8);
  v1[11] = OUTLINED_FUNCTION_34_0();
  v6 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F2AF890()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[12] = v2;
  v3 = *(v2 + 16);
  v0[13] = v3;
  if (v3)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v0[14] = v4;
      v0[15] = v5;
      v6 = *(v0[12] + 16 * v4 + 32);
      v0[16] = v6;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v6, ObjectType, &protocol descriptor for AppViewBridgeInternal))
      {
        break;
      }

      OUTLINED_FUNCTION_63_4();
      if (v9)
      {

        goto LABEL_7;
      }
    }

    v15 = v8;
    swift_getObjectType();
    v16 = *(v15 + 16);
    swift_unknownObjectRetain();
    v19 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v18 = OUTLINED_FUNCTION_47_12(v17);

    return v19(v18);
  }

  else
  {
LABEL_7:
    v10 = v0[11];
    v11 = v0[7];
    v12 = v0[5];
    (*(v0[10] + 16))(v10, v0[6], v11);
    SceneActionsProvider.init<A>(aggregating:for:)(MEMORY[0x1E69E7CC0], v10, v11, v12);

    OUTLINED_FUNCTION_71();

    return v13();
  }
}

uint64_t sub_18F2AFAAC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F2AFBA4()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  v3 = *(v0[15] + 16);
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[15];
  if (!isUniquelyReferenced_nonNull_native || (v6 = *(v5 + 24) >> 1, v6 < v3 + v2))
  {
    OUTLINED_FUNCTION_128_2();
    sub_18F168D74();
    v5 = v7;
    v6 = *(v7 + 24) >> 1;
  }

  if (*(v1 + 16))
  {
    if (v6 - *(v5 + 16) >= v2)
    {
      swift_arrayInitWithCopy();

      if (!v2)
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 16);
      v9 = __OFADD__(v8, v2);
      v10 = v8 + v2;
      if (!v9)
      {
        *(v5 + 16) = v10;
        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_11:
  swift_unknownObjectRelease();
  while (1)
  {
    OUTLINED_FUNCTION_63_4();
    if (v12)
    {
      break;
    }

    v0[14] = v11;
    v0[15] = v5;
    v13 = *(v0[12] + 16 * v11 + 32);
    v0[16] = v13;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v13, ObjectType, &protocol descriptor for AppViewBridgeInternal))
    {
      v16 = v15;
      swift_getObjectType();
      v17 = *(v16 + 16);
      swift_unknownObjectRetain();
      v24 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[17] = v18;
      *v18 = v0;
      v19 = OUTLINED_FUNCTION_47_12(v18);

      v24(v19);
      return;
    }
  }

  v20 = v0[11];
  v21 = v0[7];
  v22 = v0[5];
  (*(v0[10] + 16))(v20, v0[6], v21);
  SceneActionsProvider.init<A>(aggregating:for:)(v5, v20, v21, v22);

  OUTLINED_FUNCTION_71();

  v23();
}

uint64_t sub_18F2AFE50(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 80) = a1;
  v4 = sub_18F52159C();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2AFF18, a2, 0);
}

uint64_t sub_18F2AFF18()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2AFF74()
{
  OUTLINED_FUNCTION_69();
  v0[6] = sub_18F2B6EC0(v0[5], 3);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_134_0(v1);
  *v2 = v3;
  v2[1] = sub_18F2B0010;
  v4 = OUTLINED_FUNCTION_171(v0[2]);

  return sub_18F2B12BC(v4, v5);
}

uint64_t sub_18F2B0010()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B0114()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_102_4();

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 72);

  return v3(v4);
}

uint64_t sub_18F2B01A0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_43_14();
  sub_18F2B70D8(v0, 3);

  v1 = OUTLINED_FUNCTION_15_26();
  v2(v1);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2B0220()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2B027C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 96) = a1;
  v6 = sub_18F52159C();
  *(v3 + 32) = v6;
  *(v3 + 40) = *(v6 - 8);
  *(v3 + 48) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *(v7 + 16) = a3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return MEMORY[0x1EEE6DFA0](sub_18F2B036C, a2, 0);
}

uint64_t sub_18F2B036C()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B03C8()
{
  OUTLINED_FUNCTION_69();
  v0[8] = sub_18F2B6EC0(v0[6], 3);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_18F2B0468;
  v2 = OUTLINED_FUNCTION_171(v0[2]);

  return sub_18F2B214C(v2, v3, v4);
}

uint64_t sub_18F2B0468()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B056C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_82_2();

  v0 = OUTLINED_FUNCTION_15_26();
  v1(v0);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2B05F0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_18F2B0664()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_82_2();

  v0 = OUTLINED_FUNCTION_15_26();
  v1(v0);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2B06E8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2B0758(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 80) = a1;
  v4 = sub_18F52159C();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B0820, a2, 0);
}

uint64_t sub_18F2B0820()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B087C()
{
  OUTLINED_FUNCTION_69();
  v0[6] = sub_18F2B6EC0(v0[5], 3);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_134_0(v1);
  *v2 = v3;
  v2[1] = sub_18F2B0918;
  v4 = OUTLINED_FUNCTION_171(v0[2]);

  return sub_18F2B3190(v4, v5);
}

uint64_t sub_18F2B0918()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B0A1C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_43_14();
  sub_18F2B70D8(v0, 3);

  v1 = OUTLINED_FUNCTION_15_26();
  v2(v1);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F2B0A9C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 96) = a1;
  v5 = sub_18F52159C();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B0B64, v3, 0);
}

uint64_t sub_18F2B0B64()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B0BC0()
{
  OUTLINED_FUNCTION_69();
  v0[8] = sub_18F2B6EC0(v0[7], 3);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_18F2B0C64;
  v2 = OUTLINED_FUNCTION_171(v0[4]);

  return sub_18F2B4020(v2, v3, v4, v5);
}

uint64_t sub_18F2B0C64()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B0D68()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_102_4();

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 88);

  return v3(v4);
}

uint64_t sub_18F2B0DF4()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_4();

  v0 = OUTLINED_FUNCTION_15_26();
  v1(v0);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2B0E78(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 105) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 104) = a1;
  v8 = sub_18F52159C();
  *(v6 + 48) = v8;
  *(v6 + 56) = *(v8 - 8);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B0F48, a2, 0);
}

uint64_t sub_18F2B0F48()
{
  OUTLINED_FUNCTION_69();
  sub_18F52158C();
  v0 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B0FA4()
{
  OUTLINED_FUNCTION_69();
  v0[9] = sub_18F2B6EC0(v0[8], 3);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_18F2B1050;
  v2 = OUTLINED_FUNCTION_171(v0[2]);

  return sub_18F2B4D44(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F2B1050()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B1154()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_102_4();

  v1 = OUTLINED_FUNCTION_28_32();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_18F2B11E0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_82_2();

  v0 = OUTLINED_FUNCTION_15_26();
  v1(v0);
  OUTLINED_FUNCTION_17_29();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F2B1260()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2B12BC(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  *(v2 + 176) = a1;
  v4 = sub_18F52159C();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B1384, a1, 0);
}

void sub_18F2B1384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v16 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_51_7();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v17 = OUTLINED_FUNCTION_125_2();
  v15[26] = __swift_project_value_buffer(v17, qword_1ED707698);

  v18 = sub_18F52163C();
  v19 = sub_18F5221FC();
  v20 = OUTLINED_FUNCTION_59_3(v19);
  v21 = v15[22];
  if (v20)
  {
    v22 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_32_24(v22, 3.852e-34);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_124_2(v23, v24, v25, v26);
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_127_0();
  if (!v28)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_95_5(v27);
      OUTLINED_FUNCTION_94_4();
      OUTLINED_FUNCTION_31_26();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_14_31();
      if (v52 != v53)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_149_1(v50, v51);
      swift_endAccess();
      OUTLINED_FUNCTION_98_2();

      v54 = OUTLINED_FUNCTION_66();
      v55(v54);
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v56 = sub_18F52163C();
    v57 = sub_18F5221FC();
    if (OUTLINED_FUNCTION_59_3(v57))
    {
      OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_110_1();
      OUTLINED_FUNCTION_1_58(3.8521e-34);
      OUTLINED_FUNCTION_23_23();
      v61 = OUTLINED_FUNCTION_99_3(v58, v59, v60);
      OUTLINED_FUNCTION_106_4(v61);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_108_1(v62, v63, v64, v65);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18_3();

    goto LABEL_12;
  }

  v29 = sub_18F521EBC();
  OUTLINED_FUNCTION_142_1(v29);
  if (v18)
  {
    v15[33] = *(v14 + 32);
    v15[34] = *(v14 + 40);
    OUTLINED_FUNCTION_90_5();
    v30 = sub_18F52163C();
    sub_18F5221FC();
    OUTLINED_FUNCTION_89_3();
    if (OUTLINED_FUNCTION_83_5())
    {
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_87_4(4.8149e-34);
      v31 = sub_18F52307C();
      OUTLINED_FUNCTION_96_3(v31, v32, v33, v34);
      OUTLINED_FUNCTION_85_0();
      *(v21 + 4) = v16;
      OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v35, v36, "Pulling from %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_65();
    }

    v37 = sub_18F521EAC();
    OUTLINED_FUNCTION_116_0(v37);
    OUTLINED_FUNCTION_60_5();
    OUTLINED_FUNCTION_10_4();
    a10 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_75_3(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_5_41(v40);
    OUTLINED_FUNCTION_18_3();

LABEL_12:
    v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F2B170C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v7 + 296) = v6;
  *(v7 + 304) = v0;

  OUTLINED_FUNCTION_110();
  sub_18F521E1C();
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B1844()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_151_0();
  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_18F2B189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = OUTLINED_FUNCTION_11_29();
    sub_18F1672DC(v58, v59, v60, v61);
    v18 = v62;
  }

  OUTLINED_FUNCTION_105_3();
  if (v36)
  {
    OUTLINED_FUNCTION_52_8();
    sub_18F1672DC(v63, v64, v65, v66);
    v18 = v67;
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_104_3();
  OUTLINED_FUNCTION_63_4();
  if (v20)
  {
    v21 = v14[32];

    if (*(v21 + 16))
    {
      OUTLINED_FUNCTION_95_5(v22);
      OUTLINED_FUNCTION_94_4();
      OUTLINED_FUNCTION_30_20();
      OUTLINED_FUNCTION_123_2();
      OUTLINED_FUNCTION_14_31();
      if (v25 != v26)
      {
        goto LABEL_23;
      }

      sub_18F2B7624(v23, v24);
      swift_endAccess();
      OUTLINED_FUNCTION_98_2();

      v27 = OUTLINED_FUNCTION_53_5();
      v28(v27);
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v29 = sub_18F52163C();
    v30 = sub_18F5221FC();
    if (OUTLINED_FUNCTION_84_2(v30))
    {
      OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_1_58(3.8521e-34);
      OUTLINED_FUNCTION_23_23();
      v34 = OUTLINED_FUNCTION_99_3(v31, v32, v33);
      OUTLINED_FUNCTION_106_4(v34);
      OUTLINED_FUNCTION_65_8(&dword_18F0E9000, v35, v30, "Returning %ld objects of type %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_18_3();

    goto LABEL_17;
  }

  v14[30] = v19;
  v14[31] = v18;
  OUTLINED_FUNCTION_71_4();
  if (!v36)
  {
    OUTLINED_FUNCTION_19_27(v37);
    v38 = sub_18F52163C();
    sub_18F5221FC();
    OUTLINED_FUNCTION_89_3();
    if (OUTLINED_FUNCTION_83_5())
    {
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_87_4(4.8149e-34);
      v39 = sub_18F52307C();
      OUTLINED_FUNCTION_96_3(v39, v40, v41, v42);
      OUTLINED_FUNCTION_85_0();
      *(v15 + 4) = v16;
      OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v43, v44, "Pulling from %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_65();
    }

    v45 = sub_18F521EAC();
    OUTLINED_FUNCTION_116_0(v45);
    OUTLINED_FUNCTION_60_5();
    OUTLINED_FUNCTION_10_4();
    a10 = v46 + *v46;
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_75_3(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_5_41(v48);
    OUTLINED_FUNCTION_18_3();

LABEL_17:
    v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F2B1BB8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_151_0();
  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B214C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 57) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = a3;
  v6 = sub_18F52159C();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 216) = v7;
  *(v7 + 16) = a3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return MEMORY[0x1EEE6DFA0](sub_18F2B223C, a1, 0);
}

void sub_18F2B223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v15 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_51_7();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v16 = OUTLINED_FUNCTION_125_2();
  v14[28] = __swift_project_value_buffer(v16, qword_1ED707698);

  v17 = sub_18F52163C();
  v18 = sub_18F5221FC();
  v19 = OUTLINED_FUNCTION_59_3(v18);
  v20 = v14[22];
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_32_24(v21, 3.852e-34);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_124_2(v22, v23, v24, v25);
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
  }

  v26 = OUTLINED_FUNCTION_33_16();
  v27 = v17[14];
  v14[29] = v27;
  v28 = v27[2];
  v14[30] = v28;
  if (v28)
  {
    v29 = sub_18F521EBC();
    v14[33] = v15;
    v14[34] = v15;
    v14[31] = v29;
    v14[32] = 0;
    v30 = v27[2];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (v30)
    {
      v14[35] = v27[4];
      v14[36] = v27[5];
      OUTLINED_FUNCTION_90_5();
      v31 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v32 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v32, v33, v34, v35);
        OUTLINED_FUNCTION_85_0();
        *(v20 + 4) = v15;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v36, v37, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      OUTLINED_FUNCTION_122_2();
      v14[37] = sub_18F521EAC();
      swift_getObjectType();
      OUTLINED_FUNCTION_60_5();
      OUTLINED_FUNCTION_10_4();
      v68 = v38 + *v38;
      v39 = swift_task_alloc();
      v14[38] = v39;
      *v39 = v14;
      OUTLINED_FUNCTION_9_32(v39);
      OUTLINED_FUNCTION_18_3();

      v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, v68, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_97_3(v26);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_14_31();
    if (v50 != v51)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_100_4(v48, v49);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v52 = OUTLINED_FUNCTION_66();
    v53(v52);
  }

  v54 = MEMORY[0x1E69E7CC0];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v55 = sub_18F52163C();
  v56 = sub_18F5221FC();
  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_46_12();
    *v20 = 134218242;
    *(v20 + 4) = *(v54 + 16);
    *(v20 + 12) = 2080;
    OUTLINED_FUNCTION_23_23();
    *(v20 + 14) = OUTLINED_FUNCTION_99_3(v57, v58, v59);

    _os_log_impl(&dword_18F0E9000, v55, v56, "Returning %ld objects of type %s", v20, 0x16u);
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_65();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_18_3();

  v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B2624()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v7 + 312) = v6;
  *(v7 + 320) = v0;

  OUTLINED_FUNCTION_110();
  sub_18F521E1C();
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B275C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_132_3();
  swift_bridgeObjectRelease_n();
  v0 = OUTLINED_FUNCTION_103_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_18F2B27C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14[33];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v62 = OUTLINED_FUNCTION_11_29();
    sub_18F1672DC(v62, v63, v64, v65);
    v18 = v66;
  }

  OUTLINED_FUNCTION_105_3();
  if (v35)
  {
    OUTLINED_FUNCTION_52_8();
    sub_18F1672DC(v67, v68, v69, v70);
    v18 = v71;
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_104_3();
  OUTLINED_FUNCTION_63_4();
  if (!v20)
  {
    v14[32] = v19;
    v14[33] = v18;
    OUTLINED_FUNCTION_71_4();
    if (!v35)
    {
      OUTLINED_FUNCTION_67_4();
      v14[35] = v18;
      v14[36] = *(v36 + 40);
      OUTLINED_FUNCTION_90_5();
      v37 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v38 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v38, v39, v40, v41);
        OUTLINED_FUNCTION_85_0();
        *(v15 + 4) = v16;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v42, v43, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      OUTLINED_FUNCTION_122_2();
      v14[37] = sub_18F521EAC();
      swift_getObjectType();
      OUTLINED_FUNCTION_60_5();
      OUTLINED_FUNCTION_10_4();
      v72 = v44 + *v44;
      v45 = swift_task_alloc();
      v14[38] = v45;
      *v45 = v14;
      OUTLINED_FUNCTION_9_32(v45);
      OUTLINED_FUNCTION_18_3();

      v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, v72, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v21 = v14[34];

  if (*(v21 + 16))
  {
    OUTLINED_FUNCTION_97_3(v22);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_30_20();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_14_31();
    if (v25 != v26)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_100_4(v23, v24);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v27 = OUTLINED_FUNCTION_53_5();
    v28(v27);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v29 = sub_18F52163C();
  v30 = sub_18F5221FC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_9_17();
    a11 = OUTLINED_FUNCTION_75();
    *v31 = 134218242;
    *(v31 + 4) = *(v18 + 16);
    *(v31 + 12) = 2080;
    OUTLINED_FUNCTION_23_23();
    *(v31 + 14) = OUTLINED_FUNCTION_99_3(v32, v33, v34);

    _os_log_impl(&dword_18F0E9000, v29, v30, "Returning %ld objects of type %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_105();
  }

  else
  {
  }

  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_3();

  v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B2B44()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_132_3();
  swift_bridgeObjectRelease_n();
  v0 = OUTLINED_FUNCTION_103_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B3190(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  *(v2 + 176) = a1;
  v4 = sub_18F52159C();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B3258, a1, 0);
}

void sub_18F2B3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v16 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_51_7();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v17 = OUTLINED_FUNCTION_125_2();
  v15[26] = __swift_project_value_buffer(v17, qword_1ED707698);

  v18 = sub_18F52163C();
  v19 = sub_18F5221FC();
  v20 = OUTLINED_FUNCTION_59_3(v19);
  v21 = v15[22];
  if (v20)
  {
    v22 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_32_24(v22, 3.852e-34);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_124_2(v23, v24, v25, v26);
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_127_0();
  if (!v28)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_95_5(v27);
      OUTLINED_FUNCTION_94_4();
      OUTLINED_FUNCTION_31_26();
      OUTLINED_FUNCTION_81_1();
      OUTLINED_FUNCTION_14_31();
      if (v52 != v53)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_149_1(v50, v51);
      swift_endAccess();
      OUTLINED_FUNCTION_98_2();

      v54 = OUTLINED_FUNCTION_66();
      v55(v54);
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v56 = sub_18F52163C();
    v57 = sub_18F5221FC();
    if (OUTLINED_FUNCTION_59_3(v57))
    {
      OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_110_1();
      OUTLINED_FUNCTION_1_58(3.8521e-34);
      OUTLINED_FUNCTION_23_23();
      v61 = OUTLINED_FUNCTION_99_3(v58, v59, v60);
      OUTLINED_FUNCTION_106_4(v61);
      OUTLINED_FUNCTION_38_13();
      OUTLINED_FUNCTION_108_1(v62, v63, v64, v65);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_18_3();

    goto LABEL_12;
  }

  v29 = sub_18F521EBC();
  OUTLINED_FUNCTION_142_1(v29);
  if (v18)
  {
    v15[33] = *(v14 + 32);
    v15[34] = *(v14 + 40);
    OUTLINED_FUNCTION_90_5();
    v30 = sub_18F52163C();
    sub_18F5221FC();
    OUTLINED_FUNCTION_89_3();
    if (OUTLINED_FUNCTION_83_5())
    {
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_87_4(4.8149e-34);
      v31 = sub_18F52307C();
      OUTLINED_FUNCTION_96_3(v31, v32, v33, v34);
      OUTLINED_FUNCTION_85_0();
      *(v21 + 4) = v16;
      OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v35, v36, "Pulling from %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_65();
    }

    v37 = sub_18F521EAC();
    OUTLINED_FUNCTION_116_0(v37);
    OUTLINED_FUNCTION_60_5();
    OUTLINED_FUNCTION_10_4();
    a10 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_75_3(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_5_41(v40);
    OUTLINED_FUNCTION_18_3();

LABEL_12:
    v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F2B35E0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v7 + 296) = v6;
  *(v7 + 304) = v0;

  OUTLINED_FUNCTION_110();
  sub_18F521E1C();
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F2B3718()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_151_0();
  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_18F2B3770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = OUTLINED_FUNCTION_11_29();
    sub_18F168D50(v58, v59, v60, v61);
    v18 = v62;
  }

  OUTLINED_FUNCTION_105_3();
  if (v36)
  {
    OUTLINED_FUNCTION_52_8();
    sub_18F168D50(v63, v64, v65, v66);
    v18 = v67;
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_104_3();
  OUTLINED_FUNCTION_63_4();
  if (v20)
  {
    v21 = v14[32];

    if (*(v21 + 16))
    {
      OUTLINED_FUNCTION_95_5(v22);
      OUTLINED_FUNCTION_94_4();
      OUTLINED_FUNCTION_30_20();
      OUTLINED_FUNCTION_123_2();
      OUTLINED_FUNCTION_14_31();
      if (v25 != v26)
      {
        goto LABEL_23;
      }

      sub_18F2B7624(v23, v24);
      swift_endAccess();
      OUTLINED_FUNCTION_98_2();

      v27 = OUTLINED_FUNCTION_53_5();
      v28(v27);
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v29 = sub_18F52163C();
    v30 = sub_18F5221FC();
    if (OUTLINED_FUNCTION_84_2(v30))
    {
      OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_1_58(3.8521e-34);
      OUTLINED_FUNCTION_23_23();
      v34 = OUTLINED_FUNCTION_99_3(v31, v32, v33);
      OUTLINED_FUNCTION_106_4(v34);
      OUTLINED_FUNCTION_65_8(&dword_18F0E9000, v35, v30, "Returning %ld objects of type %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_18_3();

    goto LABEL_17;
  }

  v14[30] = v19;
  v14[31] = v18;
  OUTLINED_FUNCTION_71_4();
  if (!v36)
  {
    OUTLINED_FUNCTION_19_27(v37);
    v38 = sub_18F52163C();
    sub_18F5221FC();
    OUTLINED_FUNCTION_89_3();
    if (OUTLINED_FUNCTION_83_5())
    {
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_46_12();
      OUTLINED_FUNCTION_87_4(4.8149e-34);
      v39 = sub_18F52307C();
      OUTLINED_FUNCTION_96_3(v39, v40, v41, v42);
      OUTLINED_FUNCTION_85_0();
      *(v15 + 4) = v16;
      OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v43, v44, "Pulling from %s");
      OUTLINED_FUNCTION_3_41();
      OUTLINED_FUNCTION_65();
    }

    v45 = sub_18F521EAC();
    OUTLINED_FUNCTION_116_0(v45);
    OUTLINED_FUNCTION_60_5();
    OUTLINED_FUNCTION_10_4();
    a10 = v46 + *v46;
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_75_3(v47);
    *v48 = v49;
    OUTLINED_FUNCTION_5_41(v48);
    OUTLINED_FUNCTION_18_3();

LABEL_17:
    v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F2B3A8C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_151_0();
  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F2B4020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 57) = a4;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 176) = a1;
  v6 = sub_18F52159C();
  *(v4 + 200) = v6;
  *(v4 + 208) = *(v6 - 8);
  *(v4 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B40EC, a1, 0);
}

void sub_18F2B40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v15 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_51_7();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v16 = OUTLINED_FUNCTION_125_2();
  v14[28] = __swift_project_value_buffer(v16, qword_1ED707698);

  v17 = sub_18F52163C();
  v18 = sub_18F5221FC();
  v19 = OUTLINED_FUNCTION_59_3(v18);
  v20 = v14[22];
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_32_24(v21, 3.852e-34);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_124_2(v22, v23, v24, v25);
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_33_16();
  v26 = v17[14];
  v14[29] = v26;
  v27 = *(v26 + 16);
  v14[30] = v27;
  if (v27)
  {
    v14[32] = v15;
    v14[33] = v15;
    v14[31] = 0;
    v28 = *(v26 + 16);
    v29 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (v28)
    {
      v14[34] = *(v29 + 32);
      v14[35] = *(v29 + 40);
      OUTLINED_FUNCTION_90_5();
      v30 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v31 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v31, v32, v33, v34);
        OUTLINED_FUNCTION_85_0();
        *(v20 + 4) = v15;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v35, v36, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      OUTLINED_FUNCTION_4_45();
      v74 = v37;
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_75_3(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_10_32(v39);
      OUTLINED_FUNCTION_18_3();

      v41(v41, v42, v43, v44, v45, v46, v47, v48, a9, v74, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_97_3(v26);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_14_31();
    if (v51 != v52)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_100_4(v49, v50);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v53 = OUTLINED_FUNCTION_66();
    v54(v53);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v55 = sub_18F52163C();
  v56 = sub_18F5221FC();
  if (OUTLINED_FUNCTION_59_3(v56))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_1_58(3.8521e-34);
    v61 = OUTLINED_FUNCTION_117_2(v57, v58, v59, v60);
    OUTLINED_FUNCTION_106_4(v61);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_108_1(v62, v63, v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_18_3();

  v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B441C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_18F2B47E8;
  }

  else
  {
    v6 = sub_18F2B453C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_18F2B453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14[32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_29();
    sub_18F168F18();
    v18 = v68;
  }

  v19 = *(v18 + 16);
  v20 = v19 + 1;
  if (v19 >= *(v18 + 24) >> 1)
  {
    OUTLINED_FUNCTION_52_8();
    sub_18F168F18();
    v18 = v69;
  }

  swift_unknownObjectRelease();
  *(v18 + 16) = v20;
  OUTLINED_FUNCTION_63_4();
  if (!v22)
  {
    v14[31] = v21;
    v14[32] = v18;
    OUTLINED_FUNCTION_71_4();
    if (!v39)
    {
      OUTLINED_FUNCTION_67_4();
      v14[34] = v18;
      v14[35] = *(v40 + 40);
      OUTLINED_FUNCTION_90_5();
      v41 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v42 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v42, v43, v44, v45);
        OUTLINED_FUNCTION_85_0();
        *(v15 + 4) = v16;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v46, v47, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      OUTLINED_FUNCTION_4_45();
      v70 = v48;
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_75_3(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_10_32(v50);
      OUTLINED_FUNCTION_18_3();

      v52(v52, v53, v54, v55, v56, v57, v58, v59, a9, v70, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v23 = v14[33];

  if (*(v23 + 16))
  {
    OUTLINED_FUNCTION_97_3(v24);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_30_20();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_14_31();
    if (v27 != v28)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_100_4(v25, v26);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v29 = OUTLINED_FUNCTION_53_5();
    v30(v29);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v31 = sub_18F52163C();
  v32 = sub_18F5221FC();
  if (OUTLINED_FUNCTION_84_2(v32))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_1_58(3.8521e-34);
    v37 = OUTLINED_FUNCTION_117_2(v33, v34, v35, v36);
    OUTLINED_FUNCTION_106_4(v37);
    OUTLINED_FUNCTION_65_8(&dword_18F0E9000, v38, v32, "Returning %ld objects of type %s");
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_3();

  v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_177();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_37_2();
  a19 = v21;
  v25 = *(v21 + 296);
  *(v21 + 160) = v25;
  v26 = v21 + 160;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950, &qword_18F540020);
  if (OUTLINED_FUNCTION_145_0(v28, v29, v30, &type metadata for AppViewBridgeError))
  {
    OUTLINED_FUNCTION_115_1();
    if (v31)
    {
      OUTLINED_FUNCTION_2_60();
      if (!v32)
      {

        swift_unknownObjectRetain();
        v108 = sub_18F52163C();
        v109 = sub_18F5221FC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v108, v109))
        {
          a9 = *(v21 + 272);
          v110 = OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_110_1();
          *v110 = 136315138;
          *(v21 + 136) = a9;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD50, &qword_18F53FB00);
          v111 = sub_18F52194C();
          v113 = sub_18F11897C(v111, v112, &a10);

          *(v110 + 4) = v113;
          OUTLINED_FUNCTION_146_0(&dword_18F0E9000, v114, v115, "Bridge %s invalided");
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_32();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        i = *(v21 + 264);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        goto LABEL_38;
      }
    }

    sub_18F2B7758(v21 + 16);
  }

  v33 = *(v21 + 296);

  v34 = v33;
  v35 = sub_18F52163C();
  sub_18F52221C();

  if (OUTLINED_FUNCTION_83_5())
  {
    v36 = *(v21 + 296);
    OUTLINED_FUNCTION_126();
    v37 = OUTLINED_FUNCTION_51_1();
    a10 = v37;
    *v33 = 136315138;
    *(v21 + 168) = v36;
    v38 = v36;
    v39 = sub_18F52194C();
    v41 = sub_18F11897C(v39, v40, &a10);

    *(v33 + 1) = v41;
    OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v42, v43, "Unexpected failure %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_65();
  }

  v44 = *(v21 + 296);
  if (*(v21 + 57) == 1)
  {

    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_18_3();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, *(&a9 + 1), a10, a11, a12, a13);
  }

  swift_unknownObjectRelease();

  for (i = *(v21 + 264); ; OUTLINED_FUNCTION_143((i + 16 * v117), *(v21 + 272)))
  {
    v55 = *(v21 + 256);
    OUTLINED_FUNCTION_63_4();
    if (!v31)
    {
      *(v21 + 256) = v55;
      *(v21 + 264) = i;
      *(v21 + 248) = v56;
      OUTLINED_FUNCTION_71_4();
      if (!v79)
      {
        OUTLINED_FUNCTION_67_4();
        *(v21 + 272) = v26;
        *(v21 + 280) = *(v80 + 40);
        OUTLINED_FUNCTION_90_5();
        v81 = sub_18F52163C();
        sub_18F5221FC();
        OUTLINED_FUNCTION_89_3();
        if (OUTLINED_FUNCTION_83_5())
        {
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_46_12();
          OUTLINED_FUNCTION_87_4(4.8149e-34);
          v82 = sub_18F52307C();
          OUTLINED_FUNCTION_96_3(v82, v83, v84, v85);
          OUTLINED_FUNCTION_85_0();
          *(v55 + 4) = &unk_18F53F000;
          OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v86, v87, "Pulling from %s");
          OUTLINED_FUNCTION_3_41();
          OUTLINED_FUNCTION_65();
        }

        OUTLINED_FUNCTION_4_45();
        *&a9 = v88;
        v89 = swift_task_alloc();
        v90 = OUTLINED_FUNCTION_75_3(v89);
        *v90 = v91;
        OUTLINED_FUNCTION_10_32(v90);
        OUTLINED_FUNCTION_18_3();

        return v92(v92, v93, v94, v95, v96, v97, v98, v99, a9, *(&a9 + 1), a10, a11, a12, a13);
      }

      __break(1u);
      goto LABEL_37;
    }

    if (!*(i + 16))
    {
      goto LABEL_18;
    }

    v57 = v26 - 8;
    v26 = *(v21 + 216);
    v58 = *(v21 + 176);
    sub_18F52158C();
    v59 = OUTLINED_FUNCTION_130_1();
    sub_18F2B6EC0(v59, v60);
    OUTLINED_FUNCTION_121_2();
    sub_18F2B743C((v58 + 112), v57);
    OUTLINED_FUNCTION_49_10();
    if (v63 == v64)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_18_30();
    sub_18F0FA8A4();
    i = v118;
LABEL_33:
    v117 = *(i + 16);
    if (v117 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_70_4();
      sub_18F0FA8A4();
      i = v119;
    }
  }

  v66 = *(v21 + 208);
  v65 = *(v21 + 216);
  v67 = *(v21 + 200);
  OUTLINED_FUNCTION_100_4(v61, v62);
  swift_endAccess();
  v68 = OUTLINED_FUNCTION_130_1();
  sub_18F2B70D8(v68, v69);

  (*(v66 + 8))(v65, v67);
LABEL_18:
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v70 = sub_18F52163C();
  v71 = sub_18F5221FC();
  if (OUTLINED_FUNCTION_84_2(v71))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_27_27(3.8521e-34);
    v76 = OUTLINED_FUNCTION_117_2(v72, v73, v74, v75);
    OUTLINED_FUNCTION_150_1(v76);
    OUTLINED_FUNCTION_69_0(&dword_18F0E9000, v77, v78, "Returning %ld objects of type %s");
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_18_3();

  return v102(v100, v101, v102, v103, v104, v105, v106, v107, a9, *(&a9 + 1), a10, a11, a12, a13);
}

uint64_t sub_18F2B4D44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 58) = a6;
  *(v6 + 192) = a4;
  *(v6 + 200) = a5;
  *(v6 + 57) = a2;
  *(v6 + 176) = a1;
  *(v6 + 184) = a3;
  v8 = sub_18F52159C();
  *(v6 + 208) = v8;
  *(v6 + 216) = *(v8 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2B4E14, a1, 0);
}

void sub_18F2B4E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v15 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_51_7();
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED6FD658);
  }

  v16 = OUTLINED_FUNCTION_125_2();
  v14[29] = __swift_project_value_buffer(v16, qword_1ED707698);

  v17 = sub_18F52163C();
  v18 = sub_18F5221FC();
  v19 = OUTLINED_FUNCTION_59_3(v18);
  v20 = v14[22];
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_32_24(v21, 3.852e-34);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_124_2(v22, v23, v24, v25);
    OUTLINED_FUNCTION_55_0();
  }

  else
  {
  }

  v26 = OUTLINED_FUNCTION_33_16();
  v27 = v17[14];
  v14[30] = v27;
  v28 = v27[2];
  v14[31] = v28;
  if (v28)
  {
    v29 = sub_18F521EBC();
    v14[34] = v15;
    v14[35] = v15;
    v14[32] = v29;
    v14[33] = 0;
    v30 = v27[2];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (v30)
    {
      v14[36] = v27[4];
      v14[37] = v27[5];
      OUTLINED_FUNCTION_90_5();
      v31 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v32 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v32, v33, v34, v35);
        OUTLINED_FUNCTION_85_0();
        *(v20 + 4) = v15;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v36, v37, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      v14[38] = sub_18F521EAC();
      swift_getObjectType();
      OUTLINED_FUNCTION_60_5();
      OUTLINED_FUNCTION_10_4();
      v72 = v38 + *v38;
      v39 = swift_task_alloc();
      v14[39] = v39;
      *v39 = v14;
      OUTLINED_FUNCTION_6_42(v39);
      OUTLINED_FUNCTION_18_3();

      v46(v40, v41, v42, v43, v44, v45, v46, v47, a9, v72, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_97_3(v26);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_14_31();
    if (v51 != v52)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_100_4(v49, v50);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v53 = OUTLINED_FUNCTION_66();
    v54(v53);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v55 = sub_18F52163C();
  v56 = sub_18F5221FC();
  if (OUTLINED_FUNCTION_59_3(v56))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_1_58(3.8521e-34);
    OUTLINED_FUNCTION_23_23();
    v59 = sub_18F11897C(0xD00000000000003CLL, v57, v58);
    OUTLINED_FUNCTION_106_4(v59);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_108_1(v60, v61, v62, v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_18_3();

  v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B51C0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77_4();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  v8[40] = v6;
  v8[41] = v7;
  v8[42] = v0;

  OUTLINED_FUNCTION_110();
  sub_18F521E1C();
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F2B52FC()
{
  OUTLINED_FUNCTION_69();

  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_18F2B535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_37_2();
  v16 = v14[40];
  if (v16)
  {
    v17 = v14[41];
  }

  else
  {
    v17 = 0;
  }

  sub_18F22D914(v16, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14[34];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_29();
    sub_18F1691D4();
    v19 = v69;
  }

  v20 = *(v19 + 16);
  if (v20 >= *(v19 + 24) >> 1)
  {
    OUTLINED_FUNCTION_52_8();
    sub_18F1691D4();
    v19 = v70;
  }

  v22 = v14[40];
  v21 = v14[41];
  swift_unknownObjectRelease();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  sub_18F0F689C(v22, v21);
  *(v19 + 16) = v20 + 1;
  v24 = v19 + 16 * v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  OUTLINED_FUNCTION_63_4();
  if (!v26)
  {
    v14[33] = v25;
    v14[34] = v19;
    OUTLINED_FUNCTION_71_4();
    if (!v41)
    {
      OUTLINED_FUNCTION_67_4();
      v14[36] = v19;
      v14[37] = *(v42 + 40);
      OUTLINED_FUNCTION_90_5();
      v43 = sub_18F52163C();
      sub_18F5221FC();
      OUTLINED_FUNCTION_89_3();
      if (OUTLINED_FUNCTION_83_5())
      {
        OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_87_4(4.8149e-34);
        v44 = sub_18F52307C();
        OUTLINED_FUNCTION_96_3(v44, v45, v46, v47);
        OUTLINED_FUNCTION_85_0();
        *(v20 + 4) = v15;
        OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v48, v49, "Pulling from %s");
        OUTLINED_FUNCTION_3_41();
        OUTLINED_FUNCTION_65();
      }

      v14[38] = sub_18F521EAC();
      swift_getObjectType();
      OUTLINED_FUNCTION_60_5();
      OUTLINED_FUNCTION_10_4();
      v71 = v50 + *v50;
      v51 = swift_task_alloc();
      v14[39] = v51;
      *v51 = v14;
      OUTLINED_FUNCTION_6_42(v51);
      OUTLINED_FUNCTION_18_3();

      v58(v52, v53, v54, v55, v56, v57, v58, v59, a9, v71, a11, a12, a13, a14);
      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v27 = v14[35];

  if (*(v27 + 16))
  {
    OUTLINED_FUNCTION_97_3(v28);
    OUTLINED_FUNCTION_94_4();
    OUTLINED_FUNCTION_30_20();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_14_31();
    if (v31 != v32)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_100_4(v29, v30);
    swift_endAccess();
    OUTLINED_FUNCTION_98_2();

    v33 = OUTLINED_FUNCTION_53_5();
    v34(v33);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v35 = sub_18F52163C();
  v36 = sub_18F5221FC();
  if (OUTLINED_FUNCTION_84_2(v36))
  {
    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_1_58(3.8521e-34);
    OUTLINED_FUNCTION_23_23();
    v39 = sub_18F11897C(0xD00000000000003CLL, v37, v38);
    OUTLINED_FUNCTION_106_4(v39);
    OUTLINED_FUNCTION_65_8(&dword_18F0E9000, v40, v36, "Returning %ld objects of type %s");
    OUTLINED_FUNCTION_3_41();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_3();

  v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F2B56B0()
{
  OUTLINED_FUNCTION_69();

  v0 = OUTLINED_FUNCTION_20_22();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_18F2B5710()
{
  OUTLINED_FUNCTION_175();
  v72 = v0;
  v1 = *(v0 + 336);
  *(v0 + 160) = v1;
  v2 = v0 + 160;
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950, &qword_18F540020);
  if (OUTLINED_FUNCTION_145_0(v4, v5, v6, &type metadata for AppViewBridgeError))
  {
    OUTLINED_FUNCTION_115_1();
    if (v7)
    {
      OUTLINED_FUNCTION_2_60();
      if (!v8)
      {

        swift_unknownObjectRetain();
        v57 = sub_18F52163C();
        v58 = sub_18F5221FC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v57, v58))
        {
          v70 = *(v0 + 288);
          v59 = OUTLINED_FUNCTION_126();
          v60 = OUTLINED_FUNCTION_75();
          v71[0] = v60;
          *v59 = 136315138;
          *(v0 + 136) = v70;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD50, &qword_18F53FB00);
          v61 = sub_18F52194C();
          v63 = sub_18F11897C(v61, v62, v71);

          *(v59 + 4) = v63;
          OUTLINED_FUNCTION_146_0(&dword_18F0E9000, v64, v65, "Bridge %s invalided");
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_32();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        i = *(v0 + 280);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        goto LABEL_38;
      }
    }

    sub_18F2B7758(v0 + 16);
  }

  v9 = *(v0 + 336);

  v10 = v9;
  v11 = sub_18F52163C();
  sub_18F52221C();

  if (OUTLINED_FUNCTION_83_5())
  {
    v12 = *(v0 + 336);
    OUTLINED_FUNCTION_126();
    v13 = OUTLINED_FUNCTION_51_1();
    v71[0] = v13;
    *v9 = 136315138;
    *(v0 + 168) = v12;
    v14 = v12;
    v15 = sub_18F52194C();
    v17 = sub_18F11897C(v15, v16, v71);

    *(v9 + 1) = v17;
    OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v18, v19, "Unexpected failure %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_65();
  }

  v20 = *(v0 + 336);
  if (*(v0 + 57) == 1)
  {

    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_94_3();

    __asm { BRAA            X1, X16 }
  }

  swift_unknownObjectRelease();

  for (i = *(v0 + 280); ; OUTLINED_FUNCTION_143((i + 16 * v67), *(v0 + 288)))
  {
    v24 = *(v0 + 272);
    OUTLINED_FUNCTION_63_4();
    if (v7)
    {

      if (!*(i + 16))
      {
        goto LABEL_18;
      }

      v26 = v2 - 8;
      v2 = *(v0 + 224);
      v27 = *(v0 + 176);
      sub_18F52158C();
      v28 = OUTLINED_FUNCTION_130_1();
      sub_18F2B6EC0(v28, v29);
      OUTLINED_FUNCTION_121_2();
      sub_18F2B743C((v27 + 112), v26);
      OUTLINED_FUNCTION_49_10();
      if (v32 == v33)
      {
        v35 = *(v0 + 216);
        v34 = *(v0 + 224);
        v36 = *(v0 + 208);
        OUTLINED_FUNCTION_100_4(v30, v31);
        swift_endAccess();
        v37 = OUTLINED_FUNCTION_130_1();
        sub_18F2B70D8(v37, v38);

        (*(v35 + 8))(v34, v36);
LABEL_18:
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v39 = sub_18F52163C();
        v40 = sub_18F5221FC();
        if (OUTLINED_FUNCTION_84_2(v40))
        {
          OUTLINED_FUNCTION_9_17();
          v71[0] = OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_27_27(3.8521e-34);
          OUTLINED_FUNCTION_35_5();
          v42 = sub_18F11897C(0xD00000000000003CLL, v41, v71);
          OUTLINED_FUNCTION_150_1(v42);
          OUTLINED_FUNCTION_69_0(&dword_18F0E9000, v43, v44, "Returning %ld objects of type %s");
          OUTLINED_FUNCTION_3_41();
          OUTLINED_FUNCTION_32();
        }

        else
        {
        }

        OUTLINED_FUNCTION_24_28();
        OUTLINED_FUNCTION_94_3();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      *(v0 + 272) = v24;
      *(v0 + 280) = i;
      *(v0 + 264) = v25;
      OUTLINED_FUNCTION_71_4();
      if (!v45)
      {
        OUTLINED_FUNCTION_67_4();
        *(v0 + 288) = v2;
        *(v0 + 296) = *(v46 + 40);
        OUTLINED_FUNCTION_90_5();
        v47 = sub_18F52163C();
        sub_18F5221FC();
        OUTLINED_FUNCTION_89_3();
        if (OUTLINED_FUNCTION_83_5())
        {
          OUTLINED_FUNCTION_126();
          v71[0] = OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_87_4(4.8149e-34);
          v48 = sub_18F52307C();
          sub_18F11897C(v48, v49, v71);
          OUTLINED_FUNCTION_85_0();
          *(v24 + 4) = &unk_18F53F000;
          OUTLINED_FUNCTION_12_36(&dword_18F0E9000, v50, v51, "Pulling from %s");
          OUTLINED_FUNCTION_3_41();
          OUTLINED_FUNCTION_65();
        }

        *(v0 + 304) = sub_18F521EAC();
        swift_getObjectType();
        OUTLINED_FUNCTION_60_5();
        OUTLINED_FUNCTION_14_6();
        v52 = swift_task_alloc();
        *(v0 + 312) = v52;
        *v52 = v0;
        OUTLINED_FUNCTION_6_42(v52);
        OUTLINED_FUNCTION_94_3();

        __asm { BRAA            X6, X16 }
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_18_30();
    sub_18F0FA8A4();
    i = v68;
LABEL_33:
    v67 = *(i + 16);
    if (v67 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_70_4();
      sub_18F0FA8A4();
      i = v69;
    }
  }
}

uint64_t sub_18F2B5D04(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_18F2B5DA4;

  return sub_18F2AFE50(a1, a2);
}

uint64_t sub_18F2B5DA4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 32) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_18F2B5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v16 = 0;
  v17 = *(v14 + 32);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_131_2();
    if (v20)
    {
      goto LABEL_19;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_128_2();
      sub_18F167204();
      v19 = v21;
    }

    if (*(v13 + 16))
    {
      OUTLINED_FUNCTION_144_1();
      if (v15 < v12)
      {
        goto LABEL_21;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v22 = *(v19 + 16);
        v20 = __OFADD__(v22, v12);
        v23 = v22 + v12;
        if (v20)
        {
          goto LABEL_22;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_20;
      }
    }

    ++v16;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_29_1();

  v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_18F2B6044(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *(v6 + 16) = a3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return MEMORY[0x1EEE6DFA0](sub_18F2B60D8, a2, 0);
}

uint64_t sub_18F2B60D8()
{
  OUTLINED_FUNCTION_69();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18F2B616C;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 64);

  return sub_18F2B027C(v4, v2, v3);
}

uint64_t sub_18F2B616C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v8 + 48) = v7;
  *(v8 + 56) = v0;

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_18F2B6418;
  }

  else
  {
    v10 = sub_18F2B628C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_18F2B628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v16 = 0;
  v17 = *(v14 + 48);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (v18 != v16)
  {
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_131_2();
    if (v20)
    {
      goto LABEL_19;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_128_2();
      sub_18F167204();
      v19 = v21;
    }

    if (*(v13 + 16))
    {
      OUTLINED_FUNCTION_144_1();
      if (v15 < v12)
      {
        goto LABEL_21;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v22 = *(v19 + 16);
        v20 = __OFADD__(v22, v12);
        v23 = v22 + v12;
        if (v20)
        {
          goto LABEL_22;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_20;
      }
    }

    ++v16;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_29_1();

  v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_18F2B6418()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F2B647C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_18F2B651C;

  return sub_18F2B0758(a1, a2);
}

uint64_t sub_18F2B651C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 32) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_76_6();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

void sub_18F2B6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v13 = 0;
  v14 = *(v12 + 32);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  while (v15 != v13)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v17 = *(v14 + 32 + 8 * v13);
    v18 = *(v17 + 16);
    v19 = *(v16 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_19;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v18 > *(v16 + 24) >> 1)
    {
      OUTLINED_FUNCTION_128_2();
      sub_18F168C80();
      v16 = v20;
    }

    if (*(v17 + 16))
    {
      if ((*(v16 + 24) >> 1) - *(v16 + 16) < v18)
      {
        goto LABEL_21;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v21 = *(v16 + 16);
        v22 = __OFADD__(v21, v18);
        v23 = v21 + v18;
        if (v22)
        {
          goto LABEL_22;
        }

        *(v16 + 16) = v23;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_20;
      }
    }

    ++v13;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_29_1();

  v26(v24, v25, v26, v27, v28, v29, v30, v31, v12, a10, a11, a12);
}

uint64_t sub_18F2B67B0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18F2B67E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1846FC;

  return sub_18F2AD68C();
}

uint64_t sub_18F2B6874()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F17F7A8;

  return sub_18F2ADA38();
}

uint64_t sub_18F2B6900()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F2B69BC;

  return sub_18F2ADDE4();
}

uint64_t sub_18F2B69BC()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  OUTLINED_FUNCTION_10_2();
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v9 = *(v5 + 8);
  if (!v0)
  {
    v7 = v1;
    v8 = v4;
  }

  return v9(v7, v8);
}

uint64_t sub_18F2B6AB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC874;

  return sub_18F2AE66C(a1);
}

uint64_t sub_18F2B6B4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1846FC;

  return sub_18F2AEBCC();
}

uint64_t sub_18F2B6BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F2B6C8C;

  return sub_18F2AF054(a1, a2, a3);
}

uint64_t sub_18F2B6C8C()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5(v2);
}

void *sub_18F2B6D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4720, &qword_18F550830);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_18F2B6DD4()
{

  return v0;
}

uint64_t sub_18F2B6DFC()
{
  v0 = sub_18F2B6DD4();

  return MEMORY[0x1EEE6BDC0](v0);
}

unint64_t sub_18F2B6E7C()
{
  result = qword_1EACCDCE8;
  if (!qword_1EACCDCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACCDCE8);
  }

  return result;
}

uint64_t sub_18F2B6EC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_18F52159C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACCE1E8 != -1)
  {
    swift_once();
  }

  v7 = sub_18F5215DC();
  __swift_project_value_buffer(v7, qword_1EAD0AB70);
  sub_18F37FFE8();
  v9 = v8;
  v11 = v10;
  v12 = sub_18F5215CC();
  v13 = sub_18F52236C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v11 & 1) == 0)
  {
    if (v9)
    {
LABEL_11:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v12, v13, v16, v9, "", v15, 2u);
      MEMORY[0x193ADD350](v15, -1, -1);
LABEL_12:

      (*(v4 + 16))(v6, a1, v3);
      sub_18F52161C();
      swift_allocObject();
      return sub_18F52160C();
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v18;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18F2B70D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F5215EC();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_18F52159C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EACCE1E8 != -1)
  {
    swift_once();
  }

  v9 = sub_18F5215DC();
  __swift_project_value_buffer(v9, qword_1EAD0AB70);
  sub_18F37FFE8();
  v11 = v10;
  v13 = v12;
  v14 = sub_18F5215CC();
  sub_18F5215FC();
  v21 = sub_18F52235C();
  result = sub_18F52251C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    if (v11)
    {
LABEL_11:

      sub_18F52162C();

      v16 = v22;
      if ((*(v22 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v4, v2);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_18F52157C();
      _os_signpost_emit_with_name_impl(&dword_18F0E9000, v14, v21, v19, v11, v17, v18, 2u);
      MEMORY[0x193ADD350](v18, -1, -1);
LABEL_15:

      return (*(v6 + 8))(v8, v5);
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v23;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18F2B73C4(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_18F2B7404(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_18F2B743C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_18F2AD628(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v5 + 16);
      if (v9 == v10)
      {
        return v8;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

      v11 = (*a2 + 32);
      v12 = *(*a2 + 16) + 1;
      while (--v12)
      {
        v13 = *v11;
        v11 += 2;
        if (v13 == *(v5 + 32 + 16 * v9))
        {
          goto LABEL_19;
        }
      }

      if (v8 != v9)
      {
        if (v8 >= v10)
        {
          goto LABEL_25;
        }

        v17 = *(v5 + 32 + 16 * v9);
        v16 = *(v5 + 32 + 16 * v8);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18F3B9D48();
          v5 = v15;
        }

        *(v5 + 32 + 16 * v8) = v17;
        result = swift_unknownObjectRelease();
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_26;
        }

        *(v5 + 32 + 16 * v9) = v16;
        result = swift_unknownObjectRelease();
        *a1 = v5;
      }

      v14 = __OFADD__(v8++, 1);
      if (v14)
      {
        goto LABEL_24;
      }

LABEL_19:
      v14 = __OFADD__(v9++, 1);
      if (v14)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18F2B75A4()
{
  result = qword_1EACD4718;
  if (!qword_1EACD4718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4710, &qword_18F550828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4718);
  }

  return result;
}

void sub_18F2B7608(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;
    *a1 = v4;
  }
}

uint64_t sub_18F2B7624(uint64_t result, uint64_t a2)
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

  sub_18F205C6C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD50, &qword_18F53FB00);
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

  result = sub_18F169E98((v9 + 16 * a2), v11 - a2, v10);
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

void *sub_18F2B7710@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_18F2B7404(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_18F2B77AC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_18F0FC874;

  return sub_18F2AE884(v7, v5, v3, v8);
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return sub_18F2B70D8(v0, 3);
}

void OUTLINED_FUNCTION_93_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t a1)
{

  return sub_18F52158C();
}

uint64_t OUTLINED_FUNCTION_97_3(uint64_t a1)
{

  return sub_18F52158C();
}

unint64_t OUTLINED_FUNCTION_117_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18F11897C(10536, 0xE200000000000000, va);
}

uint64_t OUTLINED_FUNCTION_119_1()
{

  return sub_18F2B743C((v1 + 112), v0);
}

uint64_t OUTLINED_FUNCTION_123_2()
{

  return sub_18F2B743C((v1 + 112), v0 + 152);
}

void OUTLINED_FUNCTION_124_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_125_2()
{

  return sub_18F52165C();
}

void OUTLINED_FUNCTION_127_0()
{
  v2 = *(v0 + 112);
  *(v1 + 216) = v2;
  *(v1 + 224) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_142_1(uint64_t a1)
{
  v1[31] = v2;
  v1[32] = v2;
  v1[29] = a1;
  v1[30] = 0;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_144_1()
{

  return type metadata accessor for ViewEntityIdentifier(0);
}

uint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1)
{

  return sub_18F52158C();
}

void OUTLINED_FUNCTION_148_1()
{
  v2 = *(v0 + 304);
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t result, uint64_t a2)
{

  return sub_18F2B7624(result, a2);
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1)
{
  *(v1 + 14) = a1;
}

void IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v63 = v23;
  v68 = v24;
  v69 = v25;
  v67 = v26;
  v28 = v27;
  v62[4] = v27;
  v71 = v29;
  v31 = v30;
  v66 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v62 - v35;
  v62[1] = v62 - v35;
  v70 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v38, &a14);
  v40 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v62 - v42;
  v62[2] = v62 - v42;
  v44 = sub_18F520B3C();
  v45 = OUTLINED_FUNCTION_2_2(v44, &a18);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  (*(v47 + 16))(v49 - v48, v31);
  (*(v40 + 16))(v43, v28, v20);
  OUTLINED_FUNCTION_11_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  v50 = v63;
  sub_18F39D018(v20, v63, v51);
  v52 = v67;
  sub_18F116908(v67, v36, &qword_1EACCF7A0, &unk_18F53E6F0);
  v53 = v68;
  sub_18F116908(v68, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_12_2();
  v59 = type metadata accessor for AppEnumOptionsProvider(v56, v57, v50, v58);
  v73 = OUTLINED_FUNCTION_0_50(v59);
  v72 = v55;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  v60 = OUTLINED_FUNCTION_31_5();
  v61(v60);
  sub_18F0EF148(v71, &qword_1EACCF7A8, &qword_18F540440);
  (*(v47 + 8))(v66, v65);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v72 = v27;
  v77 = v28;
  v74 = v29;
  v75 = v30;
  v32 = v31;
  v68 = v31;
  v78 = v33;
  v35 = v34;
  v73 = v34;
  OUTLINED_FUNCTION_31_27(a24);
  v67[3] = v36;
  v37 = a21;
  v67[2] = a22;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v79 = v67 - v41;
  v76 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v43, &a11);
  v45 = v44;
  v69 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v67 - v47;
  v67[1] = v67 - v47;
  v49 = sub_18F520B3C();
  v50 = OUTLINED_FUNCTION_2_2(v49, &a17);
  v52 = v51;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4();
  (*(v52 + 16))(v54 - v53, v35);
  (*(v45 + 16))(v48, v32, v24);
  OUTLINED_FUNCTION_24_22();
  v72();
  OUTLINED_FUNCTION_28_33();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  v55 = v70;
  sub_18F39D018(v37, v70, v56);
  v57 = v74;
  sub_18F116908(v74, v79, &qword_1EACCF7A0, &unk_18F53E6F0);
  v58 = v75;
  sub_18F116908(v75, v71, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v60 = v59;
  v61 = OUTLINED_FUNCTION_12_2();
  v64 = type metadata accessor for AppEnumOptionsProvider(v61, v62, v55, v63);
  v81 = OUTLINED_FUNCTION_0_50(v64);
  v80 = v60;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v69 + 8))(v68, v67[4]);
  sub_18F0EF148(v78, &qword_1EACCF7A8, &qword_18F540440);
  v65 = OUTLINED_FUNCTION_22_4();
  v66(v65);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v73 = v26;
  v63[1] = v27;
  v70 = v28;
  v68 = v29;
  v74 = v30;
  v75 = v31;
  v33 = v32;
  v66 = v32;
  v71 = a22;
  OUTLINED_FUNCTION_31_27(a21);
  v67 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v63 - v38;
  v63[0] = v63 - v38;
  v72 = v22;
  OUTLINED_FUNCTION_18_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v41, &a11);
  v43 = v42;
  v64 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_35_0();
  v46 = OUTLINED_FUNCTION_2_2(v45, &a14);
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  v51 = v50 - v49;

  (*(v48 + 16))(v51, v33, v45);
  (*(v43 + 16))(v23, v75, v41);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_12_2();
  v52 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v52, v67, &v77);
  sub_18F116908(v68, v39, &qword_1EACCF7A0, &unk_18F53E6F0);
  v53 = v70;
  sub_18F116908(v70, v65, &qword_1EACCF7A0, &unk_18F53E6F0);
  v54 = v69;
  v76[3] = v69;
  v76[4] = v71;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  v56 = *(v54 - 8);
  v57 = v73;
  (*(v56 + 16))(boxed_opaque_existential_1, v73, v54);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v56 + 8))(v57, v54);
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v58, v59, v60);
  (*(v64 + 8))(v75, v63[2]);
  sub_18F0EF148(v74, &qword_1EACCF7A8, &qword_18F540440);
  v61 = OUTLINED_FUNCTION_31_5();
  v62(v61);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v64 = v27;
  v69 = v29;
  v72 = v30;
  v73 = v31;
  v71 = v32;
  v34 = v33;
  v68 = v33;
  v75 = v35;
  v36 = a23;
  OUTLINED_FUNCTION_49_1(a22);
  v65 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  v70 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_74();
  v63 = v24;
  v74 = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v42, &a16);
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v62 - v46;
  v48 = sub_18F520B3C();
  v49 = OUTLINED_FUNCTION_10(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v44 + 16))(v47, v34, v23);
  v78[3] = v65;
  v78[4] = v66;
  __swift_allocate_boxed_opaque_existential_1(v78);
  v69();
  OUTLINED_FUNCTION_28_33();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  sub_18F39D018(v28, v36, v50);
  sub_18F116908(v71, v24, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = OUTLINED_FUNCTION_33_1();
  sub_18F116908(v51, v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v54 = v53;
  v55 = OUTLINED_FUNCTION_12_2();
  v58 = type metadata accessor for AppEnumOptionsProvider(v55, v56, v36, v57);
  v77 = OUTLINED_FUNCTION_0_50(v58);
  v76 = v54;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v28, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v59, v60, v61);
  (*(v44 + 8))(v68, v67);
  sub_18F0EF148(v75, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v65 = v28;
  v57[1] = v29;
  v61 = v30;
  v62 = v31;
  v33 = v32;
  v58 = v32;
  v66 = v34;
  v63 = a21;
  v60 = a22;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_74();
  v64 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v41, &a15);
  v43 = v42;
  v59 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v57 - v45;
  v47 = sub_18F520B3C();
  v48 = OUTLINED_FUNCTION_10(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_25_0();
  (*(v43 + 16))(v46, v33, v41);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_12_2();
  v49 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v49, v60, &v68);
  sub_18F116908(v61, v23, &qword_1EACCF7A0, &unk_18F53E6F0);
  v50 = v62;
  sub_18F116908(v62, v39, &qword_1EACCF7A0, &unk_18F53E6F0);
  v67[3] = v27;
  v67[4] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v52 = *(v27 - 8);
  v53 = v65;
  (*(v52 + 16))(boxed_opaque_existential_1, v65, v27);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v52 + 8))(v53, v27);
  sub_18F0EF148(v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v54, v55, v56);
  (*(v59 + 8))(v58, v57[2]);
  sub_18F0EF148(v66, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_9(v23, v24, v25, v26, v27, v28, v29, v30);
  v32 = v31;
  OUTLINED_FUNCTION_49_1(a21);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v36 = MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_27_6(v36, v37, v38, v39, v40, v41, v42, v43, v81);
  v84 = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v46 = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v81 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v50);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_11_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v56);

  v87 = v32;
  sub_18F116908(v32, v22, &qword_1EACCF7A8, &qword_18F540440);
  v57 = OUTLINED_FUNCTION_29_2();
  if (__swift_getEnumTagSinglePayload(v57, v58, v52) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    v59 = OUTLINED_FUNCTION_29_2();
    if (__swift_getEnumTagSinglePayload(v59, v60, v52) != 1)
    {
      sub_18F0EF148(v22, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v54 + 32))(v88, v22, v52);
  }

  (*(v46 + 16))(v49, v90, v89);
  OUTLINED_FUNCTION_11_2();
  v61 = swift_getAssociatedTypeWitness();
  v62 = v82;
  sub_18F39D018(v61, v82, &v93);
  sub_18F116908(v86, v81, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F116908(v85, v83, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v64 = v63;
  v65 = OUTLINED_FUNCTION_28_33();
  v68 = type metadata accessor for AppEnumOptionsProvider(v65, v66, v62, v67);
  v92 = OUTLINED_FUNCTION_0_50(v68);
  v91 = v64;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  OUTLINED_FUNCTION_11_5();
  sub_18F0EF148(v69, v70, v71);
  OUTLINED_FUNCTION_11_5();
  sub_18F0EF148(v72, v73, v74);
  (*(v46 + 8))(v90, v89);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v75, v76, v77);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v78, v79, v80);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_9(v27, v28, v29, v30, v31, v32, v33, v34);
  v36 = v35;
  OUTLINED_FUNCTION_49_1(a25);
  OUTLINED_FUNCTION_31_27(a24);
  v76[2] = v37;
  v81 = a22;
  v77 = a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v78 = v76 - v41;
  v82 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v76 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_11_0();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v53);

  v85 = v36;
  sub_18F116908(v36, v26, &qword_1EACCF7A8, &qword_18F540440);
  v54 = OUTLINED_FUNCTION_29_2();
  if (__swift_getEnumTagSinglePayload(v54, v55, v25) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    v56 = OUTLINED_FUNCTION_29_2();
    if (__swift_getEnumTagSinglePayload(v56, v57, v25) != 1)
    {
      sub_18F0EF148(v26, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v51 + 32))(v86, v26, v25);
  }

  v58 = *(v44 + 16);
  v76[1] = v47;
  v58(v47, v88, v87);
  OUTLINED_FUNCTION_24_22();
  v77();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_11_5();
  v59 = v80;
  sub_18F39D018(v60, v80, v61);
  v62 = v84;
  sub_18F116908(v84, v78, &qword_1EACCF7A0, &unk_18F53E6F0);
  v63 = v83;
  sub_18F116908(v83, v79, &qword_1EACCF7A0, &unk_18F53E6F0);
  nullsub_1();
  v65 = v64;
  v66 = OUTLINED_FUNCTION_12_2();
  v69 = type metadata accessor for AppEnumOptionsProvider(v66, v67, v59, v68);
  v90 = OUTLINED_FUNCTION_0_50(v69);
  v89 = v65;
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();

  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v62, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v44 + 8))(v88, v87);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v70, v71, v72);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v73, v74, v75);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  v91 = v25;
  v88 = v26;
  v89 = v27;
  v83[1] = v28;
  v94 = v29;
  v90 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_31_27(a24);
  v84 = v33;
  OUTLINED_FUNCTION_49_1(a22);
  v86 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v37 = MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_27_6(v37, v38, v39, v40, v41, v42, v43, v44, v83[0]);
  v87 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v47 = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v83 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v83 - v53;
  v55 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_2(v59);

  v91 = v32;
  sub_18F116908(v32, v54, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) != 1)
    {
      sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v57 + 32))(v92, v54, v55);
  }

  (*(v47 + 16))(v50, v94, v93);
  OUTLINED_FUNCTION_11_2();
  v60 = swift_getAssociatedTypeWitness();
  sub_18F39D018(v60, v83[2], &v96);
  OUTLINED_FUNCTION_26_1();
  sub_18F116908(v61, v62, v63, &unk_18F53E6F0);
  OUTLINED_FUNCTION_111();
  sub_18F116908(v64, v65, v66, &unk_18F53E6F0);
  v67 = v85;
  v95[3] = v85;
  v95[4] = v84;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
  v69 = *(v67 - 8);
  v70 = v86;
  (*(v69 + 16))(boxed_opaque_existential_1, v86, v67);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v69 + 8))(v70, v67);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v71, v72, v73);
  OUTLINED_FUNCTION_18_0();
  sub_18F0EF148(v74, v75, v76);
  (*(v47 + 8))(v94, v93);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v77, v78, v79);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v80, v81, v82);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_0();
  v14 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v5) = *v5;
  OUTLINED_FUNCTION_65_9();
  v18(v0, v7, v14);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, AssociatedTypeWitness);
  v29[0] = v5;
  sub_18F3FB0D0(v29);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v27, v1, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  v22 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_67_5();
  sub_18F0EF148(v27, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  (*(v16 + 8))(v26, v14);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:mode:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v52 = v24;
  v53 = v23;
  v26 = v25;
  v54 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_46_0(v28);
  OUTLINED_FUNCTION_23_3(a21);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_33();
  v36 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v26) = *v26;
  v40 = OUTLINED_FUNCTION_23_15();
  v41(v40, v29, v36);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, AssociatedTypeWitness);
  v55[0] = v26;
  sub_18F3FB0D0(v55);
  OUTLINED_FUNCTION_22_0(&a17);
  v52();
  OUTLINED_FUNCTION_8();
  v45 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v45, v46, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();

  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
  (*(v38 + 8))(v51, v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v10 = v9;
  v36 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v35 = v17;
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v7) = *v7;
  v21 = OUTLINED_FUNCTION_23_15();
  v22(v21, v10);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, AssociatedTypeWitness);
  v41[0] = v7;
  v26 = sub_18F3FB0D0(v41);
  OUTLINED_FUNCTION_44_1(v26);
  OUTLINED_FUNCTION_2_0();
  v27 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v27, v28, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v40[3] = v37;
  v40[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v34 = *(v37 - 8);
  (*(v34 + 16))(boxed_opaque_existential_1, v38, v37);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v34 + 8))(v38, v37);
  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v39, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(v36, v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v58 = v27;
  v62 = v29;
  v63 = v28;
  v59 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_44_1(v33);
  v61 = a24;
  v60 = a22;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v38);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  LOBYTE(v32) = *v32;
  (*(v44 + 16))(v24, v34, v42);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, AssociatedTypeWitness);
  v65[0] = v32;
  sub_18F3FB0D0(v65);
  OUTLINED_FUNCTION_22_0(&a15);
  v58();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v59, v56, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v64[3] = v60;
  v64[4] = v61;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(v60 - 8) + 16))(boxed_opaque_existential_1, v62, v60);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  v54 = OUTLINED_FUNCTION_47_13();
  v55(v54);
  sub_18F0EF148(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v63, &qword_1EACCF7A8, &qword_18F540440);
  (*(v44 + 8))(v57, v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:mode:size:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  LOBYTE(v3) = *v3;
  OUTLINED_FUNCTION_31_10();
  v17(v1, v6, v13);
  v18 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, AssociatedTypeWitness);
  v32[0] = v3;
  v21 = sub_18F3FB0D0(v32);
  OUTLINED_FUNCTION_11_2();
  v22 = type metadata accessor for IntentDialog(0);
  v23 = OUTLINED_FUNCTION_9_33();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_68_5(v1, v0, v21, v29, v30);
  sub_18F0EF148(v31, &qword_1EACCF7A8, &qword_18F540440);
  (*(v15 + 8))(v6, v13);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v31 = v3;
  v32 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();

  v16 = *v31;
  OUTLINED_FUNCTION_65_9();
  v17(v1, v5, v12);
  v18 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, AssociatedTypeWitness);
  v33[0] = v16;
  v21 = sub_18F3FB0D0(v33);
  OUTLINED_FUNCTION_11_2();
  v22 = type metadata accessor for IntentDialog(0);
  v23 = OUTLINED_FUNCTION_9_33();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_68_5(v1, v0, v21, v29, v30);
  sub_18F0EF148(v32, &qword_1EACCF7A8, &qword_18F540440);
  (*(v14 + 8))(v5, v12);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:mode:requestValueDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v52 = v31;
  v53 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v36, &a18);
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_2();
  v51 = v40;
  OUTLINED_FUNCTION_11_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v27) = *v27;
  v44 = OUTLINED_FUNCTION_23_15();
  v45(v44, v53);
  OUTLINED_FUNCTION_45_0();
  v46(v20, v29, v36);
  v54[0] = v27;
  sub_18F3FB0D0(v54);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v25, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  sub_18F0EF148(v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v38 + 8))(v29);
  sub_18F0EF148(v52, &qword_1EACCF7A8, &qword_18F540440);
  (*(v42 + 8))(v53, v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:mode:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v56 = v26;
  v57 = v25;
  v55 = v27;
  v58 = v28;
  v30 = v29;
  v54 = v29;
  OUTLINED_FUNCTION_61_0(a22);
  OUTLINED_FUNCTION_23_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v35);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v37, &a12);
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  v42 = OUTLINED_FUNCTION_2_2(v41, &a13);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  (*(v44 + 16))(v22, v30);
  v45 = OUTLINED_FUNCTION_23_15();
  v46(v45, v55, v37);
  v47 = OUTLINED_FUNCTION_52_9();
  sub_18F3FB0D0(v47);
  OUTLINED_FUNCTION_22_0(&a18);
  v56();
  OUTLINED_FUNCTION_8();
  v48 = OUTLINED_FUNCTION_38_5();
  sub_18F116908(v48, v49, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();

  sub_18F0EF148(v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v55);
  sub_18F0EF148(v58, &qword_1EACCF7A8, &qword_18F540440);
  (*(v44 + 8))(v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v55 = v26;
  v56 = v25;
  v28 = v27;
  v57 = v29;
  v58 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_44_1(v31);
  v54 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v37, &a15);
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  v42 = OUTLINED_FUNCTION_2_2(v41, &a16);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v28) = *v28;
  (*(v44 + 16))(v21, v32);
  v45 = OUTLINED_FUNCTION_23_15();
  v46(v45, v58, v37);
  v60[0] = v28;
  sub_18F3FB0D0(v60);
  OUTLINED_FUNCTION_2_0();
  v47 = OUTLINED_FUNCTION_48_9();
  sub_18F116908(v47, v22, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v59[3] = v55;
  v59[4] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v53 = *(v55 - 8);
  (*(v53 + 16))(boxed_opaque_existential_1, v56, v55);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v53 + 8))(v56, v55);
  sub_18F0EF148(v37, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v58);
  sub_18F0EF148(v57, &qword_1EACCF7A8, &qword_18F540440);
  (*(v44 + 8))();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v63 = v29;
  v67 = v30;
  v64 = v31;
  v33 = v32;
  v68 = v34;
  v69 = v35;
  v37 = v36;
  OUTLINED_FUNCTION_46_0(v36);
  v65 = a23;
  v66 = a25;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v42, &a10);
  v44 = v43;
  v62 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_67();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v47 = OUTLINED_FUNCTION_2_2(v46, &a15);
  v49 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v52 = v51 - v50;
  LOBYTE(v33) = *v33;
  OUTLINED_FUNCTION_31_10();
  v53(v52, v37);
  (*(v44 + 16))(v25, v69, v42);
  v71[0] = v33;
  sub_18F3FB0D0(v71);
  v54 = OUTLINED_FUNCTION_22_0(&a13);
  v63(v54, v55);
  OUTLINED_FUNCTION_8();
  sub_18F116908(v64, v26, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v70[3] = v65;
  v70[4] = v66;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v61 = *(v65 - 8);
  (*(v61 + 16))(boxed_opaque_existential_1, v67, v65);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v61 + 8))(v67, v65);
  sub_18F0EF148(v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v62 + 8))(v69);
  sub_18F0EF148(v68, &qword_1EACCF7A8, &qword_18F540440);
  (*(v49 + 8))();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v24 = v5;
  v25 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_18_12();
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v4) = *v4;
  OUTLINED_FUNCTION_25_0();
  v18 = OUTLINED_FUNCTION_23_15();
  v19(v18, v6, v12);
  v26[0] = v4;
  sub_18F3FB0D0(v26);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  v20 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_67_5();
  sub_18F0EF148(v2, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v14 + 8))(v24, v12);
  sub_18F0EF148(v25, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:mode:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v23 = v22;
  v49 = v25;
  v50 = v24;
  v27 = v26;
  v29 = v28;
  v48 = v28;
  v51 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  v39 = OUTLINED_FUNCTION_35_0();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  LOBYTE(v27) = *v27;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_45_0();
  v41(v21, v29, v35);
  LOBYTE(v52[0]) = v27;
  sub_18F3FB0D0(v52);
  v52[3] = v23;
  v52[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v52);
  v49();
  OUTLINED_FUNCTION_8();
  v42 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v42, v43, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();

  sub_18F0EF148(v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v37 + 8))(v48, v35);
  sub_18F0EF148(v51, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v53 = v25;
  v54 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v52 = v30;
  v55 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v37, &a18);
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_24();
  v41 = sub_18F520B3C();
  v42 = OUTLINED_FUNCTION_10(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_45_0();
  v43(v20, v31, v37);
  v44 = OUTLINED_FUNCTION_52_9();
  v45 = sub_18F3FB0D0(v44);
  OUTLINED_FUNCTION_44_1(v45);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v29, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v56[3] = v27;
  v56[4] = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  v51 = *(v27 - 8);
  (*(v51 + 16))(boxed_opaque_existential_1, v54, v27);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v51 + 8))(v54, v27);
  sub_18F0EF148(v29, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v52);
  sub_18F0EF148(v55, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:default:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v57[1] = v27;
  v60 = v29;
  v61 = v28;
  v63 = v30;
  v32 = v31;
  v34 = v33;
  v58 = v33;
  v64 = v35;
  v62 = a24;
  OUTLINED_FUNCTION_23_3(a23);
  v36 = a22;
  v59 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v57 - v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v43, &a14);
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_33();
  v47 = sub_18F520B3C();
  v48 = OUTLINED_FUNCTION_10(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  LOBYTE(v32) = *v32;
  OUTLINED_FUNCTION_25_0();
  (*(v45 + 16))(v24, v34, v43);
  v66[0] = v32;
  v57[2] = sub_18F3FB0D0(v66);
  OUTLINED_FUNCTION_22_0(&a17);
  v60();
  OUTLINED_FUNCTION_8();
  v49 = v61;
  sub_18F116908(v61, v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v65[3] = v36;
  v65[4] = v62;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  v55 = *(v36 - 8);
  v56 = v63;
  (*(v55 + 16))(boxed_opaque_existential_1, v63, v36);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v55 + 8))(v56, v36);
  sub_18F0EF148(v49, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v45 + 8))(v58, v57[3]);
  sub_18F0EF148(v64, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:mode:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v33 = v3;
  v34 = v2;
  v35 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_0();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33_8();
  v17 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_54_9();
  v21 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_106(v21, v22, v17);
  if (v23)
  {
    OUTLINED_FUNCTION_25_0();
    v24 = OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_106(v24, v25, v17);
    if (!v23)
    {
      sub_18F0EF148(v1, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v19 + 32))(v0, v1, v17);
  }

  (*(v11 + 16))(v14, v34, v31);
  v26 = OUTLINED_FUNCTION_52_9();
  sub_18F3FB0D0(v26);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v33, v32, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  sub_18F0EF148(v33, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v11 + 8))(v34, v31);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:mode:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v57 = v26;
  v59 = v28;
  v60 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_61_0(a22);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_67();
  v45 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v49 = *v30;
  sub_18F116908(v32, v23, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v23, 1, v45);
  if (v50)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v23, 1, v45);
    if (!v50)
    {
      sub_18F0EF148(v23, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v47 + 32))(v22, v23, v45);
  }

  OUTLINED_FUNCTION_31_10();
  v51(v42, v60, v56);
  v61[0] = v49;
  sub_18F3FB0D0(v61);
  OUTLINED_FUNCTION_22_0(&a13);
  OUTLINED_FUNCTION_41_5();
  v57();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v59, v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();

  sub_18F0EF148(v59, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v60, v56);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v71 = v23;
  v72 = v25;
  v73 = v24;
  v27 = v26;
  v74 = v28;
  v76 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_61_0(a22);
  OUTLINED_FUNCTION_23_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v36);
  v68 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v40 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_28_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v67 - v44;
  v46 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v50);
  v51 = *v27;
  v74 = v31;
  sub_18F116908(v31, v45, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v45, 1, v46);
  if (v52)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v45, 1, v46);
    if (!v52)
    {
      sub_18F0EF148(v45, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v48 + 32))(v75, v45, v46);
  }

  v53 = OUTLINED_FUNCTION_23_15();
  v54(v53, v76, v38);
  v78[0] = v51;
  v67[1] = sub_18F3FB0D0(v78);
  OUTLINED_FUNCTION_2_0();
  v55 = v72;
  v56 = OUTLINED_FUNCTION_38_5();
  sub_18F116908(v56, v57, v58, v59);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = v70;
  v77[3] = v70;
  v77[4] = v69;
  __swift_allocate_boxed_opaque_existential_1(v77);
  v65 = *(v64 - 8);
  OUTLINED_FUNCTION_32_11();
  v66();
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v65 + 8))(v51, v64);
  sub_18F0EF148(v55, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v40 + 8))(v76, v38);
  OUTLINED_FUNCTION_27_0(v73);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:capabilities:mode:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v70 = v30;
  v71 = v29;
  v32 = v31;
  v73 = v33;
  v35 = v34;
  v67 = a26;
  OUTLINED_FUNCTION_23_3(a24);
  OUTLINED_FUNCTION_61_0(a22);
  v66 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v44 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_28_0();
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v48);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_21_20();
  v50 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v54);
  v55 = *v32;
  sub_18F116908(v35, v26, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v26, 1, v50);
  if (v56)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v26, 1, v50);
    if (!v56)
    {
      sub_18F0EF148(v26, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v52 + 32))(v72, v26, v50);
  }

  OUTLINED_FUNCTION_31_10();
  v57(v47, v73, v42);
  v75[0] = v55;
  sub_18F3FB0D0(v75);
  OUTLINED_FUNCTION_22_0(&a10);
  OUTLINED_FUNCTION_41_5();
  v66(v58);
  OUTLINED_FUNCTION_8();
  sub_18F116908(v70, v68, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v74[3] = v69;
  v74[4] = v67;
  __swift_allocate_boxed_opaque_existential_1(v74);
  v63 = *(v69 - 8);
  OUTLINED_FUNCTION_32_11();
  v65(v64);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v63 + 8))(v50);
  sub_18F0EF148(v70, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v44 + 8))(v73, v42);
  OUTLINED_FUNCTION_27_0(v71);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:mode:size:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v53 = v28;
  v30 = v29;
  v52 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v35, &a18);
  v37 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30_0();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v51 = v39;
  OUTLINED_FUNCTION_11_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  LOBYTE(v25) = *v25;
  (*(v41 + 16))(v20, v30);
  OUTLINED_FUNCTION_45_0();
  v43(v21, v27, v35);
  v54[0] = v25;
  sub_18F3FB0D0(v54);
  OUTLINED_FUNCTION_11_2();
  v44 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_15_27();
  v45 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  v48 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_67_5();
  (*(v37 + 8))(v27);
  sub_18F0EF148(v53, &qword_1EACCF7A8, &qword_18F540440);
  (*(v41 + 8))(v52, v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v52 = v24;
  v53 = v23;
  v54 = v25;
  v27 = v26;
  v51 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2(v32, &a16);
  v34 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_33();
  v36 = sub_18F520B3C();
  v37 = OUTLINED_FUNCTION_2_2(v36, &a17);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v40 = *v52;
  v41 = OUTLINED_FUNCTION_23_15();
  v42(v41, v27, v36);
  OUTLINED_FUNCTION_45_0();
  v43(v20, v53, v32);
  v55[0] = v40;
  sub_18F3FB0D0(v55);
  OUTLINED_FUNCTION_11_2();
  v44 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_15_27();
  v45 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  v48 = OUTLINED_FUNCTION_12_37();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_67_5();
  (*(v34 + 8))(v53);
  sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
  (*(v39 + 8))(v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:mode:size:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24();
  v11 = sub_18F520B3C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_65_9();
  v13(v0, v3, v9);
  v14 = OUTLINED_FUNCTION_52_9();
  v15 = sub_18F3FB0D0(v14);
  OUTLINED_FUNCTION_11_2();
  v16 = type metadata accessor for IntentDialog(0);
  v17 = OUTLINED_FUNCTION_9_33();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_68_5(v1, v0, v15, v23, v24);
  v25 = OUTLINED_FUNCTION_57_7();
  v26(v25);
  sub_18F0EF148(v27, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_20();
  v11 = sub_18F520B3C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_30_0();

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_65_9();
  v13(v0, v3, v9);
  v14 = OUTLINED_FUNCTION_52_9();
  v15 = sub_18F3FB0D0(v14);
  OUTLINED_FUNCTION_11_2();
  v16 = type metadata accessor for IntentDialog(0);
  v17 = OUTLINED_FUNCTION_9_33();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_68_5(v1, v0, v15, v23, v24);
  v25 = OUTLINED_FUNCTION_57_7();
  v26(v25);
  sub_18F0EF148(v27, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:mode:size:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_46_0(v11);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_24();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v19 = *v3;
  sub_18F116908(v5, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v0, 1, v15);
  if (v20)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v0, 1, v15);
    if (!v20)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v17 + 32))(v1, v0, v15);
  }

  v21 = OUTLINED_FUNCTION_35_14();
  v22(v21);
  v37[0] = v19;
  sub_18F3FB0D0(v37);
  OUTLINED_FUNCTION_11_2();
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_55_8(v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_47_13();
  v36(v35);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v40 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_46_0(v10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_24();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33_8();
  v14 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v18 = *v4;
  OUTLINED_FUNCTION_54_9();
  v19 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_106(v19, v20, v14);
  if (v21)
  {
    OUTLINED_FUNCTION_25_0();
    v22 = OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_106(v22, v23, v14);
    if (!v21)
    {
      sub_18F0EF148(v1, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v16 + 32))(v0, v1, v14);
  }

  v24 = OUTLINED_FUNCTION_35_14();
  v25(v24);
  v41[0] = v18;
  sub_18F3FB0D0(v41);
  OUTLINED_FUNCTION_11_2();
  v26 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_15_27();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_48_9();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_55_8(v33, v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_47_13();
  v39(v38);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void _AssistantIntent.init<A>(_:phrases:parameterValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v71 = v28;
  OUTLINED_FUNCTION_43_3();
  v30 = v29;
  v68 = v31;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  type metadata accessor for _AssistantIntent.IntentProjection(0, v37, v38, v36);
  v39 = OUTLINED_FUNCTION_48_10(&a18);
  v21(v39);
  sub_18F29EF58(v35);
  v40 = v20();

  v75[0] = v40;
  v73[2] = v27;
  v73[3] = v25;
  type metadata accessor for _AssistantIntent.Phrase(255, v27, v25, v41);
  v42 = sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  WitnessTable = swift_getWitnessTable();
  v66 = sub_18F10C138(sub_18F2C1850, v73, v42, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);

  v69 = v27;
  (v21)(v35, v30, v27);
  sub_18F29EF58(v35);
  v45 = v71();

  v72 = *(v45 + 16);
  if (v72)
  {
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC8];
    v48 = v45 + 32;
    v70 = v45;
    while (v46 < *(v45 + 16))
    {
      sub_18F19F8AC(v48, v75);
      v49 = v75[0];
      v50 = v75[1];
      v51 = v75[2];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v74 = v47;
      sub_18F0F713C(v49, v50);
      OUTLINED_FUNCTION_2_5();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_17;
      }

      v56 = v52;
      v57 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EF8, &unk_18F5508F0);
      if (sub_18F5229DC())
      {
        v58 = sub_18F0F713C(v49, v50);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_19;
        }

        v56 = v58;
      }

      v47 = v74;
      if (v57)
      {
        *(*(v74 + 56) + 8 * v56) = v51;
      }

      else
      {
        OUTLINED_FUNCTION_37_17(v74 + 8 * (v56 >> 6));
        v61 = (v60 + 16 * v56);
        *v61 = v49;
        v61[1] = v50;
        *(*(v47 + 56) + 8 * v56) = v51;
        v62 = *(v47 + 16);
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_18;
        }

        *(v47 + 16) = v64;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      ++v46;
      sub_18F2BF7F8(v75);
      v48 += 64;
      v45 = v70;
      if (v72 == v46)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_18F522E2C();
    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC8];
LABEL_15:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    v65 = sub_18F5216CC();
    (*(v67 + 8))(v30, v69);
    *v68 = v66;
    v68[1] = v47;
    v68[2] = v65;
    OUTLINED_FUNCTION_16();
  }
}

void _AssistantIntent.init<A>(_:phrases:implying:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_43_3();
  v7 = v6;
  v63 = v8;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  type metadata accessor for _AssistantIntent.IntentProjection(0, v14, v15, v13);
  v16 = OUTLINED_FUNCTION_48_10(&v73);
  v1(v16);
  sub_18F29EF58(v12);
  v17 = v0();

  v71[0] = v17;
  v65[2] = v5;
  v65[3] = v3;
  type metadata accessor for _AssistantIntent.Phrase(255, v5, v3, v18);
  v19 = sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_18F10C138(sub_18F2C1850, v65, v19, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400, &qword_18F545B30);
  v59 = sub_18F5216CC();
  v62 = v7;
  v64 = v5;
  (v1)(v12, v7, v5);
  sub_18F29EF58(v12);
  OUTLINED_FUNCTION_50_5();
  v23 = v22();

  if (*(v23 + 16))
  {
    v24 = 0;
    v25 = MEMORY[0x1E69E7CC8];
    v26 = v23 + 32;
    while (v24 < *(v23 + 16))
    {
      sub_18F19F8AC(v26, v71);
      v28 = v71[0];
      v27 = v71[1];
      sub_18F102F54(&v72, &v69);
      if (v70)
      {
        sub_18F0FD0B4(&v69, v67);
        swift_isUniquelyReferenced_nonNull_native();
        v66 = v25;
        v29 = OUTLINED_FUNCTION_36_18();
        sub_18F0F713C(v29, v30);
        OUTLINED_FUNCTION_2_5();
        if (__OFADD__(v33, v34))
        {
          goto LABEL_23;
        }

        v35 = v31;
        v36 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
        OUTLINED_FUNCTION_56_5();
        if (sub_18F5229DC())
        {
          v37 = OUTLINED_FUNCTION_36_18();
          sub_18F0F713C(v37, v38);
          OUTLINED_FUNCTION_25_22();
          if (!v40)
          {
            goto LABEL_25;
          }

          v35 = v39;
        }

        v25 = v66;
        if (v36)
        {
          OUTLINED_FUNCTION_39_14();
          v43 = (v41 + v35 * v42);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          sub_18F0FD0B4(v67, v43);
        }

        else
        {
          OUTLINED_FUNCTION_37_17(v66 + 8 * (v35 >> 6));
          v52 = (v51 + 16 * v35);
          *v52 = v28;
          v52[1] = v27;
          OUTLINED_FUNCTION_39_14();
          sub_18F0FD0B4(v67, v53 + v35 * v54);
          v55 = *(v25 + 16);
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_24;
          }

          *(v25 + 16) = v57;
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        }
      }

      else
      {
        sub_18F10095C(&v69);
        v44 = OUTLINED_FUNCTION_36_18();
        v46 = sub_18F0F713C(v44, v45);
        if (v47)
        {
          v48 = v46;
          swift_isUniquelyReferenced_nonNull_native();
          v66 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
          OUTLINED_FUNCTION_56_5();
          sub_18F5229DC();
          v25 = v66;

          OUTLINED_FUNCTION_39_14();
          sub_18F0FD0B4((v49 + v48 * v50), v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
          sub_18F5229FC();
        }

        else
        {
          v68 = 0;
          memset(v67, 0, sizeof(v67));
        }

        sub_18F10095C(v67);
      }

      sub_18F2BF7F8(v71);
      ++v24;
      v26 += 64;
      OUTLINED_FUNCTION_50_5();
      if (v58 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_18F522E2C();
    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
LABEL_21:

    (*(v61 + 8))(v62, v64);
    *v63 = v60;
    v63[1] = v59;
    v63[2] = v25;
    OUTLINED_FUNCTION_16();
  }
}

void _AssistantIntent.init<A>(_:phrases:parameterValues:implying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v22 = v21;
  v95 = v23;
  v25 = v24;
  v27 = v26;
  v96 = v26;
  v92 = v28;
  OUTLINED_FUNCTION_11_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  type metadata accessor for _AssistantIntent.IntentProjection(0, v36, a21, v35);
  v91 = v30;
  v37 = *(v30 + 16);
  v37(v34, v27, v22);
  sub_18F29EF58(v34);
  v38 = v25();

  v105 = v38;
  v99[2] = v22;
  v99[3] = a21;
  type metadata accessor for _AssistantIntent.Phrase(255, v22, a21, v39);
  v40 = sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  WitnessTable = swift_getWitnessTable();
  v90 = sub_18F10C138(sub_18F2C1458, v99, v40, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v42);

  v93 = v37;
  v37(v34, v96, v22);
  v94 = v34;
  sub_18F29EF58(v34);
  OUTLINED_FUNCTION_50_5();
  v44 = v43();

  if (*(v44 + 16))
  {
    v45 = 0;
    v46 = MEMORY[0x1E69E7CC8];
    v47 = v44 + 32;
    v97 = v44;
    while (v45 < *(v44 + 16))
    {
      sub_18F19F8AC(v47, &v105);
      v48 = v105;
      v49 = v106;
      v50 = v107;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v103 = v46;
      v51 = sub_18F0F713C(v48, v49);
      if (__OFADD__(v46[2], (v52 & 1) == 0))
      {
        goto LABEL_39;
      }

      v53 = v51;
      v54 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EF8, &unk_18F5508F0);
      if (sub_18F5229DC())
      {
        sub_18F0F713C(v48, v49);
        OUTLINED_FUNCTION_26_27();
        if (!v56)
        {
          goto LABEL_44;
        }

        v53 = v55;
      }

      v46 = v103;
      if (v54)
      {
        *(*(v103 + 56) + 8 * v53) = v50;
      }

      else
      {
        *(v103 + 8 * (v53 >> 6) + 64) |= 1 << v53;
        v57 = (v46[6] + 16 * v53);
        *v57 = v48;
        v57[1] = v49;
        *(v46[7] + 8 * v53) = v50;
        v58 = v46[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_42;
        }

        v46[2] = v60;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      ++v45;
      sub_18F2BF7F8(&v105);
      v47 += 64;
      OUTLINED_FUNCTION_50_5();
      v44 = v97;
      if (v61 == v45)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC8];
LABEL_16:

    v93(v94, v96, v22);
    sub_18F29EF58(v94);
    v62 = v95();

    if (!*(v62 + 16))
    {
      v64 = MEMORY[0x1E69E7CC8];
LABEL_37:

      (*(v91 + 8))(v96, v22);
      *v92 = v90;
      v92[1] = v46;
      v92[2] = v64;
      OUTLINED_FUNCTION_16();
      return;
    }

    v63 = 0;
    v64 = MEMORY[0x1E69E7CC8];
    v65 = v62 + 32;
    v98 = v62;
    while (v63 < *(v62 + 16))
    {
      sub_18F19F8AC(v65, &v105);
      v67 = v105;
      v66 = v106;
      sub_18F102F54(&v108, &v103);
      if (v104)
      {
        sub_18F0FD0B4(&v103, v101);
        swift_isUniquelyReferenced_nonNull_native();
        v100 = v64;
        sub_18F0F713C(v67, v66);
        OUTLINED_FUNCTION_2_5();
        if (__OFADD__(v70, v71))
        {
          goto LABEL_41;
        }

        v72 = v68;
        v73 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
        OUTLINED_FUNCTION_56_5();
        if (sub_18F5229DC())
        {
          sub_18F0F713C(v67, v66);
          OUTLINED_FUNCTION_25_22();
          if (!v56)
          {
            goto LABEL_44;
          }

          v72 = v74;
        }

        v64 = v100;
        if (v73)
        {
          OUTLINED_FUNCTION_39_14();
          v77 = (v75 + v72 * v76);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          sub_18F0FD0B4(v101, v77);
        }

        else
        {
          OUTLINED_FUNCTION_37_17(v100 + 8 * (v72 >> 6));
          v84 = (v83 + 16 * v72);
          *v84 = v67;
          v84[1] = v66;
          OUTLINED_FUNCTION_39_14();
          sub_18F0FD0B4(v101, v85 + v72 * v86);
          v87 = *(v64 + 16);
          v59 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v59)
          {
            goto LABEL_43;
          }

          *(v64 + 16) = v88;
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        }

        sub_18F2BF7F8(&v105);
        v62 = v98;
      }

      else
      {
        sub_18F10095C(&v103);
        v78 = sub_18F0F713C(v67, v66);
        if (v79)
        {
          v80 = v78;
          swift_isUniquelyReferenced_nonNull_native();
          v100 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
          OUTLINED_FUNCTION_56_5();
          sub_18F5229DC();
          v64 = v100;

          OUTLINED_FUNCTION_39_14();
          sub_18F0FD0B4((v81 + v80 * v82), v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
          sub_18F5229FC();
        }

        else
        {
          v102 = 0;
          memset(v101, 0, sizeof(v101));
        }

        sub_18F10095C(v101);
        sub_18F2BF7F8(&v105);
      }

      ++v63;
      v65 += 64;
      OUTLINED_FUNCTION_50_5();
      if (v89 == v63)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_18F522E2C();
  __break(1u);
}

uint64_t _AssistantIntent.IntentProjection.__deallocating_deinit()
{
  _AssistantIntent.IntentProjection.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F2BEE14()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_40_15();
  sub_18F10A40C(v3, v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_6();
    OUTLINED_FUNCTION_18_31();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4800, &qword_18F5509D8);
    OUTLINED_FUNCTION_15_28(v7);
    OUTLINED_FUNCTION_62_7();

    v8 = *(v1 + 56);
    type metadata accessor for AppViewBridgeAnnotation(0);
    OUTLINED_FUNCTION_10_0();
    sub_18F10A3AC(v8 + *(v9 + 72) * v2, v0, type metadata accessor for AppViewBridgeAnnotation);
    v10 = sub_18F2C1570();
    OUTLINED_FUNCTION_55_9(v10, v11, &type metadata for AppViewBridgeAnnotationKey, v12, v10);
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
    type metadata accessor for AppViewBridgeAnnotation(0);
    OUTLINED_FUNCTION_4_10();
  }

  OUTLINED_FUNCTION_65_2();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_18F2BEEFC()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_46_13();
  sub_18F181A54();
  if (v5)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_38_14();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4808, &qword_18F5509E0);
    OUTLINED_FUNCTION_15_28(v6);
    OUTLINED_FUNCTION_47_14();
    v7 = sub_18F520E6C();
    OUTLINED_FUNCTION_10_0();
    (*(v8 + 8))(v4 + *(v8 + 72) * v2, v7);
    v9 = *(v1 + 56) + 56 * v2;
    v10 = *(v9 + 16);
    *v3 = *v9;
    *(v3 + 16) = v10;
    *(v3 + 32) = *(v9 + 32);
    *(v3 + 48) = *(v9 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4810, &qword_18F5509E8);
    OUTLINED_FUNCTION_4_46();
    v13 = sub_18F0F4870(v11, v12, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_54_10(v13);
    *v0 = v1;
  }

  else
  {
    *(v3 + 48) = 0;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *v3 = 0u;
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_18F2BF008()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_40_15();
  sub_18F0F713C(v1, v2);
  if (v3)
  {
    OUTLINED_FUNCTION_67_6();
    OUTLINED_FUNCTION_18_31();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD48A8, &unk_18F562AA0);
    OUTLINED_FUNCTION_15_28(v4);
    OUTLINED_FUNCTION_62_7();

    type metadata accessor for AppIntentEnablement(0);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_28_34();
    v7 = sub_18F10A3AC(v5, v0, v6);
    OUTLINED_FUNCTION_55_9(v7, v8, MEMORY[0x1E69E6158], v9, MEMORY[0x1E69E6168]);
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
    type metadata accessor for AppIntentEnablement(0);
    OUTLINED_FUNCTION_4_10();
  }

  OUTLINED_FUNCTION_65_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_18F2BF0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_58_5();
  sub_18F0EFA5C(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_19_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4898, &qword_18F550A68);
    OUTLINED_FUNCTION_27_28();
    OUTLINED_FUNCTION_69_3(v13, v14, v15);
    type metadata accessor for ConnectionContext();
    sub_18F5229FC();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_18F2BF17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_58_5();
  sub_18F181EC0(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_19_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4878, &unk_18F564BE0);
    OUTLINED_FUNCTION_27_28();
    OUTLINED_FUNCTION_69_3(v14, v15, v16);
    sub_18F0EF654(*(a10 + 48) + 40 * v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4880, &qword_18F550A50);
    sub_18F5229FC();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_18F2BF244()
{
  OUTLINED_FUNCTION_58_5();
  sub_18F181A54();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_19_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47E0, &qword_18F5509B8);
  OUTLINED_FUNCTION_27_28();
  OUTLINED_FUNCTION_69_3(v3, v4, v5);
  v6 = *(v13 + 48);
  v7 = sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v8 + 8))(v6 + *(v8 + 72) * v1, v7);
  v9 = *(*(v13 + 56) + 24 * v1);
  OUTLINED_FUNCTION_4_46();
  sub_18F0F4870(v10, v11, MEMORY[0x1E69695B8]);
  sub_18F5229FC();
  *v0 = v13;
  return v9;
}

uint64_t sub_18F2BF368()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_40_15();
  sub_18F181F04(v3, v4, v5, v6);
  if (v7)
  {
    OUTLINED_FUNCTION_67_6();
    OUTLINED_FUNCTION_18_31();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4888, &unk_18F550A58);
    OUTLINED_FUNCTION_15_28(v8);
    OUTLINED_FUNCTION_62_7();

    v9 = *(v1 + 56);
    _s18AppManagerObserverO17OnChangedObserverVMa(0);
    OUTLINED_FUNCTION_10_0();
    sub_18F10A3AC(v9 + *(v10 + 72) * v2, v0, _s18AppManagerObserverO17OnChangedObserverVMa);
    v11 = sub_18F2C179C();
    OUTLINED_FUNCTION_55_9(v11, v12, &_s18AppManagerObserverO20AppNotificationTopicVN, v13, v11);
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
    _s18AppManagerObserverO17OnChangedObserverVMa(0);
    OUTLINED_FUNCTION_4_10();
  }

  OUTLINED_FUNCTION_65_2();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_18F2BF458()
{
  OUTLINED_FUNCTION_40_15();
  sub_18F181A54();
  if (v4)
  {
    OUTLINED_FUNCTION_67_6();
    OUTLINED_FUNCTION_18_31();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4868, &unk_18F550A30);
    OUTLINED_FUNCTION_15_28(v5);
    OUTLINED_FUNCTION_47_14();
    v6 = sub_18F520E6C();
    OUTLINED_FUNCTION_10_0();
    (*(v7 + 8))(v3 + *(v7 + 72) * v2, v6);
    v8 = *(v1 + 56);
    v9 = type metadata accessor for IntentContext(0);
    OUTLINED_FUNCTION_10_0();
    sub_18F10A3AC(v8 + *(v10 + 72) * v2, v0, type metadata accessor for IntentContext);
    OUTLINED_FUNCTION_4_46();
    sub_18F0F4870(v11, v12, MEMORY[0x1E69695B8]);
    sub_18F5229FC();
    v13 = OUTLINED_FUNCTION_17_30();
    v16 = v9;
  }

  else
  {
    type metadata accessor for IntentContext(0);
    v13 = OUTLINED_FUNCTION_4_10();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_18F2BF59C()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_46_13();
  sub_18F0F713C(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_38_14();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
    OUTLINED_FUNCTION_15_28(v7);
    OUTLINED_FUNCTION_62_7();

    OUTLINED_FUNCTION_39_14();
    sub_18F0FD0B4((v8 + v2 * v9), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    sub_18F5229FC();
    *v0 = v1;
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_18F2BF65C()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_46_13();
  sub_18F181F98(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_38_14();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4840, &qword_18F550A18);
    OUTLINED_FUNCTION_15_28(v7);
    v8 = OUTLINED_FUNCTION_47_14();
    type metadata accessor for IntentDonationIdentifier(v8);
    OUTLINED_FUNCTION_10_0();
    sub_18F1A27DC(v4 + *(v9 + 72) * v2);
    OUTLINED_FUNCTION_39_14();
    sub_18F0FD0B4((v10 + v2 * v11), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
    v12 = sub_18F0F4870(&qword_1EACD4848, type metadata accessor for IntentDonationIdentifier, &protocol conformance descriptor for IntentDonationIdentifier);
    OUTLINED_FUNCTION_54_10(v12);
    *v0 = v1;
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_65_2();
}

void sub_18F2BF74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_58_5();
  sub_18F182088();
  if (v11)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_19_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4820, &qword_18F5509F8);
    OUTLINED_FUNCTION_27_28();
    OUTLINED_FUNCTION_69_3(v12, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4828, &qword_18F550A00);
    sub_18F5229FC();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_65_2();
}

_OWORD *sub_18F2BF860()
{
  OUTLINED_FUNCTION_102();
  v3 = OUTLINED_FUNCTION_1_59(v1, v2);
  sub_18F0F713C(v3, v4);
  OUTLINED_FUNCTION_0_68();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47B0, &qword_18F550988);
  if (OUTLINED_FUNCTION_11_30(v6))
  {
    v7 = OUTLINED_FUNCTION_22_24();
    sub_18F0F713C(v7, v8);
    OUTLINED_FUNCTION_14_5();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_101_0();

    return sub_18F118710(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    sub_18F2C0DE8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_101_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

void sub_18F2BF93C()
{
  OUTLINED_FUNCTION_18();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_43_3();
  v8 = v7;
  v10 = OUTLINED_FUNCTION_8_32(v7, v9);
  sub_18F0F713C(v10, v11);
  OUTLINED_FUNCTION_0_68();
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_44_11();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if (OUTLINED_FUNCTION_11_30(v13))
  {
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_14_5();
    if (!v15)
    {
      goto LABEL_14;
    }

    v2 = v14;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    OUTLINED_FUNCTION_16();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_34_17();
    sub_18F2C0EC8(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_16();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

_OWORD *sub_18F2BFA5C()
{
  OUTLINED_FUNCTION_102();
  v3 = OUTLINED_FUNCTION_1_59(v1, v2);
  sub_18F0F713C(v3, v4);
  OUTLINED_FUNCTION_0_68();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4838, &qword_18F550A10);
  if (OUTLINED_FUNCTION_11_30(v6))
  {
    v7 = OUTLINED_FUNCTION_22_24();
    sub_18F0F713C(v7, v8);
    OUTLINED_FUNCTION_14_5();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_101_0();

    return sub_18F118710(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    sub_18F2C0DE8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_101_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

void sub_18F2BFB38()
{
  OUTLINED_FUNCTION_102();
  v3 = OUTLINED_FUNCTION_1_59(v1, v2);
  sub_18F0F713C(v3, v4);
  OUTLINED_FUNCTION_0_68();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD48A8, &unk_18F562AA0);
  if (OUTLINED_FUNCTION_11_30(v10))
  {
    v11 = OUTLINED_FUNCTION_22_24();
    sub_18F0F713C(v11, v12);
    OUTLINED_FUNCTION_26_27();
    if (!v14)
    {
      goto LABEL_12;
    }

    v8 = v13;
  }

  if (v9)
  {
    v15 = *(*v0 + 56);
    v16 = type metadata accessor for AppIntentEnablement(0);
    v17 = OUTLINED_FUNCTION_10(v16);
    OUTLINED_FUNCTION_68_6(v17, v15 + *(v18 + 72) * v8);
    OUTLINED_FUNCTION_101_0();
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    sub_18F2C0E54(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_101_0();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

_OWORD *sub_18F2BFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_60_6();
  v12 = OUTLINED_FUNCTION_7_34(v10, v11);
  sub_18F0EFA5C(v12);
  OUTLINED_FUNCTION_0_68();
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  v15 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4858, &unk_18F550A20);
  if (OUTLINED_FUNCTION_30_21(v16))
  {
    v17 = OUTLINED_FUNCTION_59_4();
    sub_18F0EFA5C(v17);
    OUTLINED_FUNCTION_25_22();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_101_0();

    return sub_18F118710(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    OUTLINED_FUNCTION_101_0();

    return sub_18F2C0EFC(v23, v24, v25, v26);
  }
}

void sub_18F2BFD24()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v26 = v3;
  v27 = v4;
  v6 = v5;
  v7 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_18F181A54();
  OUTLINED_FUNCTION_0_68();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47E0, &qword_18F5509B8);
  if ((OUTLINED_FUNCTION_42_10(v19) & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_18F181A54();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v0;
  if (v18)
  {
    v23 = v22[7] + 24 * v17;
    *v23 = v26;
    *(v23 + 8) = v6 & 1;
    *(v23 + 16) = v27;

    OUTLINED_FUNCTION_16();
  }

  else
  {
    (*(v9 + 16))(v13, v2, v7);
    sub_18F2C0F64(v17, v13, v26, v6 & 1, v27, v22);
    OUTLINED_FUNCTION_16();
  }
}

void sub_18F2BFED4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = OUTLINED_FUNCTION_3_42(v10, v8);
  sub_18F181F04(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_68();
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4888, &unk_18F550A58);
  if (OUTLINED_FUNCTION_42_10(v20))
  {
    sub_18F181F04(v9, v7, v5, v3);
    OUTLINED_FUNCTION_24_29();
    if (!v22)
    {
      goto LABEL_12;
    }

    v18 = v21;
  }

  v23 = *v1;
  if (v19)
  {
    v24 = v23[7];
    v25 = _s18AppManagerObserverO17OnChangedObserverVMa(0);
    v26 = OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_68_6(v26, v24 + *(v27 + 72) * v18);
    OUTLINED_FUNCTION_16();
  }

  else
  {
    sub_18F2C103C(v18, v9, v7, v5, v3, v0, v23);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_16();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

void sub_18F2C0014()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v23 = v3;
  v5 = v4;
  v6 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  sub_18F181A54();
  OUTLINED_FUNCTION_0_68();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3260, &qword_18F54AFD0);
  OUTLINED_FUNCTION_20_24();
  if ((sub_18F5229DC() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_18F181A54();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = v5;
    v21[1] = v23;
    OUTLINED_FUNCTION_16();
  }

  else
  {
    (*(v8 + 16))(v12, v2, v6);
    sub_18F2C10EC(v16, v12, v5, v23, v20);
    OUTLINED_FUNCTION_16();
  }
}

unint64_t sub_18F2C01A8()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_60_6();
  v4 = OUTLINED_FUNCTION_7_34(v2, v3);
  sub_18F0EFA5C(v4);
  OUTLINED_FUNCTION_0_68();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4870, &qword_18F562A60);
  if (OUTLINED_FUNCTION_30_21(v10))
  {
    v11 = OUTLINED_FUNCTION_59_4();
    sub_18F0EFA5C(v11);
    OUTLINED_FUNCTION_25_22();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v9)
  {
    *(*(*v1 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_101_0();
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    OUTLINED_FUNCTION_101_0();

    return sub_18F0EFAF8(v16, v17, v18, v19);
  }
}

void sub_18F2C0288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_24();
  sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_18();
  sub_18F181A54();
  OUTLINED_FUNCTION_0_68();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v15 = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4808, &qword_18F5509E0);
  if (OUTLINED_FUNCTION_11_30(v16))
  {
    sub_18F181A54();
    OUTLINED_FUNCTION_24_29();
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_16();

    sub_18F2C172C(v18, v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_32_25();
    v22(v21);
    v23 = OUTLINED_FUNCTION_35_15();
    sub_18F2C11AC(v23, v24, v25, v26);
    OUTLINED_FUNCTION_16();
  }
}

void sub_18F2C03C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_24();
  sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_18();
  sub_18F181A54();
  OUTLINED_FUNCTION_0_68();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v5 = v2;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4868, &unk_18F550A30);
  if (OUTLINED_FUNCTION_11_30(v7))
  {
    sub_18F181A54();
    OUTLINED_FUNCTION_24_29();
    if (!v9)
    {
      goto LABEL_11;
    }

    v5 = v8;
  }

  if (v6)
  {
    v10 = *(*v0 + 56);
    v11 = type metadata accessor for IntentContext(0);
    v12 = OUTLINED_FUNCTION_10(v11);
    OUTLINED_FUNCTION_68_6(v12, v10 + *(v13 + 72) * v5);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_32_25();
    v15(v14);
    v16 = OUTLINED_FUNCTION_35_15();
    sub_18F2C1280(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_16();
}

void sub_18F2C0508()
{
  OUTLINED_FUNCTION_18();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_43_3();
  v8 = v7;
  sub_18F0F713C(v9, v10);
  OUTLINED_FUNCTION_0_68();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4860, &qword_18F559F40);
  if (OUTLINED_FUNCTION_42_10(v16))
  {
    v17 = OUTLINED_FUNCTION_36_18();
    sub_18F0F713C(v17, v18);
    OUTLINED_FUNCTION_24_29();
    if (!v20)
    {
      goto LABEL_12;
    }

    v14 = v19;
  }

  v21 = *v1;
  if (v15)
  {
    v22 = (v21[7] + 24 * v14);
    *v22 = v8;
    v22[1] = v2;
    v22[2] = v0;
    OUTLINED_FUNCTION_16();
  }

  else
  {
    sub_18F2C1370(v14, v6, v4, v8, v2, v0, v21);
    OUTLINED_FUNCTION_16();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

unint64_t sub_18F2C0614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_59(v14, v15);
  sub_18F181924();
  OUTLINED_FUNCTION_0_68();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_11();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47B8, &unk_18F550990);
  if (OUTLINED_FUNCTION_11_30(v17))
  {
    OUTLINED_FUNCTION_22_24();
    sub_18F181924();
    OUTLINED_FUNCTION_14_5();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  if (v12)
  {
    *(*(*v11 + 56) + 8 * v13) = v10;
    OUTLINED_FUNCTION_101_0();
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    OUTLINED_FUNCTION_101_0();

    return sub_18F2C13C4(v22, v23, v24, v25, v26);
  }
}

uint64_t sub_18F2C06E8()
{
  OUTLINED_FUNCTION_102();
  v2 = OUTLINED_FUNCTION_1_59(v0, v1);
  sub_18F0F713C(v2, v3);
  OUTLINED_FUNCTION_0_68();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
  if (OUTLINED_FUNCTION_11_30(v7))
  {
    v8 = OUTLINED_FUNCTION_22_24();
    sub_18F0F713C(v8, v9);
    OUTLINED_FUNCTION_26_27();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_101_0();

    return sub_18F0FD0B4(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_21_23();
    sub_18F2C140C(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_101_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

void sub_18F2C07CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_24();
  sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_18();
  sub_18F1817B4();
  OUTLINED_FUNCTION_0_68();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47F0, &qword_18F5509C8);
  if (OUTLINED_FUNCTION_11_30(v8))
  {
    sub_18F1817B4();
    OUTLINED_FUNCTION_24_29();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v9;
  }

  if (v7)
  {
    *(*(*v1 + 56) + 8 * v6) = v0;
    OUTLINED_FUNCTION_16();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_32_25();
    v14(v13);
    v15 = OUTLINED_FUNCTION_35_15();
    sub_18F2C14B8(v15, v16, v17, v18);
    OUTLINED_FUNCTION_16();
  }
}

void sub_18F2C0908()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  type metadata accessor for IntentDonationIdentifier(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  sub_18F181F98(v2);
  OUTLINED_FUNCTION_0_68();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4840, &qword_18F550A18);
  OUTLINED_FUNCTION_20_24();
  if ((sub_18F5229DC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_59_4();
  v15 = sub_18F181F98(v14);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v0;
  if (v13)
  {
    OUTLINED_FUNCTION_39_14();
    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_16();

    sub_18F0FD0B4(v18, v19);
  }

  else
  {
    sub_18F2C16C8(v2, v8);
    sub_18F2C15C4(v12, v8, v4, v17);
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_18F2C0A4C()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_43_3();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_8_32(v3, v5);
  sub_18F0F713C(v6, v7);
  OUTLINED_FUNCTION_0_68();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_44_11();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4830, &qword_18F550A08);
  if (OUTLINED_FUNCTION_11_30(v9))
  {
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_14_5();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v4;
    OUTLINED_FUNCTION_101_0();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_34_17();
    sub_18F2C13C4(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_101_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}