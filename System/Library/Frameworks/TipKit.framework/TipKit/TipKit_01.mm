uint64_t sub_1A35B6380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A35B63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B642C(uint64_t a1)
{
  v2 = type metadata accessor for TipViewStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35B6488(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC98, &qword_1A3627A70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = a1;
    sub_1A3622A4C();
    sub_1A362193C();

    sub_1A35ABFF4(a1, &v11, &qword_1EB0EECA0, &qword_1A3627A78);
    if (v12)
    {

      sub_1A35A63BC(&v11, v14);
      sub_1A35A63BC(v14, &v11);
      sub_1A35A6350(&v11, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8, &qword_1A3627A80);
      sub_1A3622ECC();

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {

      sub_1A35A6588(&v11, &qword_1EB0EECA0, &qword_1A3627A78);
    }

    sub_1A35ABFF4(a1, &v11, &qword_1EB0EECA0, &qword_1A3627A78);
    if (v12)
    {
      v10 = v13;
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {
      sub_1A35A6588(&v11, &qword_1EB0EECA0, &qword_1A3627A78);
      v10 = 0;
    }

    *(v2 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_currentTip) = v10;
  }

  return result;
}

uint64_t sub_1A35B6720(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35ABFF4(a2, &v4, &qword_1EB0EECA0, &qword_1A3627A78);
  if (v5)
  {

    sub_1A35A63BC(&v4, v6);
  }

  else
  {
    sub_1A35A6588(&v4, &qword_1EB0EECA0, &qword_1A3627A78);
    memset(v6, 0, sizeof(v6));
    v7 = 0;
  }

  sub_1A35B6834(v6);
}

uint64_t sub_1A35B6834(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1A35B70B4(KeyPath, sub_1A35B71DC, &v5);

  return sub_1A35A6588(a1, &qword_1EB0EEAF8, &qword_1A3626DD8);
}

uint64_t sub_1A35B68B8(uint64_t a1, uint64_t a2)
{
  sub_1A35A63D4(a1, a2, v29);
  v4 = v30;
  v5 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  LOBYTE(v5) = v9;
  sub_1A3622BCC();
  v10 = sub_1A36223BC();

  sub_1A35B72C8(v6, v8, v5 & 1);

  __swift_destroy_boxed_opaque_existential_1(v29);
  if (v10)
  {
    sub_1A35A63D4(a1, a2, v29);
    v11 = v30;
    v12 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v13 = (*(v12 + 32))(v11, v12);
    if (v16)
    {
      sub_1A35B8988(v13, v14, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1A35A63D4(a1, a2, v29);
      v17 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v19 = (*(v18 + 32))(v17, v18);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      sub_1A3622BCC();
      if (v25)
      {
        v26 = sub_1A36223BC();

        sub_1A35B8988(v19, v21, v23, v25);
        v27 = v26 ^ 1;
      }

      else
      {

        v27 = 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      v27 = 0;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_1A35B6AEC(uint64_t a1, uint64_t a2)
{
  if (sub_1A35B68B8(a1, a2))
  {
    return 1;
  }

  return sub_1A35E5E5C(a1, a2);
}

void sub_1A35B6B4C(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_priority))
  {
    v3 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
    v31 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
    v32 = *(v3 + 16);
    swift_beginAccess();
    v4 = 0;
    v30 = v3;
    for (i = (v3 + 32); ; i += 48)
    {
      if (v32 == v4)
      {
        v18 = a1;
LABEL_28:
        v18[1] = 0u;
        v18[2] = 0u;
        *v18 = 0u;
        return;
      }

      if (v4 >= *(v30 + 16))
      {
        break;
      }

      sub_1A35ABFF4(i, &v34, &qword_1EB0EEC50, &qword_1A3627328);
      sub_1A3622E3C();
      sub_1A3622E2C();
      sub_1A3622DFC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1A35ABFF4(&v34, v33, &qword_1EB0EEC50, &qword_1A3627328);
      v6 = sub_1A362134C();
      v8 = v7;

      v9 = *(v2 + v31);
      if (*(v9 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v10 = sub_1A35A4F38(v6, v8), v12 = v11, , (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + v10);

        __swift_destroy_boxed_opaque_existential_1(v33);

        if ((v13 - 7) < 2)
        {
          v37 = v34;
          v38 = v35;
          v39 = v36;
          sub_1A35ABFF4(&v37, &v34, &qword_1EB0EEC50, &qword_1A3627328);
          v21 = sub_1A362134C();
          v23 = v22;

          v24 = *(v2 + v31);
          if (*(v24 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v25 = sub_1A35A4F38(v21, v23), v27 = v26, , (v27 & 1) != 0))
          {
            v28 = *(*(v24 + 56) + v25);

            v18 = a1;
            if (v28 == 8)
            {
              __swift_destroy_boxed_opaque_existential_1(&v34);
              v35 = v38;
              v36 = v39;
              v34 = v37;
              v19 = *(&v39 + 1);
              v20 = &v34;
              goto LABEL_21;
            }
          }

          else
          {

            v18 = a1;
          }

          __swift_destroy_boxed_opaque_existential_1(&v34);
          sub_1A35A6588(&v37, &qword_1EB0EEC50, &qword_1A3627328);
          goto LABEL_28;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      sub_1A35A6588(&v34, &qword_1EB0EEC50, &qword_1A3627328);
      ++v4;
    }

    __break(1u);
LABEL_31:
    __break(1u);

    sub_1A35A6588(&v34, &qword_1EB0EEC50, &qword_1A3627328);
    __break(1u);
  }

  else
  {
    v14 = 0;
    i = 0;
    v15 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
    v16 = *(v15 + 16);
    for (j = v15 + 32; ; j += 48)
    {
      if (v16 == v14)
      {
        a1[1] = 0u;
        a1[2] = 0u;
        *a1 = 0u;
        return;
      }

      if (v14 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      sub_1A35ABFF4(j, &v34, &qword_1EB0EEC50, &qword_1A3627328);
      if (sub_1A35B6F4C(&v34, v2))
      {
        break;
      }

      sub_1A35A6588(&v34, &qword_1EB0EEC50, &qword_1A3627328);
      ++v14;
    }

    v38 = v35;
    v39 = v36;
    v37 = v34;
    v19 = *(&v36 + 1);
    v20 = &v37;
    v18 = a1;
LABEL_21:
    sub_1A35A63BC(v20, v18);
    *(v18 + 5) = v19;
  }
}

BOOL sub_1A35B6F4C(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35ABFF4(a1, v15, &qword_1EB0EEC50, &qword_1A3627328);
  v4 = sub_1A362134C();
  v6 = v5;

  v7 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_statusMap;
  swift_beginAccess();
  v8 = *(a2 + v7);
  if (*(v8 + 16) && (_s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0(), v9 = sub_1A35A4F38(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + v9);

    v13 = v12 == 8;
  }

  else
  {

    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);

  return v13;
}

uint64_t sub_1A35B716C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAF8, &qword_1A3626DD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B71F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A35B716C(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t AnyTip.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_1A35B72C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1A35B72D8()
{
  result = qword_1ED81E6A8;
  if (!qword_1ED81E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8, &qword_1A3624AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6A8);
  }

  return result;
}

uint64_t sub_1A35B7340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35B73A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  do
  {
    while (1)
    {
      v4 = sub_1A3622C1C();
      if (!v5)
      {

        sub_1A3622C1C();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_1A3622C1C();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_1A362345C();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1A35B74E8()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1A35D3014;

    return sub_1A35B7CD0();
  }

  else
  {
    OUTLINED_FUNCTION_5_1();

    return v4();
  }
}

uint64_t sub_1A35B75D4()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_13();
  sub_1A35ABFAC(v1, v2, &unk_1A3627A48);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1A35E6C7C;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1A35B76BC()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_2(v5);
  *v6 = v7;
  v6[1] = sub_1A35A3334;

  return sub_1A35B7CF0(v4, v2, v0);
}

void sub_1A35B7760(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v25 = v1;
  v9 = *(v1 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_tips);
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = *a1;
    v11 = v9 + 32;
    v24 = v5;
    do
    {
      v26 = v10;
      sub_1A35ABFF4(v11, v32, &qword_1EB0EEC50, &qword_1A3627328);
      v12 = v33;
      sub_1A35A63BC(v32, v30);
      v31 = v12;
      v13 = sub_1A3622E6C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_1A35ABFF4(v30, v29, &qword_1EB0EEC50, &qword_1A3627328);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v14;
      v16 = v29[1];
      *(v15 + 40) = v29[0];
      *(v15 + 56) = v16;
      *(v15 + 72) = v29[2];
      sub_1A35ABFF4(v8, v5, &qword_1EB0EE620, &qword_1A36256E8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v13);

      if (EnumTagSinglePayload == 1)
      {
        sub_1A35A6588(v5, &qword_1EB0EE620, &qword_1A36256E8);
      }

      else
      {
        sub_1A3622E5C();
        (*(*(v13 - 8) + 8))(v5, v13);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1A3622DFC();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1A3627AB0;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v28[1] = 0;
        v28[2] = v18;
        v28[0] = 0;
        v22 = v28;
        v28[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v27[0] = 1;
      v27[1] = v22;
      v27[2] = v23;
      swift_task_create();

      sub_1A35A6588(v8, &qword_1EB0EE620, &qword_1A36256E8);
      sub_1A35A6588(v30, &qword_1EB0EEC50, &qword_1A3627328);

      v11 += 48;
      v10 = v26 - 1;
      v5 = v24;
    }

    while (v26 != 1);
  }
}

uint64_t sub_1A35B7B3C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A35B7B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1A35B7BC4()
{
  result = qword_1ED81D658;
  if (!qword_1ED81D658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEC90, &qword_1A3627958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D658);
  }

  return result;
}

uint64_t sub_1A35B7C28()
{
  OUTLINED_FUNCTION_10_1();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_2(v2);
  *v3 = v4;
  v3[1] = sub_1A35D3FEC;
  OUTLINED_FUNCTION_7_4();

  return sub_1A35B75B4(v5, v6, v7, v1);
}

uint64_t sub_1A35B7CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A35B7D10, a3, 0);
}

uint64_t sub_1A35B7D10()
{
  OUTLINED_FUNCTION_2_4();
  sub_1A35B7760(*(v0 + 16));
  OUTLINED_FUNCTION_5_1();

  return v1();
}

uint64_t sub_1A35B7D68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A36213AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC18, &qword_1A3627230);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECC0, &qword_1A3627A98);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A35B7EFC, v2, 0);
}

uint64_t sub_1A35B7EFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  Tip.statusUpdates.getter(v5, v6);
  sub_1A3622EEC();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_13();
  v9 = sub_1A35ABFAC(v7, v8, &unk_1A3627A48);
  v0[14] = v9;
  v10 = v0[4];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_0_20(v11);
  v12 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 17, v10, v9, v12);
}

uint64_t sub_1A35B8028(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 184) = a2;
  *(v2 - 176) = a1;
  return v2 - 168;
}

uint64_t OUTLINED_FUNCTION_20_3()
{
}

void sub_1A35B80D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask;
  if (!*(v0 + OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_observationTask))
  {
    v5 = sub_1A3622E6C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    *(v0 + v4) = sub_1A35D34A0(0, 0, v3, &unk_1A3627AD8, v7);

    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EECA8, &qword_1A3627A80);
    sub_1A3622EBC();
  }
}

uint64_t sub_1A35B8258()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35B8290()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t TipGroup.currentTipUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtCC6TipKit8TipGroupP33_21B4D18D2139E5AE80EECBE4751D7F377Monitor_stream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC90, &qword_1A3627958);
  OUTLINED_FUNCTION_0_0();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1A35B8350(uint64_t a1)
{
  v2 = type metadata accessor for TipViewEnvironment(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  sub_1A35BBD90(a1, v4 - v3);
  return sub_1A35BAD74(v5);
}

void sub_1A35B83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1A35B567C(v24, &a9 - v32, &qword_1EB0EE3C0, &qword_1A3626780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3608138(v33, v26, type metadata accessor for TipViewEnvironment);
  }

  else
  {
    sub_1A362303C();
    v34 = sub_1A36221DC();
    OUTLINED_FUNCTION_9_7(v34, &dword_1A359E000, v35, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v29 + 8))(v21, v27);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35B8988(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A35B72C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t Tips.Action.with(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 32);
  v14 = *(v2 + 40);
  v8 = *(v2 + 56);
  if (v6 == sub_1A3622BCC() && v5 == v9)
  {

LABEL_9:
    v12 = sub_1A362342C();
    MEMORY[0x1A58F3290](v12);

    v6 = 0x2E7865646E6940;
    v5 = 0xE700000000000000;
    goto LABEL_10;
  }

  v11 = sub_1A362345C();

  if (v11 & 1) != 0 || (sub_1A35B73A4(0x2E7865646E6940, 0xE700000000000000, v6, v5))
  {
    goto LABEL_9;
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
LABEL_10:
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 56) = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v14;
}

uint64_t TipViewStyleConfiguration.actions.getter()
{
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  if (*(v0 + 64) && sub_1A362131C())
  {

    v5 = sub_1A362131C();
    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = OUTLINED_FUNCTION_24_1(v5);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_22_1();
    v7 = OUTLINED_FUNCTION_11_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    sub_1A35BB7E4(&qword_1EB0EF158, &qword_1EB0EF150, &unk_1A3628EA0);
  }

  else
  {
    sub_1A362142C();
    sub_1A36213FC();
    v9 = OUTLINED_FUNCTION_28_1();
    v10(v9);
    if (v4)
    {
      OUTLINED_FUNCTION_0_28();
      v11 = OUTLINED_FUNCTION_2_19();
      v13 = *(v12(v11) + 16);

      if (v13)
      {
        MEMORY[0x1EEE9AC00](v14);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v15);
        OUTLINED_FUNCTION_16();
        *(v16 - 16) = sub_1A35F6F28;
        *(v16 - 8) = v17;
        v18 = sub_1A362159C();
        sub_1A36215AC();
        v18(v27, 0);
      }
    }

    OUTLINED_FUNCTION_0_28();
    v19 = OUTLINED_FUNCTION_2_19();
    v21 = v20(v19);
    v22 = OUTLINED_FUNCTION_24_1(v21);
    MEMORY[0x1EEE9AC00](v22);
    OUTLINED_FUNCTION_22_1();
    v23 = OUTLINED_FUNCTION_11_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    sub_1A35BB7E4(&qword_1ED81DD28, &qword_1EB0EF148, &qword_1A362A180);
  }

  v25 = sub_1A3622C5C();

  return v25;
}

uint64_t sub_1A35B8DD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A35B8E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A35B8E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 184) = swift_getKeyPath();
  *(a3 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE58, &qword_1A3628398);
  sub_1A362288C();
  v6 = v16;
  v7 = v17;
  v8 = v15[1];
  *(a3 + 200) = v15[0];
  *(a3 + 216) = v8;
  *(a3 + 232) = v6;
  *(a3 + 240) = v7;
  sub_1A35ECF18(a2 + 24, a3, &qword_1EB0EEDB0, &unk_1A36283A0);
  v9 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v9;
  *(a3 + 57) = *(a2 + 64);
  v10 = type metadata accessor for TipViewEnvironment(0);
  sub_1A35ECF18(a2 + *(v10 + 32), v15, &qword_1EB0EED38, &unk_1A3627EB0);
  v11 = v17;
  sub_1A35A63BC(v15, a3 + 64);
  *(a3 + 104) = v11;
  v12 = (a2 + *(v10 + 36));
  v13 = *v12;
  LOBYTE(v10) = *(v12 + 8);
  sub_1A35F04C4(a2, type metadata accessor for TipViewEnvironment);
  *(a3 + 112) = v13;
  *(a3 + 120) = v10;
  sub_1A35B2260(a1 + 72, a3 + 128);
  return sub_1A35F04C4(a1, type metadata accessor for TipViewStyleConfiguration);
}

uint64_t sub_1A35B8FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v40 = a3;
  v41 = sub_1A362206C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3621F3C();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3621ABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6A0, &qword_1A362A0B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6A8, &qword_1A362A0C0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6B0, &qword_1A362A0C8);
  v20 = *(v19 - 8);
  v33 = v19;
  v34 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v32[0] = v32 - v21;
  v32[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6B8, &qword_1A362A0D0);
  sub_1A36092C4();
  sub_1A36228FC();
  sub_1A3621AAC();
  sub_1A35A9B78(&qword_1ED81E0B8, &qword_1EB0EF6A0, &qword_1A362A0B8, MEMORY[0x1E697D680]);
  sub_1A35BB23C(&qword_1ED81E6B8, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  sub_1A362245C();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6E0, &qword_1A362A0F8);
  sub_1A3621B2C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A3627130;
  sub_1A3621B1C();
  v43 = v22;
  v23 = &v18[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6E8, &qword_1A362A100);
  sub_1A35BB23C(&qword_1ED81E140, MEMORY[0x1E697ECE8], MEMORY[0x1E697ECF8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6F0, &qword_1A362A108);
  sub_1A35A9B78(&qword_1ED81E090, &qword_1EB0EF6F0, &qword_1A362A108, MEMORY[0x1E69E6328]);
  sub_1A362311C();
  *v23 = 0;
  v24 = v35;
  sub_1A3621B3C();
  v25 = sub_1A3609434();
  v26 = sub_1A35BB23C(&qword_1ED81E110, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v27 = v32[0];
  v28 = v36;
  sub_1A362247C();
  (*(v37 + 8))(v24, v28);
  sub_1A3602FAC(v18, &qword_1EB0EF6A8);
  v29 = v38;
  sub_1A362205C();
  v43 = v16;
  v44 = v28;
  v45 = v25;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v33;
  sub_1A362254C();
  (*(v39 + 8))(v29, v41);
  return (*(v34 + 8))(v27, v30);
}

unint64_t sub_1A35B96AC()
{
  result = qword_1ED81E2F8;
  if (!qword_1ED81E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6C8, &qword_1A362A0E0);
    sub_1A35A9B78(&qword_1ED81E6A0, &unk_1EB0EF328, &unk_1A362A050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2F8);
  }

  return result;
}

uint64_t sub_1A35B9764(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Tips.Action.id.getter()
{
  v1 = *v0;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

unint64_t sub_1A35B97E8()
{
  result = qword_1ED81DDB0;
  if (!qword_1ED81DDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF420, &qword_1A36299D8);
    sub_1A3602A44();
    sub_1A3602E28(&unk_1ED81DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDB0);
  }

  return result;
}

uint64_t sub_1A35B98A0@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5E8, &qword_1A3629FB0);
  MEMORY[0x1EEE9AC00](v106);
  v97 = v79 - v2;
  v92 = sub_1A3622ACC();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A3622AAC();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v104 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5F0, &qword_1A3629FB8);
  MEMORY[0x1EEE9AC00](v105);
  v91 = v79 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5F8, &qword_1A3629FC0);
  MEMORY[0x1EEE9AC00](v94);
  v99 = v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF600, &qword_1A3629FC8);
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = v79 - v8;
  v108 = sub_1A3621A2C();
  v95 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A36227EC();
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v109 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF608, &qword_1A3629FD0);
  MEMORY[0x1EEE9AC00](v93);
  v98 = v79 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF610, &qword_1A3629FD8);
  MEMORY[0x1EEE9AC00](v102);
  v103 = v79 - v13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF618, &qword_1A3629FE0);
  MEMORY[0x1EEE9AC00](v112);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v79 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF620, &qword_1A3629FE8);
  MEMORY[0x1EEE9AC00](v113);
  v20 = v79 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF628, &qword_1A3629FF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF630, &qword_1A3629FF8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v79 - v25;
  v27 = v1;
  TipViewStyleConfiguration.imageView.getter();
  if (v28)
  {
    v29 = v28;
    type metadata accessor for MiniTipSolariumView.ImageView(0);
    sub_1A3622A1C();
    sub_1A36040BC(0, v29, v118);
    memcpy(v23, v118, 0x79uLL);
    swift_storeEnumTagMultiPayload();
    sub_1A35B567C(v118, v115, &qword_1EB0EF650, &qword_1A362A018);
    sub_1A35B567C(v118, v115, &qword_1EB0EF650, &qword_1A362A018);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF650, &qword_1A362A018);
    sub_1A3608A98();
    sub_1A3608B64();
    sub_1A3621F1C();
    sub_1A35B567C(v26, v20, &qword_1EB0EF630, &qword_1A3629FF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648, &qword_1A362A010);
    sub_1A3608A0C();
    sub_1A3608FA0();
    v30 = v114;
    sub_1A3621F1C();

    sub_1A3602FAC(v118, &qword_1EB0EF650);
    sub_1A3602FAC(v118, &qword_1EB0EF650);
    sub_1A3602FAC(v26, &qword_1EB0EF630);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638, &qword_1A362A000);
    v32 = v30;
    return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
  }

  v80 = v15;
  v81 = v21;
  v82 = v23;
  v83 = v18;
  v84 = v26;
  v85 = v20;
  v86 = v24;
  v34 = TipViewStyleConfiguration.image.getter();
  v36 = v110;
  v35 = v111;
  v37 = v109;
  if (v34)
  {
    v38 = v34;
    if (*(v27 + *(type metadata accessor for TipViewStyleConfiguration(0) + 40) + 3) == 1)
    {
      (*(v36 + 104))(v37, *MEMORY[0x1E6981630], v35);
      v79[2] = v38;
      v39 = sub_1A362280C();
      v79[1] = v39;
      (*(v36 + 8))(v37, v35);
      v40 = sub_1A362229C();
      v41 = v95;
      (*(v95 + 104))(v107, *MEMORY[0x1E697E6E8], v108);
      KeyPath = swift_getKeyPath();
      v118[0] = v39;
      v118[1] = 0;
      LOWORD(v118[2]) = 1;
      v118[3] = KeyPath;
      v118[4] = v40;
      v111 = v40;

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF318, &unk_1A362A040);
      v44 = sub_1A35C54C8();
      v45 = v96;
      sub_1A36224CC();

      v46 = v100;
      v47 = v101;
      (*(v100 + 16))(v99, v45, v101);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF320, &qword_1A3629900);
      v118[0] = v43;
      v118[1] = v44;
      swift_getOpaqueTypeConformance2();
      sub_1A36020D4();
      v48 = v98;
      sub_1A3621F1C();

      (*(v46 + 8))(v45, v47);
      (*(v41 + 8))(v107, v108);
      v49 = type metadata accessor for MiniTipSolariumView.ImageView(0);
      sub_1A35A6350(v27 + *(v49 + 24), v48 + *(v93 + 36));
      v50 = v27;
      v61 = v97;
      sub_1A3622A1C();
      v62 = v103;
      sub_1A3604438(0, v63, v103);
      sub_1A3602FAC(v48, &qword_1EB0EF608);
      v64 = v105;
      v65 = v104;
      if (*(v50 + *(v49 + 28)) == 1)
      {
        sub_1A3622A9C();
        v66 = v88;
        sub_1A3622ABC();
        v67 = v91;
        v68 = &v91[*(v64 + 36)];
        v69 = v87;
        v70 = v89;
        (*(v87 + 16))(v68, v65, v89);
        v71 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF678, &qword_1A362A060) + 36)];
        LOBYTE(v115[0]) = 1;
        sub_1A362288C();
        (*(v90 + 8))(v66, v92);
        (*(v69 + 8))(v65, v70);
        v72 = v118[1];
        *v71 = v118[0];
        *(v71 + 1) = v72;
        sub_1A35B567C(v62, v67, &qword_1EB0EF610, &qword_1A3629FD8);
        sub_1A35B567C(v67, v61, &qword_1EB0EF5F0, &qword_1A3629FB8);
        swift_storeEnumTagMultiPayload();
        sub_1A3608BF0();
        sub_1A3608CA8();
        v73 = v80;
        sub_1A3621F1C();
        sub_1A3602FAC(v67, &qword_1EB0EF5F0);
      }

      else
      {
        sub_1A35B567C(v62, v61, &qword_1EB0EF610, &qword_1A3629FD8);
        swift_storeEnumTagMultiPayload();
        sub_1A3608BF0();
        sub_1A3608CA8();
        v73 = v80;
        sub_1A3621F1C();
      }

      v75 = v84;
      v74 = v85;
      v76 = v82;
      v77 = v83;
      sub_1A3602FAC(v62, &qword_1EB0EF610);
      sub_1A3602808(v73, v77, &qword_1EB0EF618, &qword_1A3629FE0);
      sub_1A35B567C(v77, v76, &qword_1EB0EF618, &qword_1A3629FE0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF650, &qword_1A362A018);
      sub_1A3608A98();
      sub_1A3608B64();
      sub_1A3621F1C();
      sub_1A35B567C(v75, v74, &qword_1EB0EF630, &qword_1A3629FF8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648, &qword_1A362A010);
      sub_1A3608A0C();
      sub_1A3608FA0();
      v78 = v114;
      sub_1A3621F1C();

      sub_1A3602FAC(v75, &qword_1EB0EF630);
      sub_1A3602FAC(v77, &qword_1EB0EF618);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638, &qword_1A362A000);
      v32 = v78;
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
    }
  }

  if (TipViewStyleConfiguration.image.getter())
  {
    if ((*(v27 + *(type metadata accessor for TipViewStyleConfiguration(0) + 40) + 3) & 1) == 0)
    {
      (*(v36 + 104))(v37, *MEMORY[0x1E6981630], v35);
      v53 = sub_1A362280C();
      (*(v36 + 8))(v37, v35);
      v54 = type metadata accessor for MiniTipSolariumView.ImageView(0);
      sub_1A35A6350(v27 + *(v54 + 24), &v117);
      v115[0] = v53;
      v115[1] = 0;
      v116 = 1;
      v55 = (v27 + *(v54 + 20));
      v56 = *v55;
      v57 = v55[1];
      v58 = sub_1A3622A1C();
      sub_1A36047DC(v56, v57, 0, v58, v59);
      sub_1A3602FAC(v115, &qword_1EB0EF640);
      v119 = 1;
      sub_1A35B567C(v118, v85, &qword_1EB0EF648, &qword_1A362A010);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF648, &qword_1A362A010);
      sub_1A3608A0C();
      sub_1A3608FA0();
      v60 = v114;
      sub_1A3621F1C();

      sub_1A3602FAC(v118, &qword_1EB0EF648);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638, &qword_1A362A000);
      v32 = v60;
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
    }
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF638, &qword_1A362A000);
  v52 = v114;

  return __swift_storeEnumTagSinglePayload(v52, 1, 1, v51);
}

uint64_t sub_1A35BA83C()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C7C();
  *v0 = result;
  return result;
}

void TipViewStyleConfiguration.imageView.getter()
{
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_11_2();
  sub_1A35BAA38(v1, v2, v3);
  if (v16)
  {
    sub_1A35A63BC(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v4 = OUTLINED_FUNCTION_11_2();
    if (sub_1A35E570C(v4, v5))
    {
      __swift_project_boxed_opaque_existential_1(v17, v18);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_3();
      v8 = v7;
      MEMORY[0x1EEE9AC00](v9);
      v11 = &v15 - v10;
      v12 = OUTLINED_FUNCTION_6();
      v13(v12);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_1A35FBB08(AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v8 + 8))(v11, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1A35BAABC(&v15, &qword_1EB0EEC00, &qword_1A3627218);
  }

  OUTLINED_FUNCTION_31_1();
}

double sub_1A35BAA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A35A63D4(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA8, &qword_1A3627198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC70, &qword_1A3627568);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A35BAABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1A35BAB30(uint64_t a1, uint64_t a2)
{
  sub_1A35BAABC(a1, &unk_1EB0EF950, &unk_1A3629BF0);
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35E8640(a2 + 248, &v17, &unk_1EB0EF950, &unk_1A3629BF0);
  v4 = v18;
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED00, "Bo");
    if (swift_dynamicCast())
    {
      *&v5 = v15;
      v11 = v5;
      v6 = sub_1A35E8544();
      __swift_destroy_boxed_opaque_existential_1(&v17);
      v7 = v11;
    }

    else
    {
      if (swift_dynamicCast())
      {
        v6 = sub_1A35E85EC();
        __swift_destroy_boxed_opaque_existential_1(&v17);
        v7 = v15;
        v4 = &unk_1F164BB20;
        goto LABEL_10;
      }

      if (swift_dynamicCast())
      {
        a2 = v16;
        v6 = sub_1A35E8598();
        __swift_destroy_boxed_opaque_existential_1(&v17);
        v7 = v15;
        v4 = &unk_1F164BA98;
        goto LABEL_10;
      }

      sub_1A35A63BC(&v17, &v15);
      sub_1A35E84E4(&v15, v12);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      a2 = sub_1A35BDBDC(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v6 = sub_1A35E8544();
      __swift_destroy_boxed_opaque_existential_1(&v15);
      *&v7 = a2;
    }

    v4 = &unk_1F164BB48;
  }

  else
  {
    v6 = 0;
    a2 = 0;
    v7 = 0uLL;
  }

LABEL_10:
  *a1 = v7;
  *(a1 + 16) = a2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
}

uint64_t sub_1A35BAD74(uint64_t a1)
{
  v2 = type metadata accessor for TipViewEnvironment(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35BBD90(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A35B5C90();
  sub_1A3621D0C();
  return sub_1A35B4EC4(a1);
}

uint64_t sub_1A35BAE2C(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 104);
  *a1 = *(a2 + 88);
  *(a1 + 16) = v4;
  sub_1A35E8640(a2 + 112, v16, &qword_1EB0EED38, &unk_1A3627EB0);
  v5 = v17;
  v6 = type metadata accessor for TipViewEnvironment(0);
  v7 = a1 + v6[8];
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_1A35A63BC(v16, v7);
  *(v7 + 40) = v5;
  v8 = a1 + v6[9];
  *v8 = *(a2 + 160);
  *(v8 + 8) = 1;
  LOBYTE(v8) = *(a2 + 240);
  v9 = a1 + v6[10];
  *v9 = *(a2 + 224);
  *(v9 + 16) = v8;
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  v12 = (a1 + v6[13]);
  v13 = *v12;
  v14 = v12[1];
  sub_1A35B5EA0(v11, v10);
  sub_1A35BBDF4(v13, v14);

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t sub_1A35BAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for TipView(0, v6, v7, a4);
  OUTLINED_FUNCTION_14(v8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1A35BBE04(a1, v10, v6, v7);
}

uint64_t sub_1A35BB00C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t MiniTipViewStyle.makeBody(configuration:)(uint64_t a1)
{
  sub_1A36229DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA50, &qword_1A36266C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA58, &qword_1A36266D0);
  sub_1A35DC728();
  sub_1A35DC848();
  return sub_1A36229EC();
}

unint64_t sub_1A35BB130()
{
  result = qword_1ED81E330;
  if (!qword_1ED81E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E330);
  }

  return result;
}

uint64_t sub_1A35BB184()
{
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_2_22();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1A35BB23C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void TipViewStyleConfiguration.title.getter()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v2 = sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (*(v0 + 64) && (v9 = sub_1A362130C()) != 0)
  {
    v10 = v9;
    v11 = sub_1A3622BCC();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_21_1();
    sub_1A35F5E4C(v12, v13, 0, MEMORY[0x1E69E7CC0], sub_1A35F6DC4, v14, v10);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    sub_1A362142C();
    v15 = sub_1A36213FC();
    (*(v4 + 8))(v8, v2);
    if (v15)
    {
      OUTLINED_FUNCTION_0_28();
      v16 = OUTLINED_FUNCTION_2_19();
      v17(v16);
      sub_1A3622BCC();
      OUTLINED_FUNCTION_17_3();
      v18 = sub_1A36223BC();

      v19 = OUTLINED_FUNCTION_17_3();
      sub_1A35B72C8(v19, v20, v21);

      if ((v18 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v22);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v23);
        OUTLINED_FUNCTION_16();
        *(v24 - 16) = sub_1A35F6DBC;
        *(v24 - 8) = v25;
        v26 = sub_1A362159C();
        sub_1A36215AC();
        v26(&v29, 0);
      }
    }

    if (*(v1 + *(type metadata accessor for TipViewStyleConfiguration(0) + 40)) == 1)
    {
      OUTLINED_FUNCTION_0_28();
      v27 = OUTLINED_FUNCTION_2_19();
      v28(v27);
      OUTLINED_FUNCTION_26_1();
    }
  }

  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_1();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_1A362313C();
}

void TipViewStyleConfiguration.message.getter()
{
  OUTLINED_FUNCTION_30_1();
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  if (*(v0 + 64) && (v5 = sub_1A362132C()) != 0)
  {
    v6 = v5;
    v7 = sub_1A3622BCC();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_21_1();
    sub_1A35F5E4C(v8, v9, 0, MEMORY[0x1E69E7CC0], sub_1A35F8298, v10, v6);
  }

  else
  {
    sub_1A362142C();
    sub_1A36213FC();
    v11 = OUTLINED_FUNCTION_28_1();
    v12(v11);
    if (v4)
    {
      OUTLINED_FUNCTION_0_28();
      v13 = OUTLINED_FUNCTION_2_19();
      v15 = v14(v13);
      if (v18)
      {
        v19 = sub_1A35B8988(v15, v16, v17, v18);
        MEMORY[0x1EEE9AC00](v19);
        OUTLINED_FUNCTION_3_19();
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_16();
        *(v21 - 16) = sub_1A35F6E80;
        *(v21 - 8) = v22;
        v23 = sub_1A362159C();
        sub_1A36215AC();
        v23(&v26, 0);
      }
    }

    OUTLINED_FUNCTION_0_28();
    v24 = OUTLINED_FUNCTION_2_19();
    v25(v24);
  }

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1A35BB7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A35BB84C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = type metadata accessor for TipViewStyleConfiguration(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = a2[1];
  v27 = *a2;
  v28 = v10;
  v11 = a2[3];
  v29 = a2[2];
  v30 = v11;
  v13 = *(&v27 + 1);
  v12 = v27;
  if (v27 == sub_1A3622BCC() && *(&v27 + 1) == v14)
  {

LABEL_9:
    v26[0] = 0x2E7865646E6940;
    v26[1] = 0xE700000000000000;
    v31 = a1;
    v17 = sub_1A362342C();
    MEMORY[0x1A58F3290](v17);

    v12 = 0x2E7865646E6940;
    v13 = 0xE700000000000000;
    goto LABEL_10;
  }

  v16 = sub_1A362345C();

  if (v16 & 1) != 0 || (sub_1A35B73A4(0x2E7865646E6940, 0xE700000000000000, v27, *(&v27 + 1)))
  {
    goto LABEL_9;
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
LABEL_10:
  sub_1A35B63C8(v25, v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1A35B7340(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  v22 = v30;
  v20[2] = v29;
  v20[3] = v22;
  v23 = v29;
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = a1;
  *(a4 + 24) = 0;
  *(a4 + 48) = sub_1A35F8164;
  *(a4 + 56) = v19;
  *(a4 + 32) = v23;
  sub_1A35BBC68(&v27, v26);
}

uint64_t sub_1A35BBA84()
{
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_destroy_boxed_opaque_existential_1(v3);

  if (*(v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v3 + 120);
  v4 = *(v0 + 36);
  v5 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v3 + v4))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v7))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }

    v8 = *(v3 + 28);
    v9 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v8))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v10 + 8))(v0 + v8, v9);
    }

    v11 = OUTLINED_FUNCTION_12_5();
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    OUTLINED_FUNCTION_15_1();
    if (v13)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v14)
    {
    }
  }

  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1A35BBCC4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __asm { FMOV            V0.2D, #8.0 }

  *a2 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF700, &qword_1A362A178);
  return sub_1A36069F4(a1);
}

unint64_t sub_1A35BBD14()
{
  result = qword_1ED81DDF0;
  if (!qword_1ED81DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDF0);
  }

  return result;
}

uint64_t sub_1A35BBD68@<X0>(uint64_t *a1@<X8>)
{
  result = Tips.Action.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A35BBD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipViewEnvironment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35BBDF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A35BBE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for TipView(0, a3, a4, v8);
  sub_1A35EAEC4(a2 + *(v9 + 44), a1 + 24);

  *(a1 + 64) = *(a2 + *(v9 + 48));
  return result;
}

uint64_t sub_1A35BBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = type metadata accessor for TipViewEnvironment(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v67 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A3621A6C();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v58 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8, &qword_1A3624AF0);
  v79 = v8;
  v10 = sub_1A3621A6C();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v58 - v13;
  v14 = sub_1A362190C();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TipViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v71 = AssociatedTypeWitness;
  v22 = sub_1A3621A6C();
  v66 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v58 - v26;
  v69 = v27;
  v78 = v10;
  v28 = sub_1A3621F2C();
  v74 = *(v28 - 8);
  v75 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v77 = &v58 - v29;
  type metadata accessor for MiniTipViewStyle(0);
  v30 = swift_dynamicCastMetatype();
  sub_1A35B5EB4(a1, v18);
  (*(v67 + 24))(v18, v6);
  sub_1A35B642C(v18);
  if (v30)
  {
    swift_getKeyPath();
    v31 = v70;
    sub_1A36218FC();
    v32 = v71;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1A362246C();

    (*(v72 + 8))(v31, v73);
    (*(v68 + 8))(v21, v32);
    v34 = sub_1A35B72D8();
    v84 = AssociatedConformanceWitness;
    v85 = v34;
    v35 = v69;
    swift_getWitnessTable();
    v36 = v65;
    sub_1A35B561C(v24, v35, v65);
    v37 = *(v66 + 8);
    v37(v24, v35);
    sub_1A35B561C(v36, v35, v24);
    v38 = sub_1A35BB130();
    v82 = AssociatedConformanceWitness;
    v83 = v38;
    WitnessTable = swift_getWitnessTable();
    v81 = v34;
    swift_getWitnessTable();
    sub_1A35BB184();
    v37(v24, v35);
    v37(v36, v35);
  }

  else
  {
    sub_1A35B63C8(v2 + *(a1 + 36), v18);
    v39 = v59;
    sub_1A35CBA00(a1, v59);
    sub_1A35B8E64(v18, v39, v100);
    v40 = v71;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v41 = v60;
    MEMORY[0x1A58F2CC0](v100, v40, &type metadata for TipViewBackground, AssociatedConformanceWitness);
    sub_1A35CC5F8(v100);
    (*(v68 + 8))(v21, v40);
    swift_getKeyPath();
    v42 = v70;
    sub_1A36218FC();
    v43 = sub_1A35BB130();
    v98 = AssociatedConformanceWitness;
    v99 = v43;
    v44 = v79;
    v45 = swift_getWitnessTable();
    v46 = v63;
    sub_1A362246C();

    (*(v72 + 8))(v42, v73);
    (*(v61 + 8))(v41, v44);
    v47 = sub_1A35B72D8();
    v96 = v45;
    v97 = v47;
    v48 = v78;
    swift_getWitnessTable();
    v49 = v62;
    sub_1A35B561C(v46, v48, v62);
    v50 = *(v64 + 8);
    v50(v46, v48);
    sub_1A35B561C(v49, v48, v46);
    v94 = AssociatedConformanceWitness;
    v95 = v47;
    swift_getWitnessTable();
    sub_1A35B04C8();
    v50(v46, v48);
    v50(v49, v48);
  }

  v51 = sub_1A35B72D8();
  v92 = AssociatedConformanceWitness;
  v93 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_1A35BB130();
  v90 = AssociatedConformanceWitness;
  v91 = v53;
  v88 = swift_getWitnessTable();
  v89 = v51;
  v54 = swift_getWitnessTable();
  v86 = v52;
  v87 = v54;
  v55 = v75;
  swift_getWitnessTable();
  v56 = v77;
  sub_1A35B561C(v77, v55, v76);
  return (*(v74 + 8))(v56, v55);
}

uint64_t sub_1A35BC84C()
{
  sub_1A35BC888();
  sub_1A3621CFC();
  return v1;
}

unint64_t sub_1A35BC888()
{
  result = qword_1ED81E2C8;
  if (!qword_1ED81E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2C8);
  }

  return result;
}

uint64_t sub_1A35BC8DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35BC904();
  *a1 = result;
  return result;
}

uint64_t sub_1A35BC904()
{
  if (qword_1ED81E498 != -1)
  {
    swift_once();
  }
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

uint64_t sub_1A35BC97C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t TipViewStyleConfiguration.image.getter()
{
  v1 = v0;
  sub_1A362141C();
  OUTLINED_FUNCTION_3();
  v65 = v3;
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_0();
  v64 = v5 - v4;
  v6 = sub_1A36211FC();
  OUTLINED_FUNCTION_3();
  v63 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF140, &unk_1A3628E90);
  v16 = OUTLINED_FUNCTION_14(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = sub_1A362122C();
  OUTLINED_FUNCTION_3();
  v67 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v62 = v26 - v27;
  OUTLINED_FUNCTION_23_2();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v31 = v0[8];
  if (v31)
  {
    sub_1A36212FC();
    OUTLINED_FUNCTION_19_1(v22, 1, v23);
    if (!v32)
    {
      v61 = v0;
      (*(v67 + 32))(v30, v22, v23);
      sub_1A362121C();
      v33 = v63;
      (*(v63 + 104))(v11, *MEMORY[0x1E69DA228], v6);
      v34 = sub_1A35F5D6C();
      v35 = *(v33 + 8);
      v35(v11, v6);
      v35(v14, v6);
      if (v34)
      {
        sub_1A362120C();
        if (_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0())
        {
          v36 = sub_1A36227FC();
        }

        else
        {
          v36 = sub_1A36227DC();
        }

        v48 = v36;
        (*(v67 + 8))(v30, v23);
        return v48;
      }

      (*(v67 + 8))(v30, v23);
      v1 = v61;
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v23);
  }

  sub_1A35BAABC(v22, &qword_1EB0EF140, &unk_1A3628E90);
  if (!v31)
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v23);
    goto LABEL_12;
  }

LABEL_10:
  sub_1A36212FC();
  OUTLINED_FUNCTION_19_1(v19, 1, v23);
  if (!v32)
  {
    v43 = v67;
    v44 = v62;
    (*(v67 + 32))();
    sub_1A362121C();
    v45 = v63;
    (*(v63 + 104))(v11, *MEMORY[0x1E69DA220], v6);
    v46 = sub_1A35F5D6C();
    v47 = *(v45 + 8);
    v47(v11, v6);
    v47(v14, v6);
    if (v46)
    {
      sub_1A362120C();
      v48 = sub_1A362281C();
      (*(v43 + 8))(v44, v23);
      return v48;
    }

    (*(v43 + 8))(v44, v23);
    goto LABEL_16;
  }

LABEL_12:
  sub_1A35BAABC(v19, &qword_1EB0EF140, &unk_1A3628E90);
LABEL_16:
  v49 = v64;
  sub_1A362142C();
  v50 = sub_1A36213FC();
  (*(v65 + 8))(v49, v66);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v51 = OUTLINED_FUNCTION_6();
    if (v52(v51))
    {

      MEMORY[0x1EEE9AC00](v53);
      *(&v60 - 2) = v1;
      MEMORY[0x1EEE9AC00](v54);
      *(&v60 - 2) = sub_1A35F6D14;
      *(&v60 - 1) = v55;
      v56 = sub_1A362159C();
      sub_1A36215AC();
      v56(v68, 0);
    }
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v57 = OUTLINED_FUNCTION_6();
  return v58(v57);
}

uint64_t sub_1A35BCFB8(uint64_t a1)
{
  if (v3[21] >> 60 == 15)
  {
    v5 = OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_2_8(v5, v6);
    v4(v2, 0);
    OUTLINED_FUNCTION_9_0();
    v10 = v1;
LABEL_3:
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    goto LABEL_6;
  }

  if ((sub_1A3622F2C() & 1) == 0)
  {
    v19 = v3[17];
    v20 = v3[14];
    v3[10] = v3[12];
    v21 = OUTLINED_FUNCTION_11();
    sub_1A35BD354(v21, v22);
    OUTLINED_FUNCTION_0_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11();
    sub_1A3620E5C();
    v23 = OUTLINED_FUNCTION_11();
    sub_1A35BD2E8(v23, v24);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
    v26 = v3[20];
    v27 = v3[21];
    v28 = v3[17];
    if (EnumTagSinglePayload == 1)
    {
      v29 = v3[14];
      (*(v3[16] + 8))(v3[17], v3[15]);
      v30 = sub_1A36215DC();
      sub_1A36215AC();
      v30(v3 + 6, 0);
      sub_1A35BD2E8(v26, v27);
      OUTLINED_FUNCTION_9_0();
      v10 = v29;
    }

    else
    {
      v31 = v3[14];
      v32 = v3[11];
      sub_1A35BD2E8(v3[20], v3[21]);
      (*(*(v31 - 8) + 32))(v32, v28, v31);
      v7 = v32;
      v8 = 0;
      v9 = 1;
      v10 = v31;
    }

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_9_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_11();
  sub_1A35BD2E8(v15, v16);
LABEL_6:

  OUTLINED_FUNCTION_5_1();

  return v17();
}

uint64_t sub_1A35BD1D0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v5 + 160) = v3;
  *(v5 + 168) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A35BCFB8, 0, 0);
}

uint64_t sub_1A35BD2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A35BD2FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1A35BD2FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1A35BD354(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1A35BD3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v72 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0D8, &qword_1A3628DA8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  v67 = v62 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0E0, &qword_1A3628DB0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v68 = v62 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0E8, &qword_1A3628DB8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v64 = v62 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0F0, &qword_1A3628DC0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0F8, &qword_1A3628DC8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v62 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF100, &qword_1A3628DD0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF108, &qword_1A3628DD8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF110, &unk_1A3628DE0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v62 - v26;
  v63 = v3;
  sub_1A35A6350(v3, v76);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED00, "Bo");
  v31 = OUTLINED_FUNCTION_5_12(v28, v29, v30, &unk_1F164BB48);
  if (v31)
  {
    v34 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118, &qword_1A3628DF0);
    OUTLINED_FUNCTION_0_0();
    (*(v35 + 16))(v27, v70);
    *&v27[*(v24 + 36)] = v34;
    sub_1A35ABFF4(v27, v19, &qword_1EB0EF110, &unk_1A3628DE0);
    swift_storeEnumTagMultiPayload();
    sub_1A35BDE00();
    sub_1A35F5988();

    sub_1A3621F1C();
    sub_1A35ABFF4(v23, v16, &qword_1EB0EF108, &qword_1A3628DD8);
    swift_storeEnumTagMultiPayload();
    sub_1A35BDEE4();
    sub_1A35BDF70();
    sub_1A3621F1C();

    sub_1A35A6588(v23, &qword_1EB0EF108, &qword_1A3628DD8);
    v36 = v27;
    v37 = &qword_1EB0EF110;
    v38 = &unk_1A3628DE0;
  }

  else
  {
    v62[0] = v24;
    v62[1] = v13;
    v39 = v70;
    v62[2] = v20;
    v40 = v16;
    v41 = OUTLINED_FUNCTION_5_12(v31, v32, v33, &unk_1F164BB20);
    if (v41)
    {
      v45 = v73;
      v44 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118, &qword_1A3628DF0);
      OUTLINED_FUNCTION_0_0();
      (*(v46 + 16))(v12, v39);
      v47 = &v12[*(v69 + 36)];
      *v47 = v45;
      *(v47 + 1) = v44;
      sub_1A35ABFF4(v12, v19, &qword_1EB0EF0F0, &qword_1A3628DC0);
      swift_storeEnumTagMultiPayload();
      sub_1A35BDE00();
      sub_1A35F5988();

      sub_1A3621F1C();
      sub_1A35ABFF4(v23, v40, &qword_1EB0EF108, &qword_1A3628DD8);
      swift_storeEnumTagMultiPayload();
      sub_1A35BDEE4();
      sub_1A35BDF70();
      OUTLINED_FUNCTION_3_18();
      sub_1A3621F1C();

      sub_1A35A6588(v23, &qword_1EB0EF108, &qword_1A3628DD8);
      v36 = v12;
      v37 = &qword_1EB0EF0F0;
      v38 = &qword_1A3628DC0;
    }

    else
    {
      v48 = v39;
      if (OUTLINED_FUNCTION_5_12(v41, v42, v43, &unk_1F164BA98))
      {
        v49 = v73;
        v50 = v74;
        v51 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118, &qword_1A3628DF0);
        OUTLINED_FUNCTION_0_0();
        v53 = v64;
        (*(v52 + 16))(v64, v48);
        v54 = (v53 + *(v65 + 36));
        *v54 = v49;
        v54[1] = v50;
        v54[2] = v51;
        sub_1A35ABFF4(v53, v67, &qword_1EB0EF0E8, &qword_1A3628DB8);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDD1C();
        sub_1A35BDE00();

        v55 = v68;
        sub_1A3621F1C();
        sub_1A35ABFF4(v55, v40, &qword_1EB0EF0E0, &qword_1A3628DB0);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDEE4();
        sub_1A35BDF70();
        OUTLINED_FUNCTION_3_18();
        sub_1A3621F1C();

        sub_1A35A6588(v55, &qword_1EB0EF0E0, &qword_1A3628DB0);
        v36 = v53;
        v37 = &qword_1EB0EF0E8;
        v38 = &qword_1A3628DB8;
      }

      else
      {
        v56 = v63[3];
        v57 = v63[4];
        __swift_project_boxed_opaque_existential_1(v63, v56);
        v58 = sub_1A35BDBDC(v56, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF118, &qword_1A3628DF0);
        OUTLINED_FUNCTION_0_0();
        (*(v59 + 16))(v27, v39);
        *&v27[*(v62[0] + 36)] = v58;
        sub_1A35ABFF4(v27, v67, &qword_1EB0EF110, &unk_1A3628DE0);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDD1C();
        sub_1A35BDE00();
        v60 = v68;
        sub_1A3621F1C();
        sub_1A35ABFF4(v60, v16, &qword_1EB0EF0E0, &qword_1A3628DB0);
        swift_storeEnumTagMultiPayload();
        sub_1A35BDEE4();
        sub_1A35BDF70();
        OUTLINED_FUNCTION_3_18();
        sub_1A3621F1C();
        sub_1A35A6588(v60, &qword_1EB0EF0E0, &qword_1A3628DB0);
        v36 = v27;
        v37 = &qword_1EB0EF110;
        v38 = &unk_1A3628DE0;
      }
    }
  }

  sub_1A35A6588(v36, v37, v38);
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1A35BDBDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v5 + 16);
  v10(v13 - v11, v3, a1, v9);
  if (swift_dynamicCast())
  {
    return v13[1];
  }

  (v10)(v7, v3, a1);
  return sub_1A362187C();
}

unint64_t sub_1A35BDD1C()
{
  result = qword_1ED81E1A0;
  if (!qword_1ED81E1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0E8, &qword_1A3628DB8);
    sub_1A35A9B30(&qword_1ED81E108, &qword_1EB0EF118, &qword_1A3628DF0, MEMORY[0x1E697FDF8]);
    sub_1A35A9B30(&qword_1ED81E0E8, &qword_1EB0EF120, &qword_1A3628DF8, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1A0);
  }

  return result;
}

unint64_t sub_1A35BDE00()
{
  result = qword_1ED81E198;
  if (!qword_1ED81E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF110, &unk_1A3628DE0);
    sub_1A35A9B30(&qword_1ED81E108, &qword_1EB0EF118, &qword_1A3628DF0, MEMORY[0x1E697FDF8]);
    sub_1A35A9B30(&qword_1ED81E100, &qword_1EB0EF128, &qword_1A3628E00, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E198);
  }

  return result;
}

unint64_t sub_1A35BDEE4()
{
  result = qword_1ED81E130;
  if (!qword_1ED81E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF108, &qword_1A3628DD8);
    sub_1A35BDE00();
    sub_1A35F5988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E130);
  }

  return result;
}

unint64_t sub_1A35BDF70()
{
  result = qword_1ED81E138;
  if (!qword_1ED81E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF0E0, &qword_1A3628DB0);
    sub_1A35BDD1C();
    sub_1A35BDE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E138);
  }

  return result;
}

uint64_t sub_1A35BE004@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v89 = sub_1A36226AC();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A36217DC();
  OUTLINED_FUNCTION_3();
  v87 = v9;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = sub_1A362178C();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED81E670 != -1)
  {
    swift_once();
  }

  if (byte_1ED823310 == 1 && (*(v1 + 40) & 1) == 0)
  {
    sub_1A3621B6C();
    v26 = (*(v18 + 88))(v21, v16);
    if (v26 == *MEMORY[0x1E697DBB8])
    {
      v83 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
      LODWORD(v86) = *MEMORY[0x1E69814C8];
      v27 = *(v5 + 104);
      v84 = v5 + 104;
      v85 = v27;
      (v27)(v8);
      sub_1A36227CC();
      v28.n128_u64[0] = 1.0;
      OUTLINED_FUNCTION_2_24(v28, v29, v30);

      OUTLINED_FUNCTION_3_21();
      v31 = v87;
      v32 = *(v88 + 8);
      v32(v12, v87);
      OUTLINED_FUNCTION_6_12();
      v33 = sub_1A3621D3C();
      OUTLINED_FUNCTION_1_26(v33);
      v88 = v34;
      WitnessTable = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_0(v93);
      OUTLINED_FUNCTION_4_17();
      v32(v15, v31);
      v83 = __swift_project_boxed_opaque_existential_1(v93, v94);
      v35 = OUTLINED_FUNCTION_5_14();
      v36(v35);
      sub_1A36227CC();
      v37.n128_u64[0] = 2.0;
      OUTLINED_FUNCTION_2_24(v37, v38, v39);

      OUTLINED_FUNCTION_3_21();
      v32(v12, v31);
      v81 = v32;
      OUTLINED_FUNCTION_6_12();
      v91 = sub_1A3621D3C();
      v92 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_0(v90);
      OUTLINED_FUNCTION_4_17();
      v32(v15, v31);
      v79 = v92;
      v80 = __swift_project_boxed_opaque_existential_1(v90, v91);
      OUTLINED_FUNCTION_6_12();
      v40 = sub_1A3621D3C();
      v83 = &v77;
      OUTLINED_FUNCTION_3();
      v82 = v41;
      MEMORY[0x1EEE9AC00](v42);
      v44 = &v77 - v43;
      v45 = OUTLINED_FUNCTION_5_14();
      v46(v45);
      sub_1A36227CC();
      v47.n128_u64[0] = 0.75;
      OUTLINED_FUNCTION_2_24(v47, v48, v49);

      OUTLINED_FUNCTION_3_21();
      v50 = v12;
      v51 = v81;
      v81(v50, v31);
      sub_1A362173C();
      v51(v15, v31);
      v52 = swift_getWitnessTable();
      v25 = sub_1A35BDBDC(v40, v52);
      v82[1](v44, v40);
      __swift_destroy_boxed_opaque_existential_1(v90);
      result = __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {
      v53 = v26;
      v86 = a1;
      v54 = *MEMORY[0x1E697DBA8];
      v55 = v2[3];
      v85 = v2[4];
      v56 = v2;
      v57 = v55;
      __swift_project_boxed_opaque_existential_1(v56, v55);
      if (v53 == v54)
      {
        LODWORD(v84) = *MEMORY[0x1E69814C8];
        v83 = *(v5 + 104);
        v78 = v8;
        (v83)(v8);
        sub_1A36227CC();
        v58.n128_u64[0] = 1.0;
        OUTLINED_FUNCTION_2_24(v58, v59, v60);

        OUTLINED_FUNCTION_3_21();
        v61 = v87;
        v62 = *(v88 + 8);
        (v62)(v12, v87);
        v82 = v62;
        v63 = sub_1A3621D3C();
        OUTLINED_FUNCTION_1_26(v63);
        v88 = v64;
        WitnessTable = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_0(v93);
        sub_1A362173C();
        (v62)(v15, v61);
        v80 = WitnessTable;
        v81 = __swift_project_boxed_opaque_existential_1(v93, v94);
        OUTLINED_FUNCTION_6_12();
        v65 = sub_1A3621D3C();
        v85 = &v77;
        OUTLINED_FUNCTION_3();
        v67 = v66;
        v69 = MEMORY[0x1EEE9AC00](v68);
        v71 = &v77 - v70;
        (v83)(v78, v84, v89, v69);
        sub_1A36227CC();
        v72.n128_u64[0] = 0.75;
        OUTLINED_FUNCTION_2_24(v72, v73, v74);

        OUTLINED_FUNCTION_3_21();
        v75 = v82;
        (v82)(v12, v61);
        sub_1A362173C();
        (v75)(v15, v61);
        v76 = swift_getWitnessTable();
        v25 = sub_1A35BDBDC(v65, v76);
        (*(v67 + 8))(v71, v65);
        result = __swift_destroy_boxed_opaque_existential_1(v93);
      }

      else
      {
        v25 = sub_1A35BDBDC(v57, v85);
        result = (*(v18 + 8))(v21, v16);
      }

      a1 = v86;
    }
  }

  else
  {
    v22 = *(v1 + 24);
    v23 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    result = sub_1A35BDBDC(v22, v23);
    v25 = result;
  }

  *a1 = v25;
  return result;
}

uint64_t sub_1A35BE7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_1A3621DCC();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF790, &unk_1A362A2D0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470, &qword_1A3629A58);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0, &qword_1A3629970);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v54 - v10;
  v11 = sub_1A3621A2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398, &unk_1A362A1F0);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF798, &qword_1A362A2E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v54 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A0, &qword_1A362A338);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v54 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A8, &qword_1A362A340);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v54 - v22;
  LODWORD(v77[0]) = sub_1A3621FDC();
  v23 = sub_1A36223AC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v76 = v27 & 1;
  v75 = 1;
  *&v78 = v23;
  *(&v78 + 1) = v25;
  LOBYTE(v79) = v27 & 1;
  *(&v79 + 1) = v29;
  *v80 = KeyPath;
  *&v80[8] = 0;
  v80[16] = 1;
  *&v80[17] = 256;
  v31 = *(v2 + 32);
  v32 = v14;
  v33 = v12[13];
  v33(v17, *MEMORY[0x1E697E6F8], v11);
  v33(v14, *MEMORY[0x1E697E6D0], v11);
  sub_1A35BB23C(&qword_1ED81E6E8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v34 = v11;
  result = sub_1A3622B3C();
  if (result)
  {
    v55 = v31;
    v36 = v12[4];
    v37 = v56;
    v36(v56, v17, v11);
    v38 = v57;
    v39 = v58;
    v36((v37 + *(v58 + 48)), v32, v11);
    sub_1A35B567C(v37, v38, &qword_1EB0EF3B0, &qword_1A3629970);
    v54 = *(v39 + 48);
    v40 = v74;
    v36(v74, v38, v34);
    v41 = v12[1];
    v41(v38 + v54, v34);
    sub_1A3602808(v37, v38, &qword_1EB0EF3B0, &qword_1A3629970);
    v36((v40 + *(v73 + 36)), (v38 + *(v39 + 48)), v34);
    v41(v38, v34);
    v42 = swift_getKeyPath();
    v77[0] = v78;
    v77[1] = v79;
    v77[2] = *v80;
    *(&v77[2] + 15) = *&v80[15];
    *(&v77[3] + 1) = v42;
    *&v77[4] = v55;
    sub_1A35B567C(&v78, __dst, &qword_1EB0EF480, &qword_1A3629A60);

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478, &unk_1A362A320);
    v44 = sub_1A35BF15C();
    v45 = sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398, &unk_1A362A1F0, MEMORY[0x1E69E5FB8]);
    v46 = v65;
    v47 = v73;
    sub_1A36224DC();
    memcpy(__dst, v77, 0x48uLL);
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    v48 = v67;
    v49 = v68;
    (*(v67 + 16))(v66, v46, v68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF480, &qword_1A3629A60);
    *&v77[0] = v43;
    *(&v77[0] + 1) = v47;
    *&v77[1] = v44;
    *(&v77[1] + 1) = v45;
    swift_getOpaqueTypeConformance2();
    sub_1A3602E68();
    v50 = v59;
    sub_1A3621F1C();
    sub_1A3602FAC(&v78, &qword_1EB0EF480);
    (*(v48 + 8))(v46, v49);
    sub_1A3602FAC(v74, &qword_1EB0EF398);
    sub_1A36229FC();
    sub_1A3621AFC();
    v51 = v63;
    sub_1A3602808(v50, v63, &qword_1EB0EF798, &qword_1A362A2E0);
    memcpy((v51 + *(v61 + 36)), v77, 0x70uLL);
    v52 = v69;
    sub_1A3621DBC();
    sub_1A3609F04();
    v53 = v60;
    sub_1A36225BC();
    (*(v70 + 8))(v52, v71);
    sub_1A3602FAC(v51, &qword_1EB0EF7A0);
    sub_1A3621A5C();
    return sub_1A3602FAC(v53, &qword_1EB0EF7A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A35BF0EC()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621CBC();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_1A35BF15C()
{
  result = qword_1ED81E6C0;
  if (!qword_1ED81E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF478, &unk_1A362A320);
    sub_1A3602E68();
    sub_1A3602E28(&qword_1ED81E6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6C0);
  }

  return result;
}

uint64_t sub_1A35BF214@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF790, &unk_1A362A2D0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470, &qword_1A3629A58);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v48 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0, &qword_1A3629970);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - v8;
  v9 = sub_1A3621A2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398, &unk_1A362A1F0);
  MEMORY[0x1EEE9AC00](v52);
  v60 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF798, &qword_1A362A2E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = &v48 - v18;
  LODWORD(v63[0]) = sub_1A3621FFC();
  v19 = sub_1A36223AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v62 = v23 & 1;
  v61 = 1;
  *&v64 = v19;
  *(&v64 + 1) = v21;
  v27 = v12;
  LOBYTE(v65) = v23 & 1;
  *(&v65 + 1) = v25;
  *v66 = KeyPath;
  *&v66[8] = 0;
  v66[16] = 1;
  *&v66[17] = 256;
  v28 = *(v2 + 32);
  v29 = v10[13];
  v29(v15, *MEMORY[0x1E697E6F8], v9);
  v29(v27, *MEMORY[0x1E697E6D0], v9);
  sub_1A35BB23C(&qword_1ED81E6E8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1A3622B3C();
  if (result)
  {
    v31 = v10[4];
    v32 = v50;
    v31(v50, v15, v9);
    v33 = v49;
    v48 = v28;
    v34 = v51;
    v31((v32 + *(v51 + 48)), v27, v9);
    sub_1A35B567C(v32, v33, &qword_1EB0EF3B0, &qword_1A3629970);
    v35 = *(v34 + 48);
    v31(v60, v33, v9);
    v36 = v10[1];
    v36(v33 + v35, v9);
    sub_1A3602808(v32, v33, &qword_1EB0EF3B0, &qword_1A3629970);
    v37 = v52;
    v31(&v60[*(v52 + 36)], (v33 + *(v34 + 48)), v9);
    v36(v33, v9);
    v38 = swift_getKeyPath();
    v63[0] = v64;
    v63[1] = v65;
    v63[2] = *v66;
    *(&v63[2] + 15) = *&v66[15];
    *(&v63[3] + 1) = v38;
    *&v63[4] = v48;
    sub_1A35B567C(&v64, __dst, &qword_1EB0EF480, &qword_1A3629A60);

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478, &unk_1A362A320);
    v40 = sub_1A35BF15C();
    v41 = sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398, &unk_1A362A1F0, MEMORY[0x1E69E5FB8]);
    v42 = v55;
    sub_1A36224DC();
    memcpy(__dst, v63, 0x48uLL);
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    v43 = v57;
    v44 = v58;
    (*(v57 + 16))(v56, v42, v58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF480, &qword_1A3629A60);
    *&v63[0] = v39;
    *(&v63[0] + 1) = v37;
    *&v63[1] = v40;
    *(&v63[1] + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_1A3602E68();
    v45 = v53;
    sub_1A3621F1C();
    sub_1A3602FAC(&v64, &qword_1EB0EF480);
    (*(v43 + 8))(v42, v44);
    sub_1A3602FAC(v60, &qword_1EB0EF398);
    sub_1A36229FC();
    sub_1A3621AFC();
    v46 = v59;
    sub_1A3602808(v45, v59, &qword_1EB0EF798, &qword_1A362A2E0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7A0, &qword_1A362A338);
    return memcpy((v46 + *(v47 + 36)), v63, 0x70uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A35BF9C4()
{
  result = qword_1ED81DCE8;
  if (!qword_1ED81DCE8)
  {
    sub_1A36215EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCE8);
  }

  return result;
}

uint64_t Tips.Parameter.wrappedValue.getter()
{
  OUTLINED_FUNCTION_0_8();
  sub_1A35A57D0(v0);
  sub_1A35A4D54();
}

void TipView.body.getter()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v110 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  v100 = v6;
  sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v102 = v8;
  v103 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_5(v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v106 = v84 - v12;
  v13 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_5(v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED58, &qword_1A3627EE0);
  OUTLINED_FUNCTION_14(v20);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v104 = v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED60, &qword_1A3627EE8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v84 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED68, &qword_1A3627EF0);
  OUTLINED_FUNCTION_3();
  v98 = v26;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70, &qword_1A3627EF8);
  v30 = OUTLINED_FUNCTION_14(v29);
  MEMORY[0x1EEE9AC00](v30);
  v109 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v84 - v33;
  v35 = v0;
  v36 = *(v0 + *(v2 + 36));
  v108 = v84 - v33;
  if (v36 == &type metadata for EmptyTip)
  {
    v67 = 1;
    v66 = v107;
  }

  else
  {
    v37 = v0 + *(v2 + 52);
    v38 = *(v37 + 8);
    if ((!v38 || (v39 = *(v37 + 16), v113 = *v37, v114 = v38, LOBYTE(v115) = v39 & 1, v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90, &qword_1A3627F50), MEMORY[0x1A58F2FF0](&v112, v40), v112 == 1)) && ((OUTLINED_FUNCTION_10_2(*(v2 + 56)), v41 = v113, sub_1A35B22BC(&v113), v41) || (sub_1A35BFA80(), v113 == 8)))
    {
      sub_1A35E908C(v2, &v113);
      v88 = v25;
      v42 = v116;
      v43 = v117;
      __swift_project_boxed_opaque_existential_1(&v113, v116);
      sub_1A35F5BB0(v42, v43);
      v45 = v44(v35 + *(v2 + 56));

      __swift_destroy_boxed_opaque_existential_1(&v113);
      KeyPath = swift_getKeyPath();
      v87 = *(v13 + 16);
      v87(v19, v35, v2);
      v91 = *(v13 + 80);
      v94 = v10;
      v47 = (v91 + 32) & ~v91;
      v48 = swift_allocObject();
      v86 = *(v2 + 16);
      v90 = *(v2 + 24);
      v49 = v90;
      *(v48 + 16) = v86;
      *(v48 + 24) = v49;
      v93 = v13;
      v50 = *(v13 + 32);
      v89 = v13 + 32;
      v92 = v50;
      v50(v48 + v47, v19, v2);
      v113 = v45;
      v114 = KeyPath;
      v115 = sub_1A35BAF84;
      v116 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED80, &qword_1A3627F30);
      v105 = v19;
      sub_1A35C1F18();
      sub_1A36225EC();

      v51 = *(v2 + 56);
      v101 = v35;
      OUTLINED_FUNCTION_10_2(v51);
      LODWORD(v48) = v113;
      sub_1A35B22BC(&v113);
      v85 = v48 != 0;
      v52 = v87;
      v84[1] = v13 + 16;
      v87(v105, v35, v2);
      v84[0] = v47;
      v53 = swift_allocObject();
      v54 = v86;
      v55 = v90;
      *(v53 + 16) = v86;
      *(v53 + 24) = v55;
      v92(v53 + v47, v105, v2);
      v56 = v96;
      v52(v96, v101, v2);
      v57 = v84[0];
      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      *(v58 + 24) = v55;
      v59 = v92;
      v92(v58 + v57, v56, v2);
      v60 = v88;
      v61 = v104;
      sub_1A35E9850(v85, sub_1A35B1F10, v53, sub_1A35EA548, v58, v88);

      v19 = v105;

      sub_1A35A6588(v61, &qword_1EB0EED58, &qword_1A3627EE0);
      v52(v19, v101, v2);
      v62 = swift_allocObject();
      v63 = v90;
      *(v62 + 16) = v54;
      *(v62 + 24) = v63;
      v10 = v94;
      v59(v62 + v57, v19, v2);
      v13 = v93;
      sub_1A35EA8C8();
      v64 = v97;
      v65 = v60;
      v35 = v101;
      sub_1A362249C();

      sub_1A35A6588(v65, &qword_1EB0EED60, &qword_1A3627EE8);
      v66 = v107;
      v34 = v108;
      (*(v98 + 32))(v108, v64, v107);
      v67 = 0;
    }

    else
    {
      v67 = 1;
      v66 = v107;
      v34 = v108;
    }
  }

  v68 = 1;
  __swift_storeEnumTagSinglePayload(v34, v67, 1, v66);
  OUTLINED_FUNCTION_10_2(*(v2 + 56));
  v69 = v113;
  sub_1A35B22BC(&v113);
  if (!v69)
  {
    sub_1A36213BC();
    v68 = sub_1A362139C();
    if ((v68 & 1) == 0)
    {
      v70 = sub_1A3622E6C();
      OUTLINED_FUNCTION_21(v100, v71, v72, v70);
      (*(v13 + 16))(v19, v35, v2);
      v94 = v10;
      v73 = v102;
      v74 = v103;
      v75 = *(v102 + 16);
      v105 = v19;
      v76 = v95;
      v75(v95, v106, v103);
      sub_1A3622E3C();
      v77 = sub_1A3622E2C();
      v78 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v79 = (v111 + *(v73 + 80) + v78) & ~*(v73 + 80);
      v80 = swift_allocObject();
      v81 = MEMORY[0x1E69E85E0];
      *(v80 + 16) = v77;
      *(v80 + 24) = v81;
      *(v80 + 32) = *(v2 + 16);
      (*(v13 + 32))(v80 + v78, v105, v2);
      (*(v73 + 32))(v80 + v79, v76, v74);
      sub_1A35D34A0(0, 0, v100, &unk_1A3627F48, v80);
    }

    (*(v102 + 8))(v106, v103);
    v34 = v108;
  }

  v82 = v109;
  sub_1A35C04F4(v34, v109);
  v83 = v110;
  sub_1A35C04F4(v82, v110);
  *(v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED88, &qword_1A3627F38) + 48)) = v68 & 1;
  sub_1A35C055C(v34);
  sub_1A35C055C(v82);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35C04F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70, &qword_1A3627EF8);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A35C055C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED70, &qword_1A3627EF8);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C05BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipView(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_8();
  v8 = *(v7 + 80);
  v36 = *(v9 + 64);
  v38 = sub_1A36213AC();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  v12 = *(v10 + 80);
  v37 = *(v13 + 64);
  swift_unknownObjectRelease();
  v14 = v5 + ((v8 + 48) & ~v8);
  OUTLINED_FUNCTION_5_0();
  v15 = OUTLINED_FUNCTION_14_2();
  v16(v15);

  v17 = (v14 + v4[11]);
  if (v17[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  if (*(v14 + v4[13] + 8))
  {
  }

  v18 = v14 + v4[14];
  __swift_destroy_boxed_opaque_existential_1(v18);

  if (*(v18 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v18 + 120);
  v19 = type metadata accessor for TipViewStyleConfiguration(0);
  v20 = v19[9];
  v21 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_17_1(v21))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v22 + 8))(v18 + v20, v6);
  }

  v23 = v18 + v19[11];
  v24 = type metadata accessor for TipViewEnvironment(0);
  if (!OUTLINED_FUNCTION_19_0(v24))
  {
    if (*(v23 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v23 + 24));
    }

    v25 = v19[7];
    v26 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_17_1(v26))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v27 + 8))(v23 + v25, v6);
    }

    __swift_destroy_boxed_opaque_existential_1((v23 + v19[8]));
    v28 = (v23 + v19[11]);
    if (v28[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    if (*(v23 + v19[12]))
    {
    }

    if (*(v23 + v19[13]))
    {
    }
  }

  v29 = v14 + v4[15];
  if (*(v29 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
  }

  v30 = v14 + v4[16];
  v31 = sub_1A3620D6C();
  if (!OUTLINED_FUNCTION_19_0(v31))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v32 + 8))(v30, v19);
  }

  v33 = v8 | v12;
  v34 = (((v8 + 48) & ~v8) + v36 + v12) & ~v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED78, &qword_1A3627F28);

  (*(v11 + 8))(v5 + v34, v38);

  return MEMORY[0x1EEE6BDD0](v5, v34 + v37, v33 | 7);
}

uint64_t sub_1A35C09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A3620E8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A35C0A14()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 24) = sub_1A35C0AB0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A35C0C3C;

  return MEMORY[0x1EEE495D0]();
}

uint64_t sub_1A35C0AB0()
{
  sub_1A362103C();
  v1 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = v1;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v2 = sub_1A3620FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE628, &unk_1A3625730);
  sub_1A3622AEC();

  v2(v4, 0);
  return v7;
}

void OUTLINED_FUNCTION_18_0()
{
  v2 = *(v1 - 88);
  *v0 = *(v1 - 96);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return type metadata accessor for TipViewEnvironment(0);
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1A35C0BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1ED823318;
  v5 = sub_1A362102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A35C0C3C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35C0D38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PopoverTip(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1A36213AC();
  OUTLINED_FUNCTION_14(v8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A35C1718;

  return sub_1A35C0E84(a1, v11, v12, v1 + v6, v1 + v10);
}

uint64_t sub_1A35C0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1A36213AC();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_1A3622E3C();
  v5[12] = sub_1A3622E2C();
  v8 = sub_1A3622DFC();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A35C0F78, v8, v7);
}

uint64_t sub_1A35C0F78()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(*(v0 + 80) + 16))(v1, *(v0 + 64), *(v0 + 72));
  sub_1A35A6350(v2, v0 + 16);
  sub_1A35A416C(v1, (v0 + 16), (v0 + 128));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1A35C1454;

  return sub_1A35C1048((v0 + 128));
}

uint64_t sub_1A35C1048(_BYTE *a1)
{
  *(v2 + 176) = v1;
  *(v2 + 258) = *a1;
  sub_1A3622E3C();
  *(v2 + 184) = sub_1A3622E2C();
  v4 = sub_1A3622DFC();
  *(v2 + 192) = v4;
  *(v2 + 200) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A35C10E8, v4, v3);
}

uint64_t sub_1A35C10E8()
{
  v1 = *(v0 + 258);
  v2 = *(v0 + 176);
  v3 = type metadata accessor for PopoverTip(0);
  *(v0 + 208) = v3;
  v4 = (v2 + *(v3 + 68));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = *v4;
  *(v0 + 24) = v6;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
  sub_1A362289C();
  if (*(v0 + 248) == 1)
  {
    if (v1 != 8)
    {
LABEL_13:

      *(v0 + 32) = v5;
      *(v0 + 40) = v6;
      sub_1A362289C();
      if ((*(v0 + 249) & 1) == 0)
      {
        OUTLINED_FUNCTION_16_3();
        v15 = *(v14 + 8);
        *(v0 + 48) = v16;
        *(v0 + 56) = v15;
        sub_1A362289C();
        if (*(v0 + 250) != 1)
        {
LABEL_18:
          OUTLINED_FUNCTION_5_1();

          return v21();
        }
      }

      v17 = *(v0 + 176);
      *(v0 + 64) = v5;
      *(v0 + 72) = v6;
      *(v0 + 251) = 0;
      sub_1A36228AC();
      v18 = (v17 + *(v3 + 72));
      v19 = *v18;
      v20 = *(v18 + 1);
      *(v0 + 80) = v19;
      *(v0 + 88) = v20;
      *(v0 + 252) = 0;
      sub_1A36228AC();
LABEL_16:
      sub_1A360D3E8();
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v1 != 8)
  {
    goto LABEL_13;
  }

  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  sub_1A362289C();
  if (*(v0 + 253) & 1) != 0 || (OUTLINED_FUNCTION_16_3(), *(v0 + 259) = v7, v9 = *(v8 + 8), *(v0 + 224) = v9, *(v0 + 112) = v7, *(v0 + 120) = v9, sub_1A362289C(), (*(v0 + 254)) || *(*(v0 + 176) + 40) == &type metadata for EmptyTip)
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((sub_1A3622DBC() & 1) == 0 || (sub_1A35CDC10(0, &unk_1ED81E078, 0x1E69DC668), v10 = sub_1A361D434(), (*(v0 + 232) = v10) == 0))
  {

    if (sub_1A3622DBC())
    {
      v22 = (*(v0 + 176) + *(*(v0 + 208) + 76));
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v0 + 144) = *v22;
      *(v0 + 152) = v24;
      sub_1A362289C();
      if ((*(v0 + 256) & 1) == 0)
      {
        sub_1A360B47C();
        *(v0 + 160) = v23;
        *(v0 + 168) = v24;
        *(v0 + 257) = v25 & 1;
        sub_1A36228AC();
      }
    }

    v26 = *(v0 + 224);
    *(v0 + 128) = *(v0 + 259);
    *(v0 + 136) = v26;
    *(v0 + 255) = 1;
    sub_1A36228AC();
    goto LABEL_16;
  }

  v11 = v10;
  sub_1A35CDC10(0, &unk_1EB0EE1A8, 0x1E69DCDE8);
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_1A360BF38;

  return sub_1A361E320(v11);
}

uint64_t sub_1A35C1454()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A35C1568, v5, v4);
}

uint64_t sub_1A35C1568()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35C15FC@<X0>(uint64_t *a2@<X8>)
{
  sub_1A362103C();
  sub_1A35C16B4();
  sub_1A362158C();

  sub_1A362156C();
  result = sub_1A362104C();
  *a2 = result;
  return result;
}

unint64_t sub_1A35C16B4()
{
  result = qword_1ED81E1E8;
  if (!qword_1ED81E1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE618, &qword_1A3625648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1E8);
  }

  return result;
}

uint64_t sub_1A35C1718()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t sub_1A35C17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v13 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = sub_1A35A63BC(&v11, a1);
  *(a1 + 40) = 1;
  return result;
}

void *sub_1A35C1920(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1A35BFA80();
  if (v4 == 9)
  {
    if (LOBYTE(v11[0]) == 9)
    {
      return result;
    }
  }

  else if (LOBYTE(v11[0]) != 9)
  {
    if (v4 == 8)
    {
      if (LOBYTE(v11[0]) == 8)
      {
        return result;
      }
    }

    else if (v4 == 7)
    {
      if (LOBYTE(v11[0]) == 7)
      {
        return result;
      }
    }

    else if (LOBYTE(v11[0]) - 9 <= 0xFFFFFFFD && v4 == LOBYTE(v11[0]))
    {
      return result;
    }
  }

  v6 = sub_1A35BFA80();
  if (LOBYTE(v11[0]) == 9)
  {
    v7 = v2 + *(a2 + 52);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v7 + 16);
      v11[0] = *v7;
      v11[1] = v8;
      v12 = v9 & 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90, &qword_1A3627F50);
      sub_1A362297C();
    }

    LOBYTE(v11[0]) = v4;
    v6 = sub_1A35C1ADC(v11, a2);
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1A3622A4C();
  sub_1A362193C();
}

uint64_t sub_1A35C1ADC(char *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEDB8, &qword_1A3628010);
  sub_1A36228AC();
}

uint64_t sub_1A35C1B74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for TipView(0, a3, a4, v8);
  v10 = a1 + *(v9 + 52);
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *(v10 + 16);
    v14[0] = *v10;
    v14[1] = v11;
    v15 = v12 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90, &qword_1A3627F50);
    sub_1A362297C();
  }

  LOBYTE(v14[0]) = a2;
  sub_1A35C1ADC(v14, v9);
}

uint64_t sub_1A35C1CCC()
{

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t type metadata accessor for MiniTipViewStyle(uint64_t a1)
{
  result = qword_1ED81E988;
  if (!qword_1ED81E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A35C1E20(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TipViewStyleConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1A35C1EC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A35C1EC0(uint64_t a1)
{
  if (!qword_1ED81E6F0)
  {
    type metadata accessor for TipViewEnvironment(255);
    v1 = sub_1A36217AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED81E6F0);
    }
  }
}

unint64_t sub_1A35C1F18()
{
  result = qword_1ED81E2F0;
  if (!qword_1ED81E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED80, &qword_1A3627F30);
    sub_1A35A9B30(&qword_1ED81EA88, &unk_1EB0EE2A0, &qword_1A3627EC0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2F0);
  }

  return result;
}

unint64_t sub_1A35C1FF0()
{
  result = qword_1ED81E168;
  if (!qword_1ED81E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1A8, &qword_1A36292E8);
    sub_1A35C207C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E168);
  }

  return result;
}

unint64_t sub_1A35C207C()
{
  result = qword_1ED81E190;
  if (!qword_1ED81E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C8, &qword_1A3629310);
    sub_1A35C2108();
    sub_1A35C216C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E190);
  }

  return result;
}

unint64_t sub_1A35C2108()
{
  result = qword_1ED81E6B0;
  if (!qword_1ED81E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C0, &qword_1A3629308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6B0);
  }

  return result;
}

unint64_t sub_1A35C216C()
{
  result = qword_1ED81E1F8;
  if (!qword_1ED81E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1F8);
  }

  return result;
}

unint64_t sub_1A35C21C0()
{
  result = qword_1ED81E6D0;
  if (!qword_1ED81E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1B8, &qword_1A36292F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1C0, &qword_1A3629308);
    sub_1A36216FC();
    sub_1A35C2108();
    sub_1A35C22A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6D0);
  }

  return result;
}

unint64_t sub_1A35C22A8()
{
  result = qword_1ED81E708;
  if (!qword_1ED81E708)
  {
    sub_1A36216FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E708);
  }

  return result;
}

uint64_t sub_1A35C2304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1A8, &qword_1A36292E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B0, &qword_1A36292F0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v37 - v6;
  v7 = type metadata accessor for AppearanceChangeMonitor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1A36216FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8, &qword_1A36292F8);
  MEMORY[0x1EEE9AC00](v43);
  if (*v2 == 1)
  {
    v40 = &v37 - v17;
    sub_1A35F9EF0(v16);
    sub_1A35C29AC(v2, v12);
    v39 = v3;
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = swift_allocObject();
    sub_1A35C2A10(v12, v19 + v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C0, &qword_1A3629308);
    sub_1A35C2108();
    v38 = v2;
    sub_1A35C22A8();
    sub_1A362265C();

    (*(v14 + 8))(v16, v13);
    v20 = v38;
    sub_1A35C29AC(v38, v12);
    v21 = swift_allocObject();
    sub_1A35C2A10(v12, v21 + v18);
    v22 = v20;
    v23 = v42;
    sub_1A35C29AC(v22, v42);
    v24 = swift_allocObject();
    sub_1A35C2A10(v23, v24 + v18);
    v25 = v40;
    v26 = &v40[*(v43 + 36)];
    *v26 = sub_1A35B5000;
    v26[1] = v21;
    v26[2] = sub_1A35FA968;
    v26[3] = v24;
    sub_1A35C28D0(v25, v46);
    swift_storeEnumTagMultiPayload();
    sub_1A35C21C0();
    sub_1A35C1FF0();
    sub_1A3621F1C();
    return sub_1A35C2938(v25);
  }

  else
  {
    sub_1A35C29AC(v2, v12);
    v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v29 = swift_allocObject();
    sub_1A35C2A10(v12, v29 + v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C0, &qword_1A3629308);
    (*(*(v30 - 8) + 16))(v5, v41, v30);
    v31 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1C8, &qword_1A3629310) + 36)];
    *v31 = sub_1A35FA6B0;
    v31[1] = v29;
    sub_1A35C29AC(v2, v12);
    v32 = swift_allocObject();
    sub_1A35C2A10(v12, v32 + v28);
    v33 = v2;
    v34 = v42;
    sub_1A35C29AC(v33, v42);
    v35 = swift_allocObject();
    sub_1A35C2A10(v34, v35 + v28);
    v36 = &v5[*(v3 + 36)];
    *v36 = sub_1A35C55D4;
    v36[1] = v32;
    v36[2] = sub_1A35FA718;
    v36[3] = v35;
    sub_1A35ABFF4(v5, v46, &qword_1EB0EF1A8, &qword_1A36292E8);
    swift_storeEnumTagMultiPayload();
    sub_1A35C21C0();
    sub_1A35C1FF0();
    sub_1A3621F1C();
    return sub_1A35FA734(v5);
  }
}

uint64_t sub_1A35C28D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8, &qword_1A36292F8);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1A35C2938(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF1B8, &qword_1A36292F8);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C29AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceChangeMonitor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35C2A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceChangeMonitor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A35C2A78(uint64_t a1)
{
  type metadata accessor for TipViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1A36033F8(319, &qword_1ED81E628, MEMORY[0x1E697E730]);
    if (v2 <= 0x3F)
    {
      sub_1A36033F8(319, &qword_1ED81E1D8, MEMORY[0x1E6980E88]);
      if (v3 <= 0x3F)
      {
        sub_1A36033F8(319, &qword_1ED81E6F0, type metadata accessor for TipViewEnvironment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A35C2B80(uint64_t a1)
{
  type metadata accessor for TipViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1A35FC1D8(319, &qword_1ED81E628, MEMORY[0x1E697E730]);
    if (v2 <= 0x3F)
    {
      sub_1A35FC1D8(319, &qword_1ED81E6F0, type metadata accessor for TipViewEnvironment);
      if (v3 <= 0x3F)
      {
        sub_1A35C52D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A35C2CC0(void *a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE3C8, &qword_1A3624AF0);
  sub_1A3621A6C();
  sub_1A3621A6C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  swift_getAssociatedConformanceWitness();
  sub_1A35B72D8();
  swift_getWitnessTable();
  sub_1A35BB130();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1A35C2EBC(uint64_t a1)
{
  type metadata accessor for TipViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1A35E7C90(319);
    if (v2 <= 0x3F)
    {
      sub_1A35C2F58();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A35C2F58()
{
  result = qword_1ED81E700;
  if (!qword_1ED81E700)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED81E700);
  }

  return result;
}

uint64_t sub_1A35C3020()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4F8, &qword_1A3629B60);
  sub_1A3608034();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for TipViewAnchors(uint64_t a1)
{
  result = qword_1ED81E480;
  if (!qword_1ED81E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35C30D4(uint64_t a1)
{
  result = sub_1A362165C();
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

void sub_1A35C31A8(uint64_t a1)
{
  sub_1A35C324C();
  if (v1 <= 0x3F)
  {
    sub_1A36230DC();
    if (v2 <= 0x3F)
    {
      sub_1A36230DC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A35C324C()
{
  if (!qword_1ED81EF18[0])
  {
    v0 = sub_1A36230DC();
    if (!v1)
    {
      atomic_store(v0, qword_1ED81EF18);
    }
  }
}

unint64_t sub_1A35C32C0()
{
  result = qword_1ED81E3C8;
  if (!qword_1ED81E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E3C8);
  }

  return result;
}

unint64_t sub_1A35C3318()
{
  result = qword_1ED81E3D0;
  if (!qword_1ED81E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E3D0);
  }

  return result;
}

unint64_t sub_1A35C338C()
{
  result = qword_1ED81E2B8;
  if (!qword_1ED81E2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEEC0, &qword_1A3628548);
    sub_1A35C3418();
    sub_1A35F06D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2B8);
  }

  return result;
}

unint64_t sub_1A35C3418()
{
  result = qword_1ED81E2C0;
  if (!qword_1ED81E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE88, &qword_1A36284F0);
    sub_1A35F05F0();
    sub_1A35C34A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2C0);
  }

  return result;
}

unint64_t sub_1A35C34A4()
{
  result = qword_1ED81E300;
  if (!qword_1ED81E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE70, &qword_1A36284D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEE98, &qword_1A3628500);
    type metadata accessor for CGRect(255);
    sub_1A35A9B30(&qword_1ED81E2A8, &qword_1EB0EEE98, &qword_1A3628500, MEMORY[0x1E697FDF8]);
    sub_1A35C35EC();
    swift_getOpaqueTypeConformance2();
    sub_1A35A9B30(&qword_1ED81E338, &qword_1EB0EEEA8, &qword_1A3628510, &unk_1A3628550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E300);
  }

  return result;
}

unint64_t sub_1A35C35EC()
{
  result = qword_1ED81E298;
  if (!qword_1ED81E298)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E298);
  }

  return result;
}

uint64_t Tips.Action.init(id:perform:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (!a2)
  {
    result = sub_1A3622BCC();
  }

  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  return result;
}

uint64_t sub_1A35C36B0()
{
  type metadata accessor for TipViewAnchors(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEF80, &unk_1A3628820);
  *(v0 + 16) = sub_1A3622B1C();
  result = sub_1A362164C();
  qword_1ED823308 = v0;
  return result;
}

uint64_t sub_1A35C3734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a1;
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE60, &qword_1A36284C8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_5(&v70 - v5);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE68, &qword_1A36284D0);
  OUTLINED_FUNCTION_3();
  v80 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_5(&v70 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE70, &qword_1A36284D8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_5(&v70 - v13);
  v14 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v77 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE78, &qword_1A36284E0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_5(&v70 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE80, &qword_1A36284E8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE88, &qword_1A36284F0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE90, &qword_1A36284F8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v70 - v31;
  if (*(v3 + 128) == 4)
  {
    sub_1A35ECF18(v3 + 64, &v95, &qword_1EB0EED38, &unk_1A3627EB0);
    v33 = *(&v96 + 1);
    v34 = v97;
    __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
    v35 = sub_1A35BDBDC(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(&v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE98, &qword_1A3628500);
    OUTLINED_FUNCTION_0_0();
    (*(v36 + 16))(v32, v84);
    v37 = &v32[*(v29 + 36)];
    *v37 = 4;
    *(v37 + 1) = v35;
    *(v37 + 2) = 0;
    sub_1A35ECF18(v32, v25, &qword_1EB0EEE90, &qword_1A36284F8);
    swift_storeEnumTagMultiPayload();
    sub_1A35F05F0();
    sub_1A35C34A4();
    sub_1A3621F1C();
    sub_1A35ECF18(v28, v85, &qword_1EB0EEE88, &qword_1A36284F0);
    swift_storeEnumTagMultiPayload();
    sub_1A35C3418();
    sub_1A35F06D4();
    OUTLINED_FUNCTION_2_15();
    sub_1A3621F1C();
    sub_1A35A6588(v28, &qword_1EB0EEE88, &qword_1A36284F0);
    v38 = v32;
    v39 = &qword_1EB0EEE90;
    v40 = &qword_1A36284F8;
    return sub_1A35A6588(v38, v39, v40);
  }

  v73 = v25;
  v74 = v29;
  v75 = v22;
  v76 = v28;
  v41 = v87;
  sub_1A35ECF18(v3, &v95, &qword_1EB0EEDB0, &unk_1A36283A0);
  if (!*(&v96 + 1))
  {
    sub_1A35A6588(&v95, &qword_1EB0EEDB0, &unk_1A36283A0);
    v63 = v41;
    v46 = v84;
LABEL_15:
    v64 = *(v3 + 57);
    v65 = v83;
    v66 = v83 + *(v63 + 36);
    sub_1A35ECF18(v3 + 64, &v95, &qword_1EB0EED38, &unk_1A3627EB0);
    sub_1A35C42FC(&v95, v98, v66 + 8);
    v67 = *(v3 + 112);
    v68 = *(v3 + 56) | (v64 << 8);
    *(v66 + 56) = *(v3 + 40);
    *(v66 + 72) = v68;
    *(v66 + 80) = v67;
    *v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE98, &qword_1A3628500);
    OUTLINED_FUNCTION_0_0();
    (*(v69 + 16))(v65, v46);
    sub_1A35ECF18(v65, v85, &qword_1EB0EEE60, &qword_1A36284C8);
    swift_storeEnumTagMultiPayload();
    sub_1A35C3418();
    sub_1A35F06D4();
    sub_1A3621F1C();
    v38 = v65;
    v39 = &qword_1EB0EEE60;
    v40 = &qword_1A36284C8;
    return sub_1A35A6588(v38, v39, v40);
  }

  v93[0] = v95;
  v93[1] = v96;
  v94 = v97;
  v42 = *(v3 + 192);

  if ((v42 & 1) == 0)
  {
    sub_1A362303C();
    v43 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v77 + 8))(v18, v14);
  }

  v44 = sub_1A35F2BB0();
  v45 = sub_1A35DD468(v93, v44);

  v46 = v84;
  if (!v45)
  {
    sub_1A35F07B8(v93);
    v63 = v41;
    goto LABEL_15;
  }

  v77 = v9;
  v83 = v19;
  v47 = *(v3 + 200);
  v48 = *(v3 + 208);
  v50 = *(v3 + 216);
  v49 = *(v3 + 224);
  v71 = *(v3 + 232);
  v70 = *(v3 + 240);
  *v92 = v47;
  *&v92[8] = v48;
  *&v92[16] = v50;
  *&v92[24] = v49;
  v92[32] = v71;
  *&v92[40] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEEB0, &qword_1A3628518);
  sub_1A36228BC();
  v51 = v79;
  v72 = v45;
  sub_1A35EEE04(v45, &v95);
  v99 = v95;
  sub_1A35F080C(&v99);

  if (*(v3 + 57) == 4)
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v3 + 57);
  }

  sub_1A35ECF18(v3 + 64, v92, &qword_1EB0EED38, &unk_1A3627EB0);
  sub_1A35C42FC(v92, v92[40], &v90);
  *v92 = v47;
  *&v92[8] = v48;
  *&v92[16] = v50;
  *&v92[24] = v49;
  v92[32] = v71;
  *&v92[40] = v70;
  sub_1A362289C();
  v53 = v89;
  MidX = 0.0;
  MidY = 0.0;
  if ((v89 & 1) == 0)
  {
    v100.origin.x = OUTLINED_FUNCTION_5_9();
    MidX = CGRectGetMidX(v100);
    v101.origin.x = OUTLINED_FUNCTION_5_9();
    MidY = CGRectGetMidY(v101);
  }

  v56 = *(v3 + 112);
  *&v92[7] = v90;
  *&v92[23] = v91[0];
  *&v92[32] = *(v91 + 9);
  v57 = v78;
  (*(v80 + 32))(v78, v51, v81);
  v58 = v57 + *(v77 + 36);
  *v58 = v52;
  v59 = *&v92[16];
  *(v58 + 1) = *v92;
  *(v58 + 17) = v59;
  *(v58 + 33) = *&v92[32];
  *(v58 + 56) = MidX;
  *(v58 + 64) = MidY;
  *(v58 + 72) = v53 | (v52 << 8);
  *(v58 + 80) = v56;
  v60 = v82;
  sub_1A35C4220(v57, v82);
  sub_1A35ECF18(v60, v73, &qword_1EB0EEE70, &qword_1A36284D8);
  swift_storeEnumTagMultiPayload();
  sub_1A35F05F0();
  sub_1A35C34A4();
  v61 = v76;
  sub_1A3621F1C();
  sub_1A35ECF18(v61, v85, &qword_1EB0EEE88, &qword_1A36284F0);
  swift_storeEnumTagMultiPayload();
  sub_1A35C3418();
  sub_1A35F06D4();
  OUTLINED_FUNCTION_2_15();
  sub_1A3621F1C();

  sub_1A35A6588(v61, &qword_1EB0EEE88, &qword_1A36284F0);
  sub_1A35A6588(v60, &qword_1EB0EEE70, &qword_1A36284D8);
  return sub_1A35F07B8(v93);
}

uint64_t sub_1A35C4220(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE70, &qword_1A36284D8);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35C428C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED38, &unk_1A3627EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35C42FC@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A35A63BC(a1, &v8);
  v9[24] = a2;
  sub_1A35C428C(&v8, &v6);
  sub_1A35A63BC(&v6, a3);
  *&v7[9] = *&v9[9];
  v6 = v8;
  *v7 = *v9;
  *(a3 + 40) = v9[24];
  return __swift_destroy_boxed_opaque_existential_1(&v6);
}

uint64_t sub_1A35C436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v4 = sub_1A36220CC();
  v5 = OUTLINED_FUNCTION_0_27(v4, v154);
  v141 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_8_5(v7);
  v8 = sub_1A3621F5C();
  v9 = OUTLINED_FUNCTION_0_27(v8, &__src[13]);
  v130 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_8_5(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF020, &qword_1A3628A28);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF028, &qword_1A3628A30);
  OUTLINED_FUNCTION_0_27(v16, __src);
  v122 = v17;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF030, &qword_1A3628A38);
  OUTLINED_FUNCTION_0_27(v20, &__src[4]);
  v124 = v21;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF038, &qword_1A3628A40);
  OUTLINED_FUNCTION_0_27(v24, &v155);
  v126 = v25;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF040, &qword_1A3628A48);
  OUTLINED_FUNCTION_0_27(v28, &__src[10]);
  v127 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF048, &qword_1A3628A50);
  OUTLINED_FUNCTION_0_27(v32, v152);
  v133 = v33;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF050, &qword_1A3628A58);
  OUTLINED_FUNCTION_0_27(v36, v153);
  v137 = v37;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v39);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF058, &qword_1A3628A60);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v41);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF060, &qword_1A3628A68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_5(v43);
  sub_1A36221FC();
  v149 = a1;
  v44 = v2;
  v150 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF068, &qword_1A3628A70);
  sub_1A35F4B34();
  sub_1A362170C();
  v118 = sub_1A3622A2C();
  v117 = v45;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = &v15[*(v12 + 36)];
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF080, &qword_1A3628A88) + 36);
  v48 = sub_1A362272C();
  v49 = sub_1A3621A7C();
  v50 = sub_1A362220C();
  v116 = v15;
  v51 = v50;
  v52 = sub_1A3622A0C();
  v119 = v12;
  v53 = v52;
  v55 = v54;
  v56 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF088, &qword_1A3628A90) + 36)];
  sub_1A35F4348(v2, v56);

  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF090, &qword_1A3628A98) + 36));
  *v57 = v53;
  v57[1] = v55;
  *v47 = v48;
  *(v47 + 1) = v49;
  v47[16] = v51;
  v58 = v117;
  *v46 = v118;
  v46[1] = v58;
  v59 = *(v2 + 80);
  *&v153[0] = *(v2 + 72);
  *(&v153[0] + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF098, &qword_1A3628AA0);
  sub_1A36228BC();
  OUTLINED_FUNCTION_7_9();
  swift_getKeyPath();
  v60 = v120;
  v61 = OUTLINED_FUNCTION_13_2();
  v62 = v116;
  sub_1A35F459C(v63, v64, v65, v61);

  sub_1A35C5114(v62);
  OUTLINED_FUNCTION_10_7(*(v44 + 64), *(v44 + 56));
  OUTLINED_FUNCTION_7_9();
  swift_getKeyPath();
  v66 = v123;
  v67 = OUTLINED_FUNCTION_13_2();
  sub_1A35F46B4(v68, v69, v70, v67);

  OUTLINED_FUNCTION_6_8();
  v71 = v121;
  v72(v60, v121);
  v73 = *(v44 + 104);
  v122 = v44;
  OUTLINED_FUNCTION_10_7(*(v44 + 112), v73);
  v74 = __src[0];
  v75 = __src[1];
  v76 = __src[2];
  v77 = swift_allocObject();
  v77[2] = v74;
  v77[3] = v75;
  v77[4] = v76;
  v78 = sub_1A35F4D78();
  v79 = sub_1A35F4CD0();

  __src[0] = v119;
  OUTLINED_FUNCTION_9_6();
  *(v80 - 256) = v78;
  OUTLINED_FUNCTION_2_18();
  swift_getOpaqueTypeConformance2();
  __src[0] = v71;
  OUTLINED_FUNCTION_9_6();
  *(v82 - 256) = v81;
  __src[3] = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v125;
  sub_1A36225CC();

  OUTLINED_FUNCTION_6_8();
  v85(v66, v84);
  v86 = v128;
  sub_1A3621F4C();
  LOBYTE(v78) = sub_1A36221FC();
  sub_1A36221EC();
  sub_1A36221EC();
  if (sub_1A36221EC() != v78)
  {
    sub_1A36221EC();
  }

  __src[0] = v84;
  OUTLINED_FUNCTION_9_6();
  *(v87 - 256) = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_18();
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v148;
  v90 = v146;
  sub_1A362257C();
  OUTLINED_FUNCTION_6_8();
  v91(v86, v134);
  OUTLINED_FUNCTION_6_8();
  v92(v90, v89);
  v93 = v122;
  OUTLINED_FUNCTION_11_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
  sub_1A362289C();
  v94 = v143;
  v95 = v139;
  if (LOBYTE(v153[0]) == 1)
  {
    sub_1A36220BC();
  }

  else
  {
    sub_1A36220AC();
  }

  v96 = v131;
  v97 = v129;
  sub_1A36221FC();
  __src[0] = v148;
  __src[1] = v88;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v147;
  sub_1A362251C();
  OUTLINED_FUNCTION_6_8();
  v100(v95, v144);
  OUTLINED_FUNCTION_6_8();
  v101(v99, v96);
  OUTLINED_FUNCTION_11_8();
  sub_1A362289C();
  if (LOBYTE(v153[0]) == 1)
  {
    v102 = sub_1A3622DDC() ^ 1;
  }

  else
  {
    v102 = 0;
  }

  LOBYTE(v153[0]) = v102 & 1;
  __src[0] = v96;
  __src[1] = v98;
  swift_getOpaqueTypeConformance2();
  v103 = v135;
  v104 = v136;
  sub_1A36225AC();
  OUTLINED_FUNCTION_6_8();
  v105(v97, v104);
  sub_1A35F4E5C(v93, __src);
  v106 = swift_allocObject();
  sub_1A35F4E94(__src, v106 + 16);
  sub_1A35FB31C(sub_1A35F4ECC, v106, v153);
  (*(v137 + 32))(v94, v103, v138);
  v107 = (v94 + *(v132 + 36));
  v108 = v153[1];
  *v107 = v153[0];
  v107[1] = v108;
  v107[2] = v153[2];
  sub_1A3622DCC();
  sub_1A35F3E6C();
  sub_1A3622A2C();
  sub_1A3621AFC();
  v109 = v142;
  sub_1A35F4F48(v94, v142, &qword_1EB0EF058, &qword_1A3628A60);
  memcpy((v109 + *(v140 + 36)), __src, 0x70uLL);
  v110 = *(v93 + 24);
  v111 = v109;
  v112 = v145;
  sub_1A35F4F48(v111, v145, &qword_1EB0EF060, &qword_1A3628A68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF0A8, &qword_1A3628B30);
  v114 = (v112 + *(result + 36));
  *v114 = 0;
  v114[1] = (v110 & 1) == 0;
  return result;
}

void sub_1A35C50E4(void *a1@<X8>)
{
  sub_1A362199C();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A35C5114(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF020, &qword_1A3628A28);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1A35C5180()
{
  MEMORY[0x1A58F45C0](v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

void sub_1A35C524C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A35C52D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A35C52D4()
{
  if (!qword_1ED81E600)
  {
    v0 = sub_1A36228CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81E600);
    }
  }
}

uint64_t sub_1A35C5344(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_11_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A35C53B0()
{
  result = qword_1ED81E2D0;
  if (!qword_1ED81E2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF310, &qword_1A36298F8);
    sub_1A35C543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2D0);
  }

  return result;
}

unint64_t sub_1A35C543C()
{
  result = qword_1ED81E2D8;
  if (!qword_1ED81E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF308, &qword_1A36298F0);
    sub_1A35C54C8();
    sub_1A35C5580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2D8);
  }

  return result;
}

unint64_t sub_1A35C54C8()
{
  result = qword_1ED81E2E8;
  if (!qword_1ED81E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF318, &unk_1A362A040);
    sub_1A36020D4();
    sub_1A3602E28(&qword_1ED81E6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E2E8);
  }

  return result;
}

unint64_t sub_1A35C5580()
{
  result = qword_1ED81E658;
  if (!qword_1ED81E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E658);
  }

  return result;
}

uint64_t sub_1A35C55F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_3_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35C5608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A35C5634(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_3_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A35C568C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C58C0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A35C5910()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v7))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1A35C59EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C5A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A3620C5C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1A35C5AB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A3620C5C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C5B78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  v8 = *(a3 + 32);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = *(a3 + 84);
  }

  else
  {
    v10 = *(a3 + 24);
    v11 = sub_1A362152C();
    if (*(*(v11 - 8) + 84) != a2)
    {
      v12 = OUTLINED_FUNCTION_4_3();
      v13 = a2;
      v8 = v10;
      goto LABEL_11;
    }

    v8 = v11;
    v9 = *(a3 + 88);
  }

  v12 = &a1[v9];
  v13 = a2;
LABEL_11:

  return __swift_getEnumTagSinglePayload(v12, v13, v8);
}

_BYTE *sub_1A35C5C7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
    return result;
  }

  v8 = *(a4 + 32);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = *(a4 + 84);
  }

  else
  {
    v10 = *(a4 + 24);
    v11 = sub_1A362152C();
    if (*(*(v11 - 8) + 84) != a3)
    {
      v12 = OUTLINED_FUNCTION_4_3();
      v13 = a2;
      v14 = a2;
      v8 = v10;
      goto LABEL_9;
    }

    v8 = v11;
    v9 = *(a4 + 88);
  }

  v12 = &v5[v9];
  v13 = a2;
  v14 = a2;
LABEL_9:

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
}

uint64_t sub_1A35C5E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9A8, &qword_1A36264C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A35C5F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9A8, &qword_1A36264C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

id sub_1A35C605C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGeometryFlipped];
  *a2 = result;
  return result;
}

uint64_t sub_1A35C60A4()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A35C60EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA00, &qword_1A3626680);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35C6154()
{
  type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  sub_1A35D9A44(*(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16));
  v8 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990, "B~");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A362178C();
    OUTLINED_FUNCTION_0_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1A35C62BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48, &qword_1A36266C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1A35C6310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48, &qword_1A36266C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

__n128 sub_1A35C63AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1A35C6484(uint64_t *a1)
{
  type metadata accessor for PopoverTip(255);
  sub_1A3621A6C();
  sub_1A35A8B38();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1A35C64D0(uint64_t *a1)
{
  type metadata accessor for PopoverTip(255);
  sub_1A3621A6C();
  sub_1A35A8B38();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1A35C6524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3620E9C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1A35C65D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A3620E9C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A35C66A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Tips.Rule(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1A3620E8C();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1A35C676C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Tips.Rule(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1A3620E8C();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1A35C685C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A35C689C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s15MaxDisplayCountVwet_0(uint64_t a1, int a2)
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

uint64_t _s15MaxDisplayCountVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_1A35C6B38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35BC84C();
  *a1 = result;
  return result;
}

uint64_t sub_1A35C6B68()
{
  sub_1A36221CC();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C6BF8()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1A35C6CEC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  v7 = (v6 + v5 + *(v3 + 80)) & ~*(v3 + 80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_10_4();
  v9 = v8;
  v11 = (v7 + v10 + *(v8 + 80)) & ~*(v8 + 80);
  OUTLINED_FUNCTION_10_4();
  v13(v0 + v12);
  (*(v4 + 8))(v0 + v7, v1);
  (*(v9 + 8))(v0 + v11, v2);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1A35C6ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipAnchorViewModifier(255, a1[1], a1[3], a4);
  sub_1A3621A6C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C6FEC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED40, &qword_1A3627EC8);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_1_16();
  sub_1A35A9B78(v1, &qword_1EB0EED40, &qword_1A3627EC8, v2);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C7074(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EED40, &qword_1A3627EC8);
  OUTLINED_FUNCTION_8_7();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_1_16();
  sub_1A35A9B78(v1, &qword_1EB0EED40, &qword_1A3627EC8, v2);
  OUTLINED_FUNCTION_0_23();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C712C()
{

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1A35C71B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1A35C7228(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_4_11();
  type metadata accessor for TipViewBackground.StyleModifier(v1, v2);
  swift_getWitnessTable();
  sub_1A3621FAC();
  sub_1A3621A6C();
  sub_1A3621F2C();
  sub_1A362209C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  sub_1A36217EC();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_4_11();
  sub_1A362208C();
  sub_1A3621A6C();
  sub_1A3621F2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipAnchorViewModifier(0, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_11_7();
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_9();
  v9 = OUTLINED_FUNCTION_10_6();
  v10(v9);

  return MEMORY[0x1EEE6BDD0](v4, ((v6 + 32) & ~v6) + v8, v6 | 7);
}

uint64_t sub_1A35C7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TipAnchorViewModifier(0, *(v4 + 32), *(v4 + 40), a4);
  OUTLINED_FUNCTION_11_7();
  v6 = *(v5 + 80);
  v8 = (*(v7 + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_9();
  v9 = OUTLINED_FUNCTION_10_6();
  v10(v9);

  return MEMORY[0x1EEE6BDD0](v4, v8 + 8, v6 | 7);
}

uint64_t sub_1A35C7704@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1A35F2BB0();
  *a2 = result;
  return result;
}

uint64_t sub_1A35C773C()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for TipAnchorViewModifier(v0, v1, v2, v3);
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1A3621FAC();
  type metadata accessor for CGRect(255);
  v4 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for TipAnchorViewModifier.AnchorKey(v4, v5, v6, v7);
  OUTLINED_FUNCTION_4_13();
  swift_getWitnessTable();
  sub_1A362204C();
  sub_1A3621A6C();
  sub_1A35F33CC();
  OUTLINED_FUNCTION_7_8();
  sub_1A36220DC();
  sub_1A3621A6C();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C78F8()
{
  OUTLINED_FUNCTION_30_1();
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_destroy_boxed_opaque_existential_1(v3);

  if (*(v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v3 + 120);
  v4 = *(v0 + 36);
  v5 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v3 + v4))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v7))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }

    v8 = *(v3 + 28);
    v9 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v8))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v10 + 8))(v0 + v8, v9);
    }

    v11 = OUTLINED_FUNCTION_12_5();
    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    OUTLINED_FUNCTION_15_1();
    if (v13)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v14)
    {
    }
  }

  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1A35C7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8, &qword_1A3624B28);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1A35C7B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D8, &qword_1A3624B28);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1A35C7C5C()
{
  v2 = sub_1A362127C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 80);
  v11 = (v6 + v8 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v4 + 8))(v1 + v6, v2);
  v14 = v1 + v11;
  __swift_destroy_boxed_opaque_existential_1((v1 + v11));

  if (*(v1 + v11 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v14 + 120);
  v15 = *(v0 + 36);
  v16 = sub_1A362190C();
  if (!OUTLINED_FUNCTION_20_0(v14 + v15))
  {
    OUTLINED_FUNCTION_4_14();
    (*(v17 + 8))(v14 + v15, v16);
  }

  v18 = OUTLINED_FUNCTION_18_1();
  if (!OUTLINED_FUNCTION_13_3(v18))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }

    v19 = *(v14 + 28);
    v20 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_20_0(v0 + v19))
    {
      OUTLINED_FUNCTION_4_14();
      (*(v21 + 8))(v0 + v19, v20);
    }

    v22 = OUTLINED_FUNCTION_12_5();
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    OUTLINED_FUNCTION_15_1();
    if (v24)
    {
    }

    OUTLINED_FUNCTION_15_1();
    if (v25)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | v10 | 7);
}

uint64_t sub_1A35C7E88()
{
  sub_1A362127C();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C7F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1A35C7FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF198, &unk_1A36291D0);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1A35C80DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF198, &unk_1A36291D0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C81B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A35C824C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SymbolAppearanceEffect(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1A3621FAC();
  sub_1A36221AC();
  sub_1A3621A6C();
  sub_1A3621A6C();
  swift_getWitnessTable();
  sub_1A35B29F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A35C8354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration(v6);
  OUTLINED_FUNCTION_1_1();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200, &qword_1A3629AD0);
  OUTLINED_FUNCTION_1_1();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = *(a3 + 20);
LABEL_7:
    v10 = v3 + v13;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
  OUTLINED_FUNCTION_1_1();
  if (*(v15 + 84) == a2)
  {
    v9 = v14;
    v13 = *(a3 + 24);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_9();
  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

void sub_1A35C849C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration(v8);
  OUTLINED_FUNCTION_1_1();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200, &qword_1A3629AD0);
    OUTLINED_FUNCTION_1_1();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
      OUTLINED_FUNCTION_1_1();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[7] + 8) = a2;
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1A35C85DC()
{
  type metadata accessor for MiniTipView(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  if (*(v1 + v4 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v7 + 120);
  v8 = type metadata accessor for TipViewStyleConfiguration(0);
  v9 = *(v8 + 36);
  v10 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v7 + *(v8 + 44);
  v13 = type metadata accessor for TipViewEnvironment(0);
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    if (*(v12 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v12 + 24));
    }

    v14 = v13[7];
    v15 = sub_1A36221CC();
    if (!OUTLINED_FUNCTION_14_5(v15))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v16 + 8))(v12 + v14, v9);
    }

    __swift_destroy_boxed_opaque_existential_1((v12 + v13[8]));
    v17 = (v12 + v13[11]);
    if (v17[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    OUTLINED_FUNCTION_13_4();
    if (v18)
    {
    }

    OUTLINED_FUNCTION_13_4();
    if (v19)
    {
    }
  }

  v20 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA70, &qword_1A3626750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3621A2C();
    OUTLINED_FUNCTION_0_0();
    (*(v21 + 8))(v7 + v20);
  }

  else
  {
  }

  v22 = v7 + *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_29;
  }

  if (*(v22 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v22 + 24));
  }

  v23 = v13[7];
  v24 = sub_1A36221CC();
  if (!OUTLINED_FUNCTION_14_5(v24))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v25 + 8))(v22 + v23, v9);
  }

  __swift_destroy_boxed_opaque_existential_1((v22 + v13[8]));
  v26 = (v22 + v13[11]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_13_4();
  if (v27)
  {
  }

  OUTLINED_FUNCTION_13_4();
  if (v28)
  {
LABEL_29:
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1A35C8914()
{
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  if (*(v1 + v4 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v7 + 120);
  v8 = *(v0 + 36);
  v9 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v7 + *(v0 + 44);
  v12 = type metadata accessor for TipViewEnvironment(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    if (*(v11 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v11 + 24));
    }

    v13 = v12[7];
    v14 = sub_1A36221CC();
    if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v14))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v15 + 8))(v11 + v13, v14);
    }

    __swift_destroy_boxed_opaque_existential_1((v11 + v12[8]));
    v16 = (v11 + v12[11]);
    if (v16[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    if (*(v11 + v12[12]))
    {
    }

    if (*(v11 + v12[13]))
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

double sub_1A35C8B0C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A35C8B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_10_9();
    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2F8, &qword_1A3629650);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1A35C8BB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2F8, &qword_1A3629650);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A35C8C48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_9();
    return (v7 + 1);
  }
}

void sub_1A35C8CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_8_12();
  type metadata accessor for TipViewStyleConfiguration(v8);
  OUTLINED_FUNCTION_1_1();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v9);
  }

  else
  {
    *(v4 + *(a4 + 24) + 24) = (a2 - 1);
  }
}

uint64_t sub_1A35C8D90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF220, &qword_1A36295B8);
  sub_1A3601A5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A35C8DFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35C8E3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C8E74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF408, &qword_1A36299C0);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_11_2();
  v4(v3);
  return a2;
}

uint64_t sub_1A35C8F30(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200, &qword_1A3629AD0);
    OUTLINED_FUNCTION_1_1();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF4E8, &qword_1A3629AD8);
      OUTLINED_FUNCTION_1_1();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1A35C906C()
{
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF200, &qword_1A3629AD0);
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF4E8, &qword_1A3629AD8);
      OUTLINED_FUNCTION_1_1();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
        v10 = v2[7];
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1A35C919C()
{
  v1 = type metadata accessor for TipViewStyleConfiguration(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  if (*(v0 + v3 + 48))
  {
  }

  MEMORY[0x1A58F45C0](v5 + 120);
  v6 = *(v1 + 36);
  v7 = sub_1A362190C();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  v8 = v5 + *(v1 + 44);
  v9 = type metadata accessor for TipViewEnvironment(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    if (*(v8 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((v8 + 24));
    }

    v10 = v9[7];
    v11 = sub_1A36221CC();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }

    __swift_destroy_boxed_opaque_existential_1((v8 + v9[8]));
    v12 = (v8 + v9[11]);
    if (v12[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    if (*(v8 + v9[12]))
    {
    }

    if (*(v8 + v9[13]))
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A35C93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TipViewStyleConfiguration(0);
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1A35C9490()
{
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_1_1();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24) + 24) = (v0 - 1);
  }
}

uint64_t sub_1A35C9524()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621BBC();
  *v0 = result;
  return result;
}

uint64_t sub_1A35C9640()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35C9678()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C5C();
  *v0 = result;
  return result;
}

uint64_t sub_1A35C96D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A362207C();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      sub_1A36221CC();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7D0, &qword_1A362A368);
        OUTLINED_FUNCTION_1_1();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[13];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
          v11 = a3[14];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1A35C9830(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1A362207C();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      sub_1A36221CC();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7D0, &qword_1A362A368);
        OUTLINED_FUNCTION_1_1();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[13];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF208, &unk_1A3629AE0);
          v11 = a4[14];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1A35C99B8()
{
  type metadata accessor for PopoverTip(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  if (*(v1 + v4 + 64))
  {
  }

  v8 = v0[8];
  sub_1A362207C();
  OUTLINED_FUNCTION_0_19();
  (*(v9 + 8))(v7 + v8);
  v10 = v0[10];
  v11 = sub_1A36221CC();
  OUTLINED_FUNCTION_0_0();
  v13 = *(v12 + 8);
  v13(v7 + v10, v11);
  if (*(v7 + v0[11] + 8))
  {
  }

  v14 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3621A4C();
    OUTLINED_FUNCTION_0_19();
    (*(v15 + 8))(v7 + v14);
  }

  else
  {
  }

  v16 = v7 + v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v26 = v1;
  v17 = v6;
  if (*(v16 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v16 + 24));
  }

  v18 = type metadata accessor for TipViewEnvironment(0);
  v19 = v18[7];
  if (!__swift_getEnumTagSinglePayload(v16 + v19, 1, v11))
  {
    v13(v16 + v19, v11);
  }

  __swift_destroy_boxed_opaque_existential_1((v16 + v18[8]));
  v20 = (v16 + v18[11]);
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  OUTLINED_FUNCTION_13_4();
  v6 = v17;
  if (v21)
  {
  }

  OUTLINED_FUNCTION_13_4();
  v1 = v26;
  v4 = (v3 + 16) & ~v3;
  if (v22)
  {
LABEL_18:
  }

  v23 = v7 + v0[15];
  if (*(v23 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
  }

  v24 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();
  __swift_destroy_boxed_opaque_existential_1((v1 + v24));

  return MEMORY[0x1EEE6BDD0](v1, v24 + 40, v3 | 7);
}

uint64_t sub_1A35C9CC0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE268, &qword_1A3624568);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_11_2();
  v4(v3);
  return a2;
}

uint64_t sub_1A35C9D44(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A36221CC();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      sub_1A3621A4C();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = type metadata accessor for TipViewEnvironment(0);
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_1A35C9E4C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A36221CC();
    OUTLINED_FUNCTION_1_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1A3621A4C();
      OUTLINED_FUNCTION_1_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = type metadata accessor for TipViewEnvironment(0);
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1A35CA0B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA26C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1A35CA2C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 popoverLayoutMargins];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_1A35CA304@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _overrideAllowsHitTestingOnBackgroundViews];
  *a2 = result;
  return result;
}

id sub_1A35CA34C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _prefersZoomTransitions];
  *a2 = result;
  return result;
}

uint64_t sub_1A35CA394()
{
  MEMORY[0x1A58F45C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A35CA3CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA404()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.backgroundColor.getter();
  *v0 = result;
  return result;
}

void sub_1A35CA480()
{
  OUTLINED_FUNCTION_19_3();
  *v0 = TipUIPopoverViewController.imageSize.getter();
  *(v0 + 8) = v1;
}

uint64_t sub_1A35CA524()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.presentationDelegate.getter();
  *v0 = result;
  return result;
}

id sub_1A35CA550()
{
  OUTLINED_FUNCTION_19_3();
  result = TipUIPopoverViewController.sourceItem.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1A35CA58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA754()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A35CA7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35CA7CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A35CA824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A35CA908()
{
  result = qword_1ED81D7C8;
  if (!qword_1ED81D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE248, &qword_1A3624550);
    sub_1A35CA994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7C8);
  }

  return result;
}

unint64_t sub_1A35CA994()
{
  result = qword_1ED81D800;
  if (!qword_1ED81D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE268, &qword_1A3624568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE270, &qword_1A3624570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE278, &qword_1A3624578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE280, &qword_1A3624580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE288, &qword_1A3624588);
    sub_1A35AFC60();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D800);
  }

  return result;
}

uint64_t sub_1A35CAB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35E3D84();
  *a1 = result;
  return result;
}

uint64_t sub_1A35CAB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CABAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CABB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35FBF34(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CABE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CAC14(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CAC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A35CAC58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A35CAC58(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1A35CAC7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A35CACB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A35CACB0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1A35CACF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CAD20(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CADAC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1A35CB480(a2);
  *a1 = result;
  return result;
}

void *sub_1A35CADD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A35CADF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A35CA824(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A35CAE44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35CAE64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1A35CAEA0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A3622B5C();

  *a2 = v3;
  return result;
}

uint64_t sub_1A35CAEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A35CAF14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A35CAF18(uint64_t a1)
{
  v2 = sub_1A35CB064(&qword_1EB0EE2E8, type metadata accessor for Name, &unk_1A3624790);
  v3 = sub_1A35CB064(&unk_1EB0EE2F0, type metadata accessor for Name, &unk_1A3624730);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A35CB064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A35CB238(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A3622B8C();
  v4 = v3;
  if (v2 == sub_1A3622B8C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A362345C();
  }

  return v7 & 1;
}

uint64_t sub_1A35CB2BC(uint64_t a1, uint64_t a2)
{
  sub_1A3622B8C();
  sub_1A3622BFC();
}

uint64_t sub_1A35CB310(uint64_t a1, uint64_t a2)
{
  sub_1A3622B8C();
  sub_1A36234CC();
  sub_1A3622BFC();
  v2 = sub_1A36234EC();

  return v2;
}

uint64_t sub_1A35CB388(uint64_t a1, id *a2)
{
  result = sub_1A3622B6C();
  *a2 = 0;
  return result;
}

uint64_t sub_1A35CB400(uint64_t a1, id *a2)
{
  v3 = sub_1A3622B7C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A35CB480(uint64_t a1)
{
  sub_1A3622B8C();
  v1 = sub_1A3622B5C();

  return v1;
}

uint64_t sub_1A35CB4B8(uint64_t a1)
{
  v1 = sub_1A3622B8C();
  v2 = MEMORY[0x1A58F32B0](v1);

  return v2;
}

uint64_t sub_1A35CB504(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v6 + 16))(&v19 - v11, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v13 = *(v6 + 8);
    v13(a1, a2);
    v14 = v19;
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v8, a1, a2);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v15((v17 + v16), v8, a2);
    v13 = *(v6 + 8);
    v14 = a2;
  }

  v13(v12, a2);
  return v14;
}

uint64_t sub_1A35CB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TipViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnyTipViewStyle.WrapperView(0, a3, a4, v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  sub_1A35B63C8(a1, v13);
  (*(v8 + 16))(v10, a2, a3);
  sub_1A35CB8A8(v13, v10, a3, a4, v17);
  swift_getWitnessTable();
  return sub_1A362295C();
}

uint64_t sub_1A35CB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for AnyTipViewStyle.WrapperView(0, a3, a4, a4);
  v10 = *(v9 + 40);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  swift_storeEnumTagMultiPayload();
  sub_1A35CC64C(a1, a5 + *(v9 + 36), type metadata accessor for TipViewStyleConfiguration);
  v11 = *(*(a3 - 8) + 32);

  return v11(a5, a2, a3);
}

uint64_t sub_1A35CB994@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A35CBA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A3621CEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1A35ABFF4(v2 + *(a1 + 40), &v14 - v10, &qword_1EB0EE3C0, &qword_1A3626780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A35CC64C(v11, a2, type metadata accessor for TipViewEnvironment);
  }

  sub_1A362303C();
  v13 = sub_1A36221DC();
  sub_1A362166C();

  sub_1A3621CDC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A35CBBF0(uint64_t a1)
{
  v2 = sub_1A362190C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3621CAC();
}

uint64_t sub_1A35CBCB8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v45 = *(a3 + 16);
  v5 = *(v45 - 8);
  v6 = *(v5 + 84);
  v44 = sub_1A362190C();
  v7 = *(v44 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A36221CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  v20 = *(v11 + 80);
  v21 = (v20 + 65) & ~v20;
  v22 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v22;
  }

  v23 = ((((((v22 + v21 + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = ((((((v22 + v21 + 95) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = *(v7 + 80);
  v26 = v20 | 7;
  v27 = v20 | 7 | v25;
  v28 = v27 + *(v5 + 64);
  v29 = (v20 | 7) + v19 + 5;
  if (a2 > v18)
  {
    v30 = ((((v28 & ~v27) + v26 + ((v29 + ((v25 + 128) & ~v25)) & ~v26) + v23) & ~v26) + v24) | 1;
    v31 = 8 * v30;
    if (v30 > 3)
    {
      goto LABEL_29;
    }

    v33 = ((a2 - v18 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v33))
    {
      v32 = *&a1[v30];
      if (!v32)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v33 > 0xFF)
    {
      v32 = *&a1[v30];
      if (!*&a1[v30])
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v33 >= 2)
    {
LABEL_29:
      v32 = a1[v30];
      if (!a1[v30])
      {
        goto LABEL_41;
      }

LABEL_36:
      v34 = (v32 - 1) << v31;
      if (v30 <= 3)
      {
        v35 = *a1;
      }

      else
      {
        v34 = 0;
        v35 = *a1;
      }

      return v18 + (v35 | v34) + 1;
    }
  }

LABEL_41:
  if (v6 >= v17)
  {

    return __swift_getEnumTagSinglePayload(a1, v6, v45);
  }

  else
  {
    if ((v16 & 0x80000000) == 0)
    {
      v37 = *((&a1[v28] & ~v27) + 0x18);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v38 = (v25 + (((((((((&a1[v28] & ~v27) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v25;
    if (v9 == v17)
    {
      if (v8 >= 2)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, v8, v44);
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

    v39 = (v20 + 65 + ((v29 + v38) & ~v26)) & ~v20;
    if (v13 < 0x7FFFFFFF)
    {
      v43 = *(((v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v43 >= 0xFFFFFFFF)
      {
        LODWORD(v43) = -1;
      }

      v41 = v43 + 1;
    }

    else
    {
      v40 = __swift_getEnumTagSinglePayload(v39, v12, v10);
      v41 = v40 - 1;
      if (v40 < 2)
      {
        v41 = 0;
      }
    }

    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1A35CC084(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v55 = *(a4 + 16);
  v5 = *(v55 - 8);
  v6 = *(v5 + 84);
  v54 = sub_1A362190C();
  v7 = *(v54 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A36221CC();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (v9 > v15 - 1)
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v7 + 64);
  if (!v8)
  {
    ++v19;
  }

  v20 = *(v12 + 80);
  v21 = v20 + 65;
  v22 = (v20 + 65) & ~v20;
  v23 = *(v7 + 80);
  v24 = v20 | 7;
  v25 = v20 | 7 | v23;
  v26 = v25 + *(v5 + 64);
  v27 = (v20 | 7) + v19 + 5;
  v28 = (v27 + ((v23 + 128) & ~v23)) & ~(v20 | 7);
  if (v13)
  {
    v29 = *(*(v10 - 8) + 64);
  }

  else
  {
    v29 = *(*(v10 - 8) + 64) + 1;
  }

  v30 = v22 + v29;
  v31 = v22 + v29 + 95;
  v32 = (((((v31 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v33 = (v26 & ~v25) + v24 + v28 + v32;
  if (v32 <= 8)
  {
    v32 = 8;
  }

  v34 = ((v33 & ~v24) + v32) | 1;
  v35 = 8 * v34;
  v36 = a3 >= v18;
  v37 = a3 - v18;
  if (v37 != 0 && v36)
  {
    if (v34 <= 3)
    {
      v38 = ((v37 + ~(-1 << v35)) >> v35) + 1;
      if (HIWORD(v38))
      {
        v11 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v11 = v39;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v18 < a2)
  {
    v40 = ~v18 + a2;
    if (v34 <= 3)
    {
      v41 = (v40 >> v35) + 1;
      bzero(a1, v34);
      *a1 = v40 & ~(-1 << v35);
    }

    else
    {
      bzero(a1, v34);
      *a1 = v40;
      v41 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v34] = v41;
        break;
      case 2:
        *&a1[v34] = v41;
        break;
      case 3:
        goto LABEL_88;
      case 4:
        *&a1[v34] = v41;
        break;
      default:
        return;
    }

    return;
  }

  v42 = ~v20;
  v43 = ~v25;
  v44 = a1;
  switch(v11)
  {
    case 1:
      a1[v34] = 0;
      if (a2)
      {
        goto LABEL_47;
      }

      return;
    case 2:
      *&a1[v34] = 0;
      if (a2)
      {
        goto LABEL_47;
      }

      return;
    case 3:
LABEL_88:
      __break(1u);
      return;
    case 4:
      *&a1[v34] = 0;
      goto LABEL_46;
    default:
LABEL_46:
      if (!a2)
      {
        return;
      }

LABEL_47:
      if (v6 >= v17)
      {
        v49 = a2;
        v13 = v6;
        v10 = v55;
LABEL_54:

        __swift_storeEnumTagSinglePayload(v44, v49, v13, v10);
        return;
      }

      v45 = (&a1[v26] & v43);
      if (v17 < a2)
      {
        v46 = (((((v31 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v28;
        v47 = (v46 + 16);
        if (v46 == -16)
        {
          return;
        }

        v48 = ~v17 + a2;
LABEL_51:
        bzero(v45, v47);
LABEL_52:
        *v45 = v48;
        return;
      }

      if ((v16 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *((&a1[v26] & v43) + 8) = 0u;
          *((&a1[v26] & v43) + 0x18) = 0u;
          *v45 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *((&a1[v26] & v43) + 0x18) = a2 - 1;
        }

        return;
      }

      v44 = ((v23 + ((((((((v45 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v23);
      if (v9 == v17)
      {
        v49 = a2 + 1;
        v13 = v8;
        v10 = v54;
        goto LABEL_54;
      }

      v45 = (&v44[v27] & ~v24);
      v48 = a2 - v15;
      if (a2 >= v15)
      {
        v50 = (((((v30 + 95) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
        v47 = v50 + 16;
        if (v50 == -16)
        {
          return;
        }

        goto LABEL_51;
      }

      v45 = (&v45[v21] & v42);
      if (v14 < 0x7FFFFFFF)
      {
        v51 = &v45[v29 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *(v51 + 24) = 0u;
          *(v51 + 8) = 0u;
          *(v51 + 40) = 0;
          *v51 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v51 + 24) = a2;
        }

        return;
      }

      if (a2 < v14)
      {
        v49 = a2 + 2;
        v44 = v45;
        goto LABEL_54;
      }

      if (v29 <= 3)
      {
        v52 = ~(-1 << (8 * v29));
      }

      else
      {
        v52 = -1;
      }

      if (v29)
      {
        v48 = v52 & (a2 - v14);
        if (v29 <= 3)
        {
          v53 = v29;
        }

        else
        {
          v53 = 4;
        }

        bzero(v45, v29);
        switch(v53)
        {
          case 2:
            *v45 = v48;
            break;
          case 3:
            *v45 = v48;
            v45[2] = BYTE2(v48);
            break;
          case 4:
            goto LABEL_52;
          default:
            *v45 = v48;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1A35CC64C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A35CC6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3D0, &unk_1A3628EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35CC71C()
{
  sub_1A3622E3C();
  result = sub_1A360F5E8(sub_1A361DAC4, 0, "TipKit/UIApplication+TipKit (iOS tvOS visionOS watchOS).swift", 61, 2, 63);
  byte_1EB0F2C68 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A35CC7C8()
{
  result = qword_1EB0EE3E8;
  if (!qword_1EB0EE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE3E8);
  }

  return result;
}

double sub_1A35CC81C(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  v10 = 0.0;
  if (!sub_1A35CC9EC())
  {
    sub_1A362195C();
    OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
    sub_1A3622FEC();
    sub_1A362300C();
    if (sub_1A3622FFC() == 2)
    {
      v11 = sub_1A35D8BC4();
      v12 = v11 + v11 + a5;
      if (a2)
      {
        if (v12 <= 0.0)
        {
LABEL_5:
          v13 = sub_1A3621AEC();
          MEMORY[0x1EEE9AC00](v13);
          OUTLINED_FUNCTION_2(&qword_1ED81DA40);
          sub_1A35CD8C0();
          sub_1A3622C6C();
          return v10;
        }
      }

      else
      {
        v10 = *&a1;
        if (v12 <= *&a1)
        {
          goto LABEL_5;
        }
      }
    }

    if (a2)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *&a1;
    }

    sub_1A35D8BDC(a6);
  }

  return v10;
}

BOOL sub_1A35CC9EC()
{
  sub_1A362195C();
  sub_1A35CD718(&qword_1ED81DA38, MEMORY[0x1E697E3D8]);
  sub_1A3622FEC();
  sub_1A362300C();
  return v2 == v1;
}

void sub_1A35CCA74(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (!sub_1A35CC9EC())
  {
    sub_1A362195C();
    OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
    sub_1A3622FEC();
    sub_1A362300C();
    if (sub_1A3622FFC() == 2 && (v9 = sub_1A35D8BC4(), v9 + v9 + a5 <= a3))
    {
      OUTLINED_FUNCTION_5_2();
      sub_1A35CCB64();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_5_2();
      sub_1A35CCD44(v10, v11, v12, v13, v14, v15, a6);
    }
  }
}

uint64_t sub_1A35CCB64()
{
  v0 = sub_1A36218CC();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A362196C();
  v13.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinX(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinY(v14);
  v15.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v15);
  sub_1A35D8CE8();
  sub_1A3622A6C();
  v12[24] = 0;
  v12[16] = 0;
  OUTLINED_FUNCTION_4_0(v6, v7);
  v8 = *(v2 + 8);
  v8(v5, v0);
  sub_1A362196C();
  v16.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinX(v16);
  v17.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v17);
  v18.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetMinY(v18);
  v19.origin.x = OUTLINED_FUNCTION_0_1();
  CGRectGetWidth(v19);
  sub_1A35D8CE8();
  sub_1A3622A6C();
  v12[8] = 0;
  v12[0] = 0;
  OUTLINED_FUNCTION_4_0(v9, v10);
  return (v8)(v5, v0);
}

void sub_1A35CCD44(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v78 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3F0, &qword_1A3624C30);
  MEMORY[0x1EEE9AC00](v84);
  v12 = &v64 - v11;
  v13 = sub_1A36218CC();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v76 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3F8, &qword_1A3624C38);
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_6_0();
  v81 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v83 = (&v64 - v25);
  v26 = sub_1A362195C();
  OUTLINED_FUNCTION_3();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE400, &qword_1A3624C40);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v64 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE408, &qword_1A3624C48);
  v36 = v35 - 8;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = *(v28 + 16);
  v77 = a1;
  v39 = a1;
  v41 = &v64 - v40;
  v38(v34, v39, v26, v37);
  (*(v28 + 32))(v31, v34, v26);
  v42 = OUTLINED_FUNCTION_2(&qword_1ED81DA40);
  v75 = v31;
  v73 = v42;
  sub_1A3622C8C();
  v64 = *(v36 + 44);
  *&v41[v64] = 0;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE410, &qword_1A3624C50) + 36);
  v44 = OUTLINED_FUNCTION_1_4(&qword_1ED81DA38);
  v79 = 0;
  v65 = (v15 + 16);
  v80 = (v15 + 32);
  v70 = a4;
  v69 = a5;
  v68 = (v28 + 8);
  v45 = v13;
  v67 = (v15 + 8);
  v71 = v44;
  v74 = v41;
  v72 = v43;
  while (1)
  {
    sub_1A362300C();
    if (*&v41[v43] == v86[0])
    {
      v46 = 1;
    }

    else
    {
      v47 = sub_1A362302C();
      v48 = v66;
      (*v65)(v66);
      v47(v86, 0);
      sub_1A362301C();
      v49 = *(v84 + 48);
      v51 = v79;
      v50 = v80;
      *v12 = v79;
      (*v50)(&v12[v49], v48, v45);
      if (__OFADD__(v51, 1))
      {
        goto LABEL_11;
      }

      v79 = v51 + 1;
      *&v41[v64] = v51 + 1;
      sub_1A35CD75C(v12, v81, &qword_1EB0EE3F0, &qword_1A3624C30);
      v46 = 0;
    }

    v52 = v81;
    v53 = v84;
    __swift_storeEnumTagSinglePayload(v81, v46, 1, v84);
    v54 = v52;
    v55 = v83;
    sub_1A35CD75C(v54, v83, &qword_1EB0EE3F8, &qword_1A3624C38);
    if (__swift_getEnumTagSinglePayload(v55, 1, v53) == 1)
    {
      sub_1A35CD7C4(v41);
      return;
    }

    v56 = v12;
    v57 = *v83;
    (*v80)(v82, v83 + *(v84 + 48), v45);
    v87.origin.x = a2;
    v87.origin.y = v78;
    v87.size.width = a4;
    v87.size.height = a5;
    CGRectGetMinX(v87);
    v88.origin.x = OUTLINED_FUNCTION_0_1();
    CGRectGetMinY(v88);
    if (v57 < 0)
    {
      break;
    }

    v58 = v75;
    v59 = sub_1A362197C();
    MEMORY[0x1EEE9AC00](v59);
    *(&v64 - 4) = a4;
    *(&v64 - 24) = 0;
    *(&v64 - 2) = a5;
    *(&v64 - 8) = 0;
    sub_1A35CD844();
    sub_1A3622C7C();
    sub_1A3622FEC();
    sub_1A362300C();
    v85 = sub_1A3622FFC();
    sub_1A35B220C();
    sub_1A36232BC();
    (*v68)(v58, v26);
    v60 = v76;
    sub_1A362196C();
    LOBYTE(v86[0]) = 0;
    LOBYTE(v85) = 0;
    sub_1A36218AC();
    v61 = *v67;
    v62 = v60;
    v43 = v72;
    v63 = v82;
    (*v67)(v62, v45);
    sub_1A3622A6C();
    LOBYTE(v86[0]) = 0;
    LOBYTE(v85) = 0;
    sub_1A36218BC();
    v61(v63, v45);
    v41 = v74;
    v12 = v56;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t (*sub_1A35CD600(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1A36216BC();
  return sub_1A35CD674;
}

void sub_1A35CD674(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1A35CD6C4()
{
  result = qword_1ED81DA58;
  if (!qword_1ED81DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA58);
  }

  return result;
}

uint64_t sub_1A35CD718(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A362195C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A35CD75C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A35CD7C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE408, &qword_1A3624C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A35CD844()
{
  result = qword_1ED81DCE0;
  if (!qword_1ED81DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DCE0);
  }

  return result;
}

unint64_t sub_1A35CD8C0()
{
  result = qword_1EB0EE208;
  if (!qword_1EB0EE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE208);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1A35CD948(double a1, double a2)
{
  [v2 bounds];
  if (v6 != 0.0 || v5 != 0.0)
  {
    v7 = sub_1A35CDC10(0, &qword_1EB0EE420, 0x1E6979518);
    v8 = v2;

    sub_1A35CDD9C(a1, a2, v7, v8);
  }
}

id sub_1A35CD9E4(void *a1, double a2, double a3)
{
  [a1 setPosition_];
  [a1 bounds];
  v7 = a2 / v6;
  [a1 bounds];
  v9 = a3 / v8;
  if (a3 / v8 >= v7)
  {
    v9 = v7;
  }

  CATransform3DMakeScale(&v11, v9, v9, 1.0);
  return [a1 setTransform_];
}

uint64_t sub_1A35CDA84()
{
  v1 = [v0 states];
  if (!v1 || (v2 = v1, v3 = sub_1A3622CCC(), v2, v4 = sub_1A35CDB04(v3), , !v4))
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A35CDB04(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A362325C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1A35AB75C(v3, v5);
    sub_1A35CDC10(0, &qword_1EB0EE418, 0x1E69794B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A362323C();
    sub_1A362326C();
    sub_1A362327C();
    sub_1A362324C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A35CDC10(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1A35CDC50(void *a1, id a2, uint64_t (*a3)(id), double a4, double a5)
{
  [a2 setContentsGravity_];
  [a2 setMasksToBounds_];
  [a2 setFillMode_];
  [a1 bounds];
  if (v11 != 0.0 || v10 != 0.0)
  {
    [a1 bounds];
    a4 = v12;
    a5 = v13;
  }

  sub_1A35CD948(a4, a5);
  [a1 addSublayer_];
  result = [a1 setNeedsDisplay];
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_1A35CDD5C(id result, uint64_t a2, char a3, double a4)
{
  if (result)
  {
    if (a3)
    {
      LODWORD(a4) = 1.0;
      return [v4 setState:result ofLayer:a2 transitionSpeed:a4];
    }

    else
    {
      return [v4 setState:result ofLayer:{a2, a4}];
    }
  }

  return result;
}

void sub_1A35CDD9C(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  if ([v6 disableActions])
  {
    sub_1A35CD9E4(a4, a1, a2);
  }

  else
  {
    [v6 setDisableActions_];
    sub_1A35CD9E4(a4, a1, a2);
    [v6 setDisableActions_];
  }
}

void sub_1A35CDE50(double a1, double a2, double a3, double a4)
{
  MinX = CGRectGetMinX(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_0_2();
  if (MinX > CGRectGetMaxX(v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v7.origin.x = OUTLINED_FUNCTION_0_2();
  MinY = CGRectGetMinY(v7);
  v8.origin.x = OUTLINED_FUNCTION_0_2();
  if (MinY > CGRectGetMaxY(v8))
  {
LABEL_5:
    __break(1u);
  }
}

double sub_1A35CDF10()
{
  CapHeight = CTFontGetCapHeight(v0);
  v2 = CapHeight - sub_1A35CDF4C();
  return v2 + CTFontGetDescent(v0);
}

uint64_t sub_1A35CDF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE428, &qword_1A3624C58);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v19 - v1;
  v3 = sub_1A36212EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = sub_1A36212AC();
  v12 = v11;
  if (v11)
  {
    v13 = v10;
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    sub_1A36212DC();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {

      sub_1A35CE44C(v2);
      return 0;
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      (*(v4 + 16))(v6, v9, v3);
      v14 = (*(v4 + 88))(v6, v3);
      if (v14 == *MEMORY[0x1E69DA2A8])
      {

        v15 = sub_1A362269C();
      }

      else if (v14 == *MEMORY[0x1E69DA2B0])
      {

        v15 = sub_1A36227BC();
      }

      else if (v14 == *MEMORY[0x1E69DA248])
      {

        v15 = sub_1A36226CC();
      }

      else if (v14 == *MEMORY[0x1E69DA278])
      {

        v15 = sub_1A362273C();
      }

      else if (v14 == *MEMORY[0x1E69DA250])
      {

        v15 = sub_1A36226DC();
      }

      else if (v14 == *MEMORY[0x1E69DA258])
      {

        v15 = sub_1A36226EC();
      }

      else if (v14 == *MEMORY[0x1E69DA280])
      {

        v15 = sub_1A362275C();
      }

      else if (v14 == *MEMORY[0x1E69DA288])
      {

        v15 = sub_1A362276C();
      }

      else if (v14 == *MEMORY[0x1E69DA260])
      {

        v15 = sub_1A36226FC();
      }

      else if (v14 == *MEMORY[0x1E69DA290])
      {

        v15 = sub_1A362277C();
      }

      else if (v14 == *MEMORY[0x1E69DA268])
      {

        v15 = sub_1A362270C();
      }

      else if (v14 == *MEMORY[0x1E69DA298])
      {

        v15 = sub_1A362278C();
      }

      else if (v14 == *MEMORY[0x1E69DA2B8])
      {

        v15 = sub_1A36226BC();
      }

      else if (v14 == *MEMORY[0x1E69DA270])
      {

        v15 = sub_1A362271C();
      }

      else
      {
        if (v14 != *MEMORY[0x1E69DA2A0])
        {
          MEMORY[0x1EEE9AC00](v14);
          v19[-2] = v13;
          v19[-1] = v12;
          v17 = sub_1A36215DC();
          sub_1A36215AC();

          v17(v19, 0);
          v12 = sub_1A36227AC();
          v18 = *(v4 + 8);
          v18(v9, v3);
          v18(v6, v3);
          return v12;
        }

        v15 = sub_1A362279C();
      }

      v12 = v15;
      (*(v4 + 8))(v9, v3);
    }
  }

  return v12;
}

uint64_t sub_1A35CE44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE428, &qword_1A3624C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35CE4B4(uint64_t a1, uint64_t a2)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000001FLL, 0x80000001A3638D70);
  MEMORY[0x1A58F3290](a1, a2);
  MEMORY[0x1A58F3290](0xD000000000000039, 0x80000001A3638D90);
  return 0;
}

uint64_t Tips.Event.Donation.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3620D6C();
  OUTLINED_FUNCTION_0_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_1A35CE5C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a1;
  v36 = a6;
  v34 = sub_1A36230DC();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = (v18 - v17);
  v20 = type metadata accessor for Tips.Event.Donation(0, a3, a4, a5);
  OUTLINED_FUNCTION_3();
  v22 = v21;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C0, &qword_1A36291B0);
  sub_1A3622B0C();

  if (__swift_getEnumTagSinglePayload(v13, 1, a3) == 1)
  {
    sub_1A3620D6C();
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 8))(v35);
    (*(v10 + 8))(v13, v34);
    v27 = 1;
    v28 = v36;
  }

  else
  {
    v29 = *(v15 + 32);
    v29(v19, v13, a3);
    sub_1A3620D6C();
    OUTLINED_FUNCTION_0_0();
    (*(v30 + 32))(v25, v35);
    v29(&v25[*(v20 + 44)], v19, a3);
    v31 = v36;
    (*(v22 + 32))(v36, v25, v20);
    v27 = 0;
    v28 = v31;
  }

  return __swift_storeEnumTagSinglePayload(v28, v27, 1, v20);
}

uint64_t sub_1A35CE8B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A362345C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEC0000006F666E49)
  {

    return 1;
  }

  else
  {
    v7 = sub_1A362345C();

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

uint64_t sub_1A35CE9C4(char a1)
{
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](a1 & 1);
  return sub_1A36234EC();
}

uint64_t sub_1A35CEA18(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616E6F64;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1A35CEA90()
{
  sub_1A36234CC();
  sub_1A35CE99C(v2, *v0);
  return sub_1A36234EC();
}

uint64_t sub_1A35CEAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35CE8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A35CEB50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CE984();
  *a1 = result;
  return result;
}

uint64_t sub_1A35CEB84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A35CEBD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Tips.Event.Donation.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v15[0] = a2[4];
  v15[1] = v4;
  v6 = _s14descr1F1647EB9C8DonationV10CodingKeysOMa(255, v4, v5, v15[0]);
  OUTLINED_FUNCTION_2_1(v6);
  v7 = sub_1A362341C();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A362353C();
  v17 = 0;
  sub_1A3620D6C();
  sub_1A35CF1F0(&qword_1EB0EE430, MEMORY[0x1E6969538]);
  v13 = v15[3];
  sub_1A362340C();
  if (!v13)
  {
    v16 = 1;
    sub_1A362340C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t Tips.Event.Donation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  OUTLINED_FUNCTION_1();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v47 = v12 - v11;
  v51 = sub_1A3620D6C();
  OUTLINED_FUNCTION_3();
  v46 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_0();
  v49 = v16 - v15;
  v17 = _s14descr1F1647EB9C8DonationV10CodingKeysOMa(255, a2, a3, a4);
  OUTLINED_FUNCTION_2_1(v17);
  v53 = sub_1A36233CC();
  OUTLINED_FUNCTION_3();
  v45 = v18;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v48 = a2;
  v50 = a3;
  v22 = type metadata accessor for Tips.Event.Donation(0, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v42 = v23;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v21;
  v27 = v54;
  sub_1A362352C();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v26;
  v54 = a1;
  v41 = v22;
  v30 = v45;
  v29 = v46;
  v32 = v47;
  v31 = v48;
  v56 = 0;
  sub_1A35CF1F0(qword_1EB0EE438, MEMORY[0x1E6969558]);
  v33 = v49;
  sub_1A36233AC();
  v34 = *(v29 + 32);
  v40 = v28;
  v34(v28, v33, v51);
  v55 = 1;
  sub_1A36233AC();
  (*(v30 + 8))(v52, v53);
  v36 = v40;
  v35 = v41;
  (*(v43 + 32))(&v40[*(v41 + 44)], v32, v31);
  v37 = v42;
  (*(v42 + 16))(v44, v36, v35);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return (*(v37 + 8))(v36, v35);
}

uint64_t sub_1A35CF1F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3620D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Sequence.donatedWithin<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  (*(v11 + 16))(v10 - v9, v6, a2);
  return sub_1A3622C9C();
}

uint64_t sub_1A35CF388(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1A3620D6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10[0] = a2;
  v11 = a3;
  sub_1A35D0190(v8);
  LOBYTE(a3) = sub_1A3620D4C();
  (*(v6 + 8))(v8, v5);
  return a3 & 1;
}

uint64_t sub_1A35CF530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t, void))
{
  v10 = *a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = v10;
  result = a8(a7, v14, a2, *(v10 + *MEMORY[0x1E69E77B0] + 8));
  if (!result)
  {
    type metadata accessor for Tips.Event.Donation(0, *(v12 + *v11), a4, a5);
    return sub_1A3622D6C();
  }

  return result;
}

uint64_t sub_1A35CF5F4@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = MEMORY[0x1E69E77B0];
  type metadata accessor for Tips.Event.Donation(0, *(*a2 + *MEMORY[0x1E69E77B0]), a3, a4);
  swift_getAtKeyPath();
  return __swift_storeEnumTagSinglePayload(a5, 0, 1, *(v6 + *v7 + 8));
}

uint64_t sub_1A35CF6D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A3620D6C();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1A35CF8E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1A3620D6C();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t _s17DonationTimeRangeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1A35CFC10(_BYTE *result, unsigned int a2, unsigned int a3)
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