uint64_t sub_1B4F01F80(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84020;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 245;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65F84();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v7);
}

uint64_t sub_1B4F020C8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F84080;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 239;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65F84();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v7);
}

uint64_t sub_1B4F02238()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840B0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 251;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F02324()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840D0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 252;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

void *sub_1B4F024D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 33;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F65504();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CE8, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398]);

  v17 = a1;
  v16 = 29;
  v9 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v16, sub_1B4F02CE4, v9, ObjectType, &protocol witness table for XPCClient);

  v17 = a1;
  v16 = 31;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1B4F678C4();
  v12 = MEMORY[0x1E69CD260];
  v13 = MEMORY[0x1E69CD268];
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CEC, v10, ObjectType, v11, &protocol witness table for XPCClient, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268]);

  v17 = a1;
  v16 = 32;
  v14 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CF0, v14, ObjectType, v11, &protocol witness table for XPCClient, v12, v13);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F0276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC7F8C(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4F02824()
{
  v1 = *(sub_1B4F678C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B4EFC674(v2, v3);
}

uint64_t sub_1B4F02898()
{
  v1 = *(sub_1B4F678C4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B4EFC718(v2);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4F029CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_11Tm()
{
  v1 = sub_1B4F678C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4F02C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4F02CF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDED70;

  return sub_1B4F02DA4(a1);
}

uint64_t sub_1B4F02DA4(uint64_t a1)
{
  v3 = sub_1B4F67034();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_1B4F02EB8;

  return WorkoutPlanClient.queryDailyNotificationSchedule(for:)(a1);
}

uint64_t sub_1B4F02EB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03014, 0, 0);
  }
}

void sub_1B4F03014()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v0[3];
    v33 = (v5 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    v29 = *(v1 + 16);
    v31 = v0[8];
    while (v4 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v0[6], v0[8] + v7 + v8 * v4, v0[2]);
      if (sub_1B4F67024())
      {
        (*(v5 + 8))(v0[6], v0[2]);
      }

      else
      {
        v9 = *v33;
        (*v33)(v0[4], v0[6], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4E25978(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4E25978((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[4];
        v13 = v0[2];
        *(v6 + 16) = v11 + 1;
        v9(v6 + v7 + v11 * v8, v12, v13);
        v2 = v29;
        v1 = v31;
      }

      if (v2 == ++v4)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = v0[3];
      sub_1B4E257A4(0, v14, 0);
      v16 = v3;
      v17 = *(v15 + 16);
      v15 += 16;
      v18 = v6 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v30 = *(v15 + 56);
      v32 = v17;
      v19 = (v15 - 8);
      do
      {
        v20 = v0[5];
        v21 = v0[2];
        v32(v20, v18, v21);
        v22 = sub_1B4F67014();
        v24 = v23;
        (*v19)(v20, v21);
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B4E257A4((v25 > 1), v26 + 1, 1);
        }

        *(v16 + 16) = v26 + 1;
        v27 = v16 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v18 += v30;
        --v14;
      }

      while (v14);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v28 = v0[1];

    v28(v16);
  }
}

uint64_t WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B4F67034();
  v3[2] = v7;
  v3[3] = *(v7 - 8);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v10 = (*(a3 + 88) + **(a3 + 88));
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1B4F034DC;

  return v10(a1, a2, a3);
}

uint64_t sub_1B4F034DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03638, 0, 0);
  }
}

void sub_1B4F03638()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v0[3];
    v33 = (v5 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    v29 = *(v1 + 16);
    v31 = v0[8];
    while (v4 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v0[6], v0[8] + v7 + v8 * v4, v0[2]);
      if (sub_1B4F67024())
      {
        (*(v5 + 8))(v0[6], v0[2]);
      }

      else
      {
        v9 = *v33;
        (*v33)(v0[5], v0[6], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4E25978(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4E25978((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[5];
        v13 = v0[2];
        *(v6 + 16) = v11 + 1;
        v9(v6 + v7 + v11 * v8, v12, v13);
        v2 = v29;
        v1 = v31;
      }

      if (v2 == ++v4)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = v0[3];
      sub_1B4E257A4(0, v14, 0);
      v16 = v3;
      v17 = *(v15 + 16);
      v15 += 16;
      v18 = v6 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v30 = *(v15 + 56);
      v32 = v17;
      v19 = (v15 - 8);
      do
      {
        v20 = v0[4];
        v21 = v0[2];
        v32(v20, v18, v21);
        v22 = sub_1B4F67014();
        v24 = v23;
        (*v19)(v20, v21);
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B4E257A4((v25 > 1), v26 + 1, 1);
        }

        *(v16 + 16) = v26 + 1;
        v27 = v16 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v18 += v30;
        --v14;
      }

      while (v14);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v28 = v0[1];

    v28(v16);
  }
}

uint64_t sub_1B4F03964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DDECC4;

  return WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(a1, a2, a3);
}

uint64_t WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v8 + 32))(v15 + v13, v11, a3);
  v16 = (v15 + v14);
  *v16 = a1;
  v16[1] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v17 + 24) = 45;
  *(v17 + 32) = 2;
  *(v17 + 40) = 100;
  *(v17 + 48) = &unk_1B4F7AAD0;
  *(v17 + 56) = v15;
  sub_1B4F64ED4();

  return sub_1B4F675F4();
}

uint64_t sub_1B4F03BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F03CA0, 0, 0);
}

uint64_t sub_1B4F03CA0()
{
  v1 = v0[10];
  WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(v0[4], v0[5], v0[6], v0[7]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v2 + 24) = 45;
  *(v2 + 32) = 2;
  *(v2 + 40) = 100;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_1B4F64ED4();
  *v3 = v0;
  v3[1] = sub_1B4F03DCC;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4F073A4, v2, v4);
}

uint64_t sub_1B4F03DCC()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03F50, 0, 0);
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1B4F03F50()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkoutPlanClientProtocol.insertCompletedWorkoutPlanSummary(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24[0] = a3;
  v24[1] = a4;
  v8 = sub_1B4F66AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  (*(v13 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v24[0];
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v13 + 32))(v20 + v18, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v9 + 32))(v20 + v19, v12, v8);
  v22 = swift_allocObject();
  *(v22 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v22 + 24) = 45;
  *(v22 + 32) = 2;
  *(v22 + 40) = 104;
  *(v22 + 48) = &unk_1B4F7AAE0;
  *(v22 + 56) = v20;
  return sub_1B4F675F4();
}

uint64_t sub_1B4F04234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 256) + **(a5 + 256));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1B4DE13F0;

  return v11(a3, a4, a5);
}

uint64_t sub_1B4F04364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F03BCC(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_1B4F044A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(sub_1B4F66AF4() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B4DE0D94;

  return sub_1B4F04234(a1, v1 + v8, v1 + v10, v5, v6);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 8) + **(a13 + 8));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 16) + **(a13 + 16));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(a13 + 24) + **(a13 + 24));
  v18 = swift_task_alloc();
  *(v13 + 16) = v18;
  *v18 = v13;
  v18[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.repeatWorkoutPlan(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.validateSchedule(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.makeWorkoutPlanSchedule(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryActiveWorkoutPlanProgressSnapshot()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlans(state:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2 & 1, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryDailyNotificationSchedule(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryNextIncompleteWorkoutReference(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryIncompleteMatchingWorkoutReferences(plan:workout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 112) + **(a5 + 112));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B4E9CF24;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlanTemplateReferences()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4E9CF24;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlanTemplatesCount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4E9CF24;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanTemplateMetadata(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanTemplates(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlans(forTemplateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 160) + **(a6 + 160));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4DE0D94;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 168) + **(a7 + 168));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B4DE0D94;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteAllActiveWorkoutPlans()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 176) + **(a2 + 176));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertWorkoutPlanTemplate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteWorkoutPlanTemplate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 216) + **(a4 + 216));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 224) + **(a4 + 224));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummaries(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 232) + **(a3 + 232));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryPendingWorkoutPlanSummary()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 240) + **(a3 + 240));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummariesViewed()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 248) + **(a2 + 248));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4E9CF24;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertCompletedWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 256) + **(a3 + 256));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertArchivedPlanSession(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 264) + **(a3 + 264));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.evaluateActiveWorkoutPlanCompletion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 272) + **(a2 + 272));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryActiveWorkoutPlanItemMetrics()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 280) + **(a2 + 280));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4E2BDB0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanItemMetrics(planIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 288) + **(a3 + 288));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlanTemplateName(identifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 296) + **(a5 + 296));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.endWorkoutPlan(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 304) + **(a3 + 304));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.filterCatalog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 312) + **(a4 + 312));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

void CoreAnalyticsReporter.report(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  AnalyticsEvent.identifier.getter(v2, v3);
  v4 = sub_1B4F67F64();

  sub_1B4DC40A0(a1, v8);
  v5 = swift_allocObject();
  sub_1B4DC933C(v8, v5 + 16);
  aBlock[4] = sub_1B4F074D0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4F074D4;
  aBlock[3] = &block_descriptor_12;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_1B4F074D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1B4DE1BDC();
    v4 = sub_1B4F67EE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B4F07560(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  AnalyticsEvent.identifier.getter(v2, v3);
  v4 = sub_1B4F67F64();

  sub_1B4DC40A0(a1, v8);
  v5 = swift_allocObject();
  sub_1B4DC933C(v8, v5 + 16);
  aBlock[4] = sub_1B4F076E0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4F074D4;
  aBlock[3] = &block_descriptor_11_0;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1B4F07688()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t retryWithBackoff<A>(_:maximumAttempts:backoffIntervalProvider:retryCondition:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B4DE13F0;

  return sub_1B4F077D0(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4F077D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  v8[15] = v10;
  *v10 = v8;
  v10[1] = sub_1B4F078D8;

  return v12(a1);
}

uint64_t sub_1B4F078D8()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F07A0C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4F07A0C(uint64_t a1)
{
  v2 = v1[12];
  if (v2)
  {
    v3 = v1[10];
    if ((v2(v1[16]) & 1) != 0 && v3 > 1)
    {
LABEL_4:
      sub_1B4DC40A0(v1[11], (v1 + 2));
      v4 = v1[5];
      v5 = v1[6];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v4);
      v7 = (*(v5 + 8))(v4, v5) * 1000000000.0;
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v7 > -1.0)
      {
        if (v7 < 1.84467441e19)
        {
          v8 = v7;
          v9 = swift_task_alloc();
          v1[17] = v9;
          *v9 = v1;
          v9[1] = sub_1B4F07BA8;
          v6 = v8;

          return MEMORY[0x1EEE6DA60](v6);
        }

LABEL_16:
        __break(1u);
        return MEMORY[0x1EEE6DA60](v6);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v1[10] >= 2)
  {
    goto LABEL_4;
  }

  swift_willThrow();
  v10 = v1[1];

  return v10();
}

uint64_t sub_1B4F07BA8()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F07E48, 0, 0);
  }

  else
  {
    v3 = v2[10] - 1;
    v4 = swift_task_alloc();
    v2[19] = v4;
    *v4 = v2;
    v4[1] = sub_1B4F07D34;
    v5 = v2[13];
    v6 = v2[14];
    v7 = v2[12];
    v8 = v2[8];
    v9 = v2[9];
    v10 = v2[7];

    return sub_1B4F077D0(v10, v8, v9, v3, (v2 + 2), v7, v5, v6);
  }
}

uint64_t sub_1B4F07D34()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B4F07F20;
  }

  else
  {
    v2 = sub_1B4F07EB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F07E48()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F07EB4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F07F20()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Promise.retryWithBackoff(maximumAttempts:backoffIntervalProvider:queue:retryCondition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v28 = a7;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v14, v13);
  sub_1B4DC40A0(a2, v29);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(a6 + 16);
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v15, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  *(v18 + v16) = v25;
  sub_1B4DC933C(v29, v18 + v17);
  v19 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  v22 = a3;
  sub_1B4DEA370(v21, v20);
  return sub_1B4F675F4();
}

uint64_t sub_1B4F08138(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a7;
  v47 = a8;
  v41 = a5;
  v43 = a3;
  v44 = a1;
  v45 = a2;
  v40 = a9;
  v50 = sub_1B4F67D54();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v11);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B4F67D74();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v13);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F67674();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v40 - v20;
  (*(v16 + 16))(&v40 - v20, a4, v15, v19);
  sub_1B4DC40A0(a6, v55);
  v22 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v40;
  (*(v16 + 32))(v28 + v22, v21, v15);
  *(v28 + v23) = v41;
  sub_1B4DC933C(v55, v28 + v24);
  v29 = v43;
  *(v28 + v25) = v43;
  v30 = (v28 + v26);
  v32 = v46;
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v33 = (v28 + v27);
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  aBlock[4] = sub_1B4F08748;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_13;
  v35 = _Block_copy(aBlock);
  v29;
  sub_1B4DEA370(v32, v31);

  v36 = v42;
  sub_1B4F67D64();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  v37 = v48;
  v38 = v50;
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v36, v37, v35);
  _Block_release(v35);
  (*(v52 + 8))(v37, v38);
  (*(v49 + 8))(v36, v51);
}

uint64_t sub_1B4F08548(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(v3 + 16);
  v7 = *(sub_1B4F67674() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F08138(a1, a2, *(v3 + 24), v3 + v8, *(v3 + v9), v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8), v6);
}

uint64_t sub_1B4F0861C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21[1] = a9;
  v15 = sub_1B4F67674();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v21 - v18;
  sub_1B4F0881C(a3, a4, a5, a6, a7, v15, v21 - v18);
  sub_1B4F67644();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1B4F08748(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(sub_1B4F67674() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F0861C(v8, v1 + v4, *(v1 + v5), v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2);
}

uint64_t sub_1B4F0881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v29 = a7;
  v25 = a1;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v13, v12);
  sub_1B4DC40A0(a2, v30);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(a6 + 16);
  (*(v10 + 32))(v18 + v14, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v19 = v26;
  *(v18 + v15) = v25;
  v20 = (v18 + v16);
  v21 = v27;
  *v20 = v19;
  v20[1] = v21;
  sub_1B4DC933C(v30, v18 + v17);
  v22 = v28;
  *(v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_1B4DEA370(v19, v21);
  v23 = v22;
  return sub_1B4F675F4();
}

uint64_t sub_1B4F089D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, uint64_t a10)
{
  v28 = a1;
  v29 = a8;
  v27 = a4;
  v15 = sub_1B4F67674();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v27 - v18;
  sub_1B4DC40A0(a7, v30);
  (*(v16 + 16))(v19, a3, v15);
  v20 = (*(v16 + 80) + 112) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v23 = v27;
  v22 = v28;
  *(v21 + 2) = a10;
  *(v21 + 3) = v23;
  *(v21 + 4) = a5;
  *(v21 + 5) = a6;
  *(v21 + 6) = v22;
  *(v21 + 7) = a2;
  sub_1B4DC933C(v30, (v21 + 64));
  v24 = v29;
  *(v21 + 13) = v29;
  (*(v16 + 32))(&v21[v20], v19, v15);
  sub_1B4DEA370(a5, a6);

  v25 = v24;
  sub_1B4F67644();
}

uint64_t sub_1B4F08B88(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(v3 + 16);
  v7 = *(sub_1B4F67674() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F089D4(a1, a2, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), v10, v6);
}

uint64_t sub_1B4F08C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v62 = a8;
  v60 = a7;
  v74 = a5;
  v75 = a6;
  v68 = a4;
  v72 = a3;
  v61 = sub_1B4F67D54();
  v67 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B4F67D74();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v14);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1B4F67674();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v69, v18);
  v20 = &v56 - v19;
  v71 = sub_1B4F67D94();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v70 = &v56 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v27 = sub_1B4F68F14();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v56 - v31);
  (*(v28 + 16))(&v56 - v31, a1, v27, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    if (a2 >= 2 && (!v72 || (v72(v33) & 1) != 0))
    {
      v57 = a9;
      v34 = swift_allocObject();
      sub_1B4DC40A0(v60, v34 + 16);
      sub_1B4F67D84();
      v58 = a2;
      v60 = v33;
      v56 = v34;
      v36 = *(v34 + 40);
      v35 = *(v34 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v34 + 16, v36);
      (*(v35 + 8))(v36, v35);
      sub_1B4F67DB4();
      v37 = *(v73 + 8);
      v73 += 8;
      v59 = v37;
      v37(v23, v71);
      (*(v16 + 16))(v20, v57, v69);
      v38 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v39 = (v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 16) = a10;
      (*(v16 + 32))(v43 + v38, v20, v69);
      *(v43 + v39) = v58;
      *(v43 + v40) = v56;
      v44 = v62;
      *(v43 + v41) = v62;
      v45 = (v43 + v42);
      v46 = v72;
      v47 = v68;
      *v45 = v72;
      v45[1] = v47;
      v48 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
      v49 = v75;
      *v48 = v74;
      v48[1] = v49;
      aBlock[4] = sub_1B4F09518;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B4DCA7B0;
      aBlock[3] = &block_descriptor_20;
      v50 = _Block_copy(aBlock);

      v44;
      sub_1B4DEA370(v46, v47);

      v51 = v63;
      sub_1B4F67D64();
      v76 = MEMORY[0x1E69E7CC0];
      sub_1B4DCD900();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
      sub_1B4DCBA40();
      v52 = v65;
      v53 = v61;
      sub_1B4F688A4();
      v54 = v70;
      MEMORY[0x1B8C81EE0](v70, v51, v52, v50);
      _Block_release(v50);

      (*(v67 + 8))(v52, v53);
      (*(v64 + 8))(v51, v66);
      v59(v54, v71);
    }
  }

  else
  {
    (*(v28 + 8))(v32, v27);
  }

  return v74(a1);
}

uint64_t sub_1B4F09324(uint64_t a1, double a2)
{
  v4 = *(v2 + 16);
  v5 = *(sub_1B4F67674() - 8);
  return sub_1B4F08C64(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + 64), *(v2 + 104), v2 + ((*(v5 + 80) + 112) & ~*(v5 + 80)), v4);
}

void sub_1B4F093B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22[1] = a9;
  v15 = sub_1B4F67674();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v22 - v18;
  v20 = __OFSUB__(a3, 1);
  v21 = a3 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1B4DC40A0(a4 + 16, v23);
    sub_1B4F0881C(v21, v23, a5, a6, a7, v15, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1B4F67644();
    (*(v16 + 8))(v19, v15);
  }
}

void sub_1B4F09518(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(sub_1B4F67674() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4F093B8(v8, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2);
}

uint64_t RemoteParticipantDiscovered.init(participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoteParticipantDiscovered.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteParticipantDiscovered(uint64_t a1)
{
  result = qword_1EDB6E5A0;
  if (!qword_1EDB6E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Network.hash(into:)(uint64_t a1)
{
  MEMORY[0x1B8C82740](*v1);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();
}

uint64_t Network.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F09A00(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v2);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient7NetworkV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v3 = a1[3];
    v4 = 0x6C62616863616572;
    v5 = 0xE900000000000065;
    if (v3 != 1)
    {
      v4 = 0x6168636165726E75;
      v5 = 0xEB00000000656C62;
    }

    if (a1[3])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x65526E6F69746361;
    }

    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xEE00646572697571;
    }

    v8 = 0x6C62616863616572;
    v9 = 0xE900000000000065;
    if (a2[3] != 1)
    {
      v8 = 0x6168636165726E75;
      v9 = 0xEB00000000656C62;
    }

    if (a2[3])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x65526E6F69746361;
    }

    if (a2[3])
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEE00646572697571;
    }

    if (v6 == v10 && v7 == v11)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1B4F68D54();
    }
  }

  return v2 & 1;
}

unint64_t sub_1B4F09C58()
{
  result = qword_1EB8F6DC8;
  if (!qword_1EB8F6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Network(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Network(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t AnalyticsEventDomain.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t sub_1B4F09D8C()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t DispatchTimerProvider.makeRepeatingTimer(fireAfter:fireInterval:leewayInterval:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v44 = a3;
  v45 = a4;
  v41 = a2;
  v42 = a1;
  v7 = sub_1B4F67D54();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v46 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F67D74();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B4F67D94();
  v13 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v39 - v19;
  v21 = sub_1B4F68684();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = sub_1B4DD44F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4DD4540(&qword_1EDB71448, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4DC9C58(&qword_1EDB71478, &qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4F688A4();
  v26 = sub_1B4F68694();
  (*(v22 + 8))(v25, v21);
  ObjectType = swift_getObjectType();
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v28 = *(v13 + 8);
  v29 = v16;
  v30 = v40;
  v28(v29, v40);
  MEMORY[0x1B8C81FF0](v20, v42, ObjectType, a6);
  v28(v20, v30);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v34 = v44;
  v33 = v45;
  v32[2] = v31;
  v32[3] = v34;
  v32[4] = v33;
  aBlock[4] = sub_1B4F0A350;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_10;
  v35 = _Block_copy(aBlock);

  sub_1B4ED9704(v34, v33);
  v36 = v43;
  sub_1B4F67D64();
  v37 = v46;
  sub_1B4DD458C();
  sub_1B4F686B4();
  _Block_release(v35);
  (*(v49 + 8))(v37, v50);
  (*(v47 + 8))(v36, v48);

  sub_1B4F686D4();
  return v26;
}

uint64_t sub_1B4F0A2CC(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result || (swift_getObjectType(), v4 = sub_1B4F686A4(), result = swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    if (a2)
    {
      return a2();
    }
  }

  return result;
}

id DispatchTimerProvider.makeScheduledTimer(fireInterval:leewayInterval:queue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v19 = a2;
  v7 = sub_1B4F67D44();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7, v10);
  v13 = type metadata accessor for DispatchTimer(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v14 + 16) = a4;
  (*(v8 + 32))(v14 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval, v12, v7);
  v16 = v19;
  *(v14 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = v19;
  a3[3] = v13;
  a3[4] = &protocol witness table for DispatchTimer;
  *a3 = v14;

  return v16;
}

uint64_t sub_1B4F0A51C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v61 = a6;
  v58 = a3;
  v59 = a5;
  v56 = a4;
  v57 = a2;
  v54 = a1;
  v7 = sub_1B4F67D54();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F67D74();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B4F67D44();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v13);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v48 - v17;
  v50 = sub_1B4F67D94();
  v66 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = sub_1B4F68684();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD44F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4DD4540(&qword_1EDB71448, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4DC9C58(&qword_1EDB71478, &qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4F688A4();
  v30 = sub_1B4F68694();
  (*(v26 + 8))(v29, v25);
  ObjectType = swift_getObjectType();
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v32 = *(v66 + 8);
  v66 += 8;
  v54 = v32;
  v33 = v50;
  v32(v20, v50);
  v34 = v52;
  v35 = *(v52 + 104);
  v36 = v51;
  v37 = v53;
  v35(v51, *MEMORY[0x1E69E7F40], v53);
  v38 = v49;
  *v49 = 0;
  v35(v38, *MEMORY[0x1E69E7F28], v37);
  MEMORY[0x1B8C81FE0](v24, v36, v38, ObjectType);
  v39 = *(v34 + 8);
  v39(v38, v37);
  v39(v36, v37);
  v54(v24, v33);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v43 = v57;
  v42 = v58;
  v41[2] = v40;
  v41[3] = v43;
  v41[4] = v42;
  aBlock[4] = v59;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = v61;
  v44 = _Block_copy(aBlock);

  sub_1B4ED9704(v43, v42);
  v45 = v55;
  sub_1B4F67D64();
  v46 = v60;
  sub_1B4DD458C();
  sub_1B4F686B4();
  _Block_release(v44);
  (*(v64 + 8))(v46, v65);
  (*(v62 + 8))(v45, v63);

  sub_1B4F686D4();
  return v30;
}

uint64_t sub_1B4F0AB4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4 = sub_1B4F686A4();
    result = swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      if (a2)
      {
        return a2(result);
      }
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4F0AD4C(uint64_t a1)
{
  swift_beginAccess();
  sub_1B4DD3B0C(a1 + 32, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1B4DDFFB8(v8);
    }

    sub_1B4F0B204();
    v2 = swift_allocError();
    *v3 = 1;
    *(swift_allocObject() + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DD0, &qword_1B4F7AEE0);
    return sub_1B4F67604();
  }

  else
  {
    sub_1B4DC933C(v8, v7);
    sub_1B4DC40A0(v7, v6);
    v5 = swift_allocObject();
    sub_1B4DC933C(v6, v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DD0, &qword_1B4F7AEE0);
    sub_1B4F67604();
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
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

uint64_t sub_1B4F0AEC8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B4F0AF04(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B4F0AF50(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B4F0AF90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4DD66D8(a1, result, v4);
  }

  return result;
}

uint64_t sub_1B4F0AFF4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4F0B04C();
  }

  return result;
}

void sub_1B4F0B04C()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 96);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B4F67DC4();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    swift_beginAccess();
    sub_1B4DD3B0C(v0 + 32, &v13);
    if (v14)
    {
      if (v14 == 1)
      {
        v9 = v13;
        swift_unknownObjectRelease();
        v11[3] = sub_1B4F67D34();
        v11[4] = &off_1F2CE2310;
        __swift_allocate_boxed_opaque_existential_1(v11);
        sub_1B4F67C84();
        v12 = 0;
        swift_beginAccess();
        sub_1B4DD4AA8(v11, v0 + 32);
        swift_endAccess();
        dispatch_group_leave(v9);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B4F0B204()
{
  result = qword_1EB8F6DD8;
  if (!qword_1EB8F6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6DD8);
  }

  return result;
}

uint64_t Trainer.reference()()
{
  v0 = sub_1B4F67934();
  v1 = sub_1B4F678D4();
  v3 = v2;
  v4 = sub_1B4F678F4();
  v6 = v5;
  v8 = sub_1B4F67924();

  return MEMORY[0x1EEE35890](v0, v1, v3, v4, v6, v8, v7);
}

uint64_t sub_1B4F0B40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F0B47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RemoteBrowsingIdentityUpdated(uint64_t a1)
{
  result = qword_1EDB6E568;
  if (!qword_1EDB6E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0B564(uint64_t a1)
{
  result = sub_1B4F66694();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutPlanFilter.onOrAfter(_:)(uint64_t a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v7 = *(sub_1B4F66E34() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4F6CF50;
  v10 = sub_1B4F64964();
  (*(*(v10 - 8) + 16))(v9 + v8, a1, v10);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v9);
  swift_setDeallocating();
  sub_1B4F0BEC8(v9 + v8);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v11 = sub_1B4F65FA4();
  v12 = sub_1B4F65FA4();
  sub_1B4E455E0(v12, v11);
  v13 = sub_1B4F65FB4();
  v14 = sub_1B4F65FB4();
  sub_1B4E455E0(v14, v13);
  sub_1B4F65F94();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static WorkoutPlanFilter.+ infix(_:_:)(uint64_t a1)
{
  v1 = sub_1B4F65FA4();
  v2 = sub_1B4F65FA4();
  sub_1B4E455E0(v2, v1);
  v3 = sub_1B4F65FB4();
  v4 = sub_1B4F65FB4();
  sub_1B4E455E0(v4, v3);

  return sub_1B4F65F94();
}

uint64_t WorkoutPlanFilter.state(_:)(char a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v7 = *(sub_1B4F66E34() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4F6CF50;
  *(v9 + v8) = a1;
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v9);
  swift_setDeallocating();
  sub_1B4F0BEC8(v9 + v8);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v10 = sub_1B4F65FA4();
  v11 = sub_1B4F65FA4();
  sub_1B4E455E0(v11, v10);
  v12 = sub_1B4F65FB4();
  v13 = sub_1B4F65FB4();
  sub_1B4E455E0(v13, v12);
  sub_1B4F65F94();
  return (*(v3 + 8))(v6, v2);
}

uint64_t WorkoutPlanFilter.between(_:)(uint64_t a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE8, &qword_1B4F7AF48);
  WorkoutPlanFilter.between(startDate:endDate:)(a1, a1 + *(v7 + 36), v6);
  v8 = sub_1B4F65FA4();
  v9 = sub_1B4F65FA4();
  sub_1B4E455E0(v9, v8);
  v10 = sub_1B4F65FB4();
  v11 = sub_1B4F65FB4();
  sub_1B4E455E0(v11, v10);
  sub_1B4F65F94();
  return (*(v3 + 8))(v6, v2);
}

uint64_t WorkoutPlanFilter.between(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a1;
  v18 = a2;
  v21 = a3;
  v22 = sub_1B4F65FC4();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v6 = *(sub_1B4F66E34() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v17 = xmmword_1B4F6CF50;
  *(v8 + 16) = xmmword_1B4F6CF50;
  v9 = sub_1B4F64964();
  v10 = *(*(v9 - 8) + 16);
  v10(v8 + v7, v18, v9);
  swift_storeEnumTagMultiPayload();
  v18 = sub_1B4E2C438(v8);
  swift_setDeallocating();
  sub_1B4F0BEC8(v8 + v7);
  swift_deallocClassInstance();
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  v10(v11 + v7, v19, v9);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v11);
  swift_setDeallocating();
  sub_1B4F0BEC8(v11 + v7);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v12 = sub_1B4F65FA4();
  v13 = sub_1B4F65FA4();
  sub_1B4E455E0(v13, v12);
  v14 = sub_1B4F65FB4();
  v15 = sub_1B4F65FB4();
  sub_1B4E455E0(v15, v14);
  sub_1B4F65F94();
  return (*(v20 + 8))(v5, v22);
}

uint64_t sub_1B4F0BEC8(uint64_t a1)
{
  v2 = sub_1B4F66E34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CacheResult.map<A>(transform:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  v19 = 1;
  if ((*(v9 + 48))(v16, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v16, v8);
    a1(v11);
    (*(v9 + 8))(v11, v8);
    v19 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v19, 1, a4);
}

uint64_t sub_1B4F0C124(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B4F0C180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B4F0C300(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t Error.isContainerSanitized(object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4DC4F2C(a1, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = 0;
    v8 = v41;
    v10 = v41 + 64;
    v9 = *(v41 + 64);
    v11 = 1 << *(v41 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    if ((v12 & v9) != 0)
    {
      while (1)
      {
        v15 = v7;
LABEL_13:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = v18 | (v15 << 6);
        sub_1B4DF47F4(*(v8 + 48) + 40 * v19, &v38);
        sub_1B4DC4F2C(*(v8 + 56) + 32 * v19, &v50);
        v41 = v38;
        v42 = v39;
        *&v43 = v40;
        sub_1B4E2C940(&v50, (&v43 + 8));
        v17 = v15;
LABEL_14:
        v47 = v42;
        v48[0] = v43;
        v48[1] = v44;
        v49 = v45;
        v46 = v41;
        if (!*(&v42 + 1))
        {

          return 1;
        }

        sub_1B4E2C940((v48 + 8), &v41);
        *(&v39 + 1) = MEMORY[0x1E69E69B8];
        v20 = swift_allocObject();
        *&v38 = v20;
        v21 = v47;
        *(v20 + 16) = v46;
        *(v20 + 32) = v21;
        *(v20 + 48) = *&v48[0];
        v22 = Error.isValidElement(_:)(&v38, a2, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v23 = Error.isValidElement(_:)(&v41, a2, a3);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v41);
        if ((v23 & 1) == 0)
        {
          goto LABEL_28;
        }

        v7 = v17;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v41);
LABEL_28:

      return 0;
    }

    else
    {
LABEL_6:
      if (v14 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          v13 = 0;
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v41 = 0u;
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v15);
        ++v7;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1B4DC4F2C(a1, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
    if (swift_dynamicCast())
    {
      sub_1B4DC933C(&v41, &v46);
      v24 = __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v25 = MEMORY[0x1EEE9AC00](v24, v24);
      (*(v27 + 16))(&v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      *(&v42 + 1) = swift_getAssociatedTypeWitness();
      *&v43 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v41);
      sub_1B4F680C4();
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v29 = sub_1B4F687D4();
        v30 = *(v29 - 8);
        MEMORY[0x1EEE9AC00](v29, v31);
        v33 = &v37 - v32;
        sub_1B4F68834();
        v34 = *(AssociatedTypeWitness - 8);
        if ((*(v34 + 48))(v33, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v51 = AssociatedTypeWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
        (*(v34 + 32))(boxed_opaque_existential_1, v33, AssociatedTypeWitness);
        sub_1B4E2C940(&v50, &v38);
        v36 = Error.isValidElement(_:)(&v38, a2, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        if ((v36 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v41);
          __swift_destroy_boxed_opaque_existential_1Tm(&v46);
          return 0;
        }
      }

      (*(v30 + 8))(v33, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(&v41);
      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    }

    else
    {
      *&v43 = 0;
      v42 = 0u;
      v41 = 0u;
      sub_1B4DD2BC4(&v41, &unk_1EB8F6E20, &unk_1B4F7E040);
    }

    return 1;
  }

  return result;
}

uint64_t Error.isValidElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4DC4F2C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    if ((Error.isContainerSanitized(object:)(a1, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
  if (swift_dynamicCast())
  {
    return 0;
  }

  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
  return swift_dynamicCast() ^ 1;
}

uint64_t Error.isDenylisted(object:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
  if (swift_dynamicCast())
  {
    return 1;
  }

  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
  return swift_dynamicCast();
}

unint64_t sub_1B4F0CD3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B4F0CD84(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B4DC933C(a4, a5[7] + 40 * a1);
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

_OWORD *sub_1B4F0CDF4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B4E2C940(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1B4F0CE70(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1B4F0CEB8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B4E2C940(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1B4F0CF24(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B4F0CF6C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t _ss5ErrorP13SeymourClientE17isObjectSanitized6objectSbyp_tF_0(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_1B4DC4F2C(a1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
    if (swift_dynamicCast())
    {
      return 0;
    }

    else
    {
      sub_1B4DC4F2C(a1, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
      return swift_dynamicCast() ^ 1;
    }
  }

  return result;
}

uint64_t MindfulMinutesMetricUpdated.init(mindfulMinutesMetric:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MindfulMinutesMetricUpdated.mindfulMinutesMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66454();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MindfulMinutesMetricUpdated(uint64_t a1)
{
  result = qword_1EDB70708;
  if (!qword_1EDB70708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0D1FC(uint64_t a1)
{
  result = sub_1B4F66454();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Countdown.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F67AD4();

  return sub_1B4F67AE4();
}

uint64_t sub_1B4F0D2EC(double a1)
{
  sub_1B4F67AD4();

  return sub_1B4F67AE4();
}

uint64_t DistanceMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F65814();

  return sub_1B4F65844();
}

uint64_t sub_1B4F0D3A8(double a1)
{
  sub_1B4F65814();

  return sub_1B4F65844();
}

SeymourClient::NetworkInterfaceAvailability_optional __swiftcall NetworkInterfaceAvailability.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

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

uint64_t sub_1B4F0D468(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616C696176616E75;
  }

  else
  {
    v3 = 0x6C62616C69617661;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v5 = 0x616C696176616E75;
  }

  else
  {
    v5 = 0x6C62616C69617661;
  }

  if (*a2)
  {
    v6 = 0xEB00000000656C62;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4F68D54();
  }

  return v8 & 1;
}

uint64_t sub_1B4F0D51C()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0D5AC(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4F0D628(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0D6B4@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4F68C34();

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

  *a2 = v5;
  return result;
}

void sub_1B4F0D714(uint64_t *a1@<X8>)
{
  v2 = 0x6C62616C69617661;
  if (*v1)
  {
    v2 = 0x616C696176616E75;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEB00000000656C62;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t NetworkInterfaceAvailability.description.getter()
{
  if (*v0)
  {
    return 0x616C696176616E75;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

unint64_t sub_1B4F0D7AC()
{
  result = qword_1EB8F6E30;
  if (!qword_1EB8F6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6E30);
  }

  return result;
}

uint64_t sub_1B4F0D800()
{
  if (*v0)
  {
    return 0x616C696176616E75;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t DebounceDelay.__allocating_init(delay:max:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 112) = a5;
  *(v10 + 120) = a1;
  *(v10 + 128) = a2 & 1;
  *(v10 + 136) = a3;
  *(v10 + 144) = a4;
  return v10;
}

uint64_t DebounceDelay.init(delay:max:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_defaultActor_initialize();
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 112) = a5;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2 & 1;
  *(v5 + 136) = a3;
  *(v5 + 144) = a4;
  return v5;
}

uint64_t sub_1B4F0D934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1B4F68324();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1B4E4E620(0, 0, v4, &unk_1B4F7B130, v6);
}

uint64_t sub_1B4F0DA5C()
{
  sub_1B4F0DB70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F0DABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE13F0;

  return sub_1B4F0DA3C(a1, v4, v5, v6);
}

uint64_t sub_1B4F0DB70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  if (!*(v0 + 152) && (*(v0 + 128) & 1) == 0)
  {
    v5 = *(v0 + 120);
    v6 = sub_1B4F68324();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_1B4F0E470();
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v5;
    v8[5] = v0;
    swift_retain_n();
    *(v0 + 152) = sub_1B4E4E620(0, 0, v4, &unk_1B4F7B1D8, v8);
  }

  if (*(v0 + 160))
  {

    sub_1B4F683B4();
  }

  v9 = *(v0 + 112);
  v10 = sub_1B4F68324();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_1B4F0E470();
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v11;
  v12[4] = v9;
  v12[5] = v0;
  swift_retain_n();
  *(v0 + 160) = sub_1B4E4E620(0, 0, v4, &unk_1B4F7B1D0, v12);
}

uint64_t sub_1B4F0DD9C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F0DDC0, 0, 0);
}

uint64_t sub_1B4F0DDC0(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_1B4F0DEA8;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4F0DEA8()
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B4F0E050;
  }

  else
  {
    v3 = sub_1B4F0DFD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1B4F0DFD0()
{
  v1 = *(v0 + 40);
  sub_1B4F683D4();
  if (v1)
  {
  }

  else
  {
    sub_1B4F0E0B0();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4F0E050()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F0E0B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1B4F68324();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1B4F0E470();
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  sub_1B4E4E620(0, 0, v4, &unk_1B4F7B1C0, v7);

  if (*(v0 + 152))
  {

    sub_1B4F683B4();
  }

  *(v0 + 152) = 0;

  if (*(v0 + 160))
  {

    sub_1B4F683B4();
  }

  *(v0 + 160) = 0;
}

uint64_t sub_1B4F0E274()
{
  v3 = (*(*(v0 + 16) + 136) + **(*(v0 + 16) + 136));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DF8418;

  return v3();
}

void *DebounceDelay.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DebounceDelay.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1B4F0E470()
{
  result = qword_1EDB6F208;
  if (!qword_1EDB6F208)
  {
    type metadata accessor for DebounceDelay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6F208);
  }

  return result;
}

uint64_t sub_1B4F0E4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F0E254(a1, v4, v5, v6);
}

uint64_t sub_1B4F0E578(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F0DD9C(v6, a1, v4, v5, v7);
}

uint64_t PlaybackInformationUpdated.itemAlbumTitle.getter()
{
  v1 = *(v0 + 32);
  sub_1B4F0E6A8(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1B4F0E6A8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t PlaybackInformationUpdated.itemArtist.getter()
{
  v1 = *(v0 + 48);
  sub_1B4F0E6A8(v1, *(v0 + 56));
  return v1;
}

uint64_t PlaybackInformationUpdated.itemArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlaybackInformationUpdated(0) + 32);

  return sub_1B4F0E780(v3, a1);
}

uint64_t type metadata accessor for PlaybackInformationUpdated(uint64_t a1)
{
  result = qword_1EB8F6E40;
  if (!qword_1EB8F6E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0E780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackInformationUpdated.itemTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaybackInformationUpdated(0) + 36));
  v2 = *v1;
  sub_1B4F0E6A8(*v1, v1[1]);
  return v2;
}

uint64_t PlaybackInformationUpdated.init(duration:elapsedTime:itemAlbumTitle:itemArtist:itemArtwork:itemTitle:playbackRate:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = HIBYTE(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = HIBYTE(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v16 = type metadata accessor for PlaybackInformationUpdated(0);
  result = sub_1B4F0E91C(a10, a9 + v16[8]);
  v18 = (a9 + v16[9]);
  *v18 = a11;
  v18[1] = a12;
  v19 = a9 + v16[10];
  *v19 = a13;
  *(v19 + 8) = a14;
  *(v19 + 9) = a15 & 1;
  return result;
}

uint64_t sub_1B4F0E91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4F0E9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B4F0EABC(319, &qword_1EB8F6E50, MEMORY[0x1E69E63B0], a4);
  if (v5 <= 0x3F)
  {
    sub_1B4F0EABC(319, &qword_1EB8F6E58, MEMORY[0x1E69E6158], v4);
    if (v6 <= 0x3F)
    {
      sub_1B4F0EB08(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4F0EABC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for PlaybackInformationUpdated.InfoType(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B4F0EB08(uint64_t a1)
{
  if (!qword_1EB8F6E60[0])
  {
    v2 = sub_1B4F675E4();
    v5 = type metadata accessor for PlaybackInformationUpdated.InfoType(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EB8F6E60);
    }
  }
}

uint64_t sub_1B4F0EB60(uint64_t a1)
{
  v1 = sub_1B4F687D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B4F0EBBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1B4F0ED48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t WorkoutDeviceConnectionUpdated.workoutDeviceConnection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66964();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutDeviceConnectionUpdated.init(workoutDeviceConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WorkoutDeviceConnectionUpdated(uint64_t a1)
{
  result = qword_1EB8F6EE8;
  if (!qword_1EB8F6EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0F164(uint64_t a1)
{
  result = sub_1B4F66964();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutFeatures.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4F68C34();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_1B4F0F268()
{
  result = qword_1EB8F6EF8;
  if (!qword_1EB8F6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6EF8);
  }

  return result;
}

uint64_t sub_1B4F0F2BC()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0F320(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0F36C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4F68C34();

  *a2 = v3 != 0;
  return result;
}

uint64_t EventHubProtocol.makeAsyncStream<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  EventHubProtocol.makeAsyncStream<A, B>(for:transforming:)(a1, &unk_1B4F7B3A8, v12, a2, a3, a3, a4, a5, a6);
}

uint64_t sub_1B4F0F4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F0F4EC, 0, 0);
}

uint64_t sub_1B4F0F4EC()
{
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4F0F578(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F0F4C8(a1, a2, v6, v7);
}

uint64_t EventHubProtocol.makeAsyncStream<A, B>(for:transforming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v25 = a8;
  v26 = a3;
  v24 = a2;
  v27 = a9;
  v16 = sub_1B4F68354();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v24 - v19;
  type metadata accessor for SubscriptionToken();
  v21 = swift_allocObject();
  v22 = sub_1B4DF7B68(v10, v21, a4, a7);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v25;
  v33 = v10;
  v34 = a1;
  v35 = v22;
  v36 = v24;
  v37 = v26;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8650], v16);
  sub_1B4F683A4();
}

uint64_t sub_1B4F0F7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a5;
  v35 = a6;
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v39 = a1;
  v32 = a7;
  v33 = a9;
  v14 = sub_1B4F68374();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v31 - v18;
  (*(v15 + 16))(&v31 - v18, a1, v14, v17);
  v20 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a9;
  *(v21 + 5) = a10;
  v22 = v34;
  v23 = v35;
  *(v21 + 6) = a11;
  *(v21 + 7) = v22;
  *(v21 + 8) = v23;
  (*(v15 + 32))(&v21[v20], v19, v14);
  v24 = *(a10 + 48);

  v25 = v37;
  v26 = a8;
  v27 = a8;
  v28 = v32;
  v24(v40, v36, v37, &unk_1B4F7B3B8, v21, v27, a11, v32, a10);

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v26;
  v29[4] = v33;
  v29[5] = a10;
  v29[6] = a11;
  v29[7] = v25;

  return sub_1B4F68344();
}

uint64_t sub_1B4F0F9D8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v11 = sub_1B4F68334();
  v7[4] = v11;
  v7[5] = *(v11 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = *(a7 - 8);
  v7[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[9] = v12;
  v15 = (a2 + *a2);
  v13 = swift_task_alloc();
  v7[10] = v13;
  *v13 = v7;
  v13[1] = sub_1B4F0FBAC;

  return v15(v12, a1);
}

uint64_t sub_1B4F0FBAC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B4F0FDC8;
  }

  else
  {
    v2 = sub_1B4F0FCC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F0FCC0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v0[8], v1, v6);
  sub_1B4F68374();
  sub_1B4F68364();
  (*(v5 + 8))(v2, v4);
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4F0FDC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F0FE7C(uint64_t a1)
{
  v4 = v1[3];
  v13 = v1[2];
  v5 = v1[4];
  v6 = *(sub_1B4F68374() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE13F0;

  return sub_1B4F0F9D8(a1, v8, v9, v1 + v7, v13, v4, v5);
}

uint64_t WorkoutPlanQueryRequest.init(between:state:limit:offset:sortCriteria:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v39 = a6;
  v40 = a3;
  v41 = a4;
  v34 = a2;
  v37 = sub_1B4F669A4();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v8);
  v36 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B4F65FC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33[-v17];
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1B4F65F94();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F00, &qword_1B4F7B3C0) + 36);
  v35 = a1;
  WorkoutPlanFilter.between(startDate:endDate:)(a1, a1 + v21, v18);
  v22 = *(v11 + 8);
  v22(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v23 = *(sub_1B4F66E34() - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B4F6CF50;
  *(v25 + v24) = v34;
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v25);
  swift_setDeallocating();
  sub_1B4F0BEC8(v25 + v24);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v26 = sub_1B4F65FA4();
  v27 = sub_1B4F65FA4();
  sub_1B4E455E0(v27, v26);
  v28 = sub_1B4F65FB4();
  v29 = sub_1B4F65FB4();
  sub_1B4E455E0(v29, v28);
  sub_1B4F65F94();
  v22(v14, v10);
  v22(v18, v10);
  v30 = v37;
  v31 = v38;
  (*(v7 + 16))(v36, v38, v37);
  sub_1B4F66984();
  (*(v7 + 8))(v31, v30);
  return sub_1B4F10344(v35);
}

uint64_t sub_1B4F10344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F00, &qword_1B4F7B3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CatalogLockup.init(tile:bundleDateRequested:bundleLoadStatus:bundleProgress:bundleReason:completedCount:dateBookmarked:isIncompletePlanWorkout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v104 = a9;
  v105 = a8;
  v106 = a7;
  v107 = a6;
  v108 = a3;
  v94 = a5;
  v109 = a4;
  v99 = a2;
  v103 = a11;
  v110 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F08, &qword_1B4F7B3C8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v102 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v101 = v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v100 = v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F10, &qword_1B4F7B3D0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v111 = v62 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F18, &qword_1B4F7B3D8);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v73 = v62 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F20, &qword_1B4F7B3E0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = v62 - v31;
  v91 = v62 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v62 - v39;
  v92 = v62 - v39;
  v41 = sub_1B4F65E34();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v95 = v62 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B4F64C14();
  v97 = v45;
  v98 = v44;
  v96 = sub_1B4F64B54();
  sub_1B4F64BF4();
  v93 = sub_1B4F64C64();
  sub_1B4E21A90(a2, v40, &qword_1EB8F54A0, &qword_1B4F730F8);
  sub_1B4E21A90(a5, v32, &qword_1EB8F6F20, &qword_1B4F7B3E0);
  v90 = sub_1B4F64BB4();
  v89 = v46;
  v81 = v47;
  v88 = sub_1B4F64C74();
  v87 = sub_1B4F64C34();
  sub_1B4E21A90(v110, v36, &qword_1EB8F54A0, &qword_1B4F730F8);
  v85 = sub_1B4F64B64();
  v84 = sub_1B4F64CD4();
  v74 = v48;
  v83 = sub_1B4F64CA4();
  v82 = v49;
  v80 = v50;
  v79 = sub_1B4F64C84();
  v78 = v51;
  v77 = sub_1B4F64C54();
  v76 = sub_1B4F64B74();
  v75 = v52;
  sub_1B4F64CC4();
  v72 = sub_1B4F64CE4();
  v71 = v53;
  v70 = v54;
  v69 = sub_1B4F64B84();
  v68 = v55;
  v67 = sub_1B4F64BC4();
  v66 = v56;
  v63 = v57;
  v65 = sub_1B4F64C94();
  v64 = v58;
  sub_1B4F64BE4();
  v62[2] = sub_1B4F64CB4();
  v62[1] = v59;
  sub_1B4F64C04();
  sub_1B4F64BD4();
  sub_1B4F64B94();
  sub_1B4F64BA4();
  sub_1B4F64C44();
  sub_1B4F64CF4();
  sub_1B4F64C24();
  sub_1B4F65294();
  sub_1B4DD2BC4(v110, &qword_1EB8F54A0, &qword_1B4F730F8);
  sub_1B4DD2BC4(v94, &qword_1EB8F6F20, &qword_1B4F7B3E0);
  sub_1B4DD2BC4(v99, &qword_1EB8F54A0, &qword_1B4F730F8);
  v60 = sub_1B4F64D04();
  return (*(*(v60 - 8) + 8))(a1, v60);
}

BOOL sub_1B4F10AE0(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_1B4F68D54()) && (a2[2] == a1[2] ? (v5 = a2[3] == a1[3]) : (v5 = 0), (v5 || (sub_1B4F68D54()) && a2[4] == a1[4] && a2[5] == a1[5]))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1B4F68D54();
  }

  return (v6 & 1) == 0;
}

BOOL sub_1B4F10BB4(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B4F68D54()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1B4F68D54()) && a1[4] == a2[4] && a1[5] == a2[5]))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1B4F68D54();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1B4F10C88(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {
    v5 = a2[2] == a1[2] && a2[3] == a1[3];
    if (v5 || (sub_1B4F68D54()) && a2[4] == a1[4] && a2[5] == a1[5])
    {
      return 0;
    }
  }

  return sub_1B4F68D54();
}

uint64_t SystemVersion.prefix.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SystemVersion.letter.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SystemVersion.suffix.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SystemVersion.rawValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall SystemVersion.init(rawValue:)(SeymourClient::SystemVersion_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v6 = sub_1B4F118D4(0xD000000000000034, 0x80000001B4F84250, 0);
  *&v24[0] = countAndFlagsBits;
  *(&v24[0] + 1) = object;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F28, &qword_1B4F7B3E8);
  sub_1B4F119B0();
  sub_1B4DCAC7C();
  v22 = sub_1B4F68784();
  v8 = v7;
  v37._countAndFlagsBits = 0;
  v37._object = 0;
  v36 = 0;
  v35 = 0;
  v9 = sub_1B4F67F64();
  v10 = swift_allocObject();
  v10[2] = countAndFlagsBits;
  v10[3] = object;
  v10[4] = &v37;
  v10[5] = &v36;
  v10[6] = &v35;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B4F11A14;
  *(v11 + 24) = v10;
  v31 = sub_1B4F11A24;
  v32 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1B4F112F8;
  v30 = &block_descriptor_16;
  v12 = _Block_copy(&aBlock);

  [v6 enumerateMatchesInString:v9 options:0 range:v22 usingBlock:{v8, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v37._object;
    if (v37._object && (v15 = v36._object, v16 = v35._object, v36._object) && v35._object)
    {
      v18 = v36._countAndFlagsBits;
      v19 = v35._countAndFlagsBits;
      v24[0] = v37;
      v17 = v37._countAndFlagsBits;
      v24[1] = v36;
      v25 = v35;
      v26._countAndFlagsBits = countAndFlagsBits;
      v26._object = object;
      v20 = v36;
      retstr->value.prefix = v37;
      retstr->value.letter = v20;
      v21 = v26;
      retstr->value.suffix = v25;
      retstr->value.rawValue = v21;
      aBlock = v17;
      v28 = v14;
      v29 = v18;
      v30 = v15;
      v31 = v19;
      v32 = v16;
      v33 = countAndFlagsBits;
      v34 = object;
      sub_1B4F11A4C(v24, v23);
      sub_1B4F11A84(&aBlock);
    }

    else
    {

      retstr->value.suffix = 0u;
      retstr->value.rawValue = 0u;
      retstr->value.prefix = 0u;
      retstr->value.letter = 0u;
    }
  }
}

void sub_1B4F1116C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1)
  {
    v27 = a1;
    if ([v27 numberOfRanges] == 4)
    {
      [v27 rangeAtIndex_];
      sub_1B4F685A4();
      if ((v12 & 1) == 0)
      {
        v13 = sub_1B4F680B4();
        v14 = MEMORY[0x1B8C81870](v13);
        v16 = v15;

        *a6 = v14;
        a6[1] = v16;

        [v27 rangeAtIndex_];
        sub_1B4F685A4();
        if ((v17 & 1) == 0)
        {
          v18 = sub_1B4F680B4();
          v19 = MEMORY[0x1B8C81870](v18);
          v21 = v20;

          *a7 = v19;
          a7[1] = v21;

          [v27 rangeAtIndex_];
          sub_1B4F685A4();
          if ((v22 & 1) == 0)
          {
            v23 = sub_1B4F680B4();
            v24 = MEMORY[0x1B8C81870](v23);
            v26 = v25;

            *a8 = v24;
            a8[1] = v26;

            *a3 = 0;
          }
        }
      }
    }
  }
}

void sub_1B4F112F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

void __swiftcall SystemVersion.init(prefix:letter:suffix:)(SeymourClient::SystemVersion *__return_ptr retstr, Swift::String prefix, Swift::String letter, Swift::String suffix)
{
  object = suffix._object;
  countAndFlagsBits = suffix._countAndFlagsBits;
  v6 = letter._object;
  v7 = letter._countAndFlagsBits;
  retstr->prefix = prefix;
  retstr->letter = letter;
  retstr->suffix = suffix;

  MEMORY[0x1B8C818C0](v7, v6);

  MEMORY[0x1B8C818C0](countAndFlagsBits, object);

  retstr->rawValue = prefix;
}

uint64_t sub_1B4F11420@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t SystemVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B4F689C4();

  MEMORY[0x1B8C818C0](v7, v8);
  MEMORY[0x1B8C818C0](0x3A7869666572500ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v1, v2);
  MEMORY[0x1B8C818C0](0x3A72657474654C0ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v3, v4);
  MEMORY[0x1B8C818C0](0x3A7869666675530ALL, 0xE900000000000020);
  MEMORY[0x1B8C818C0](v5, v6);
  return 0x203A776152;
}

uint64_t static SystemVersion.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B4F68D54()) && (v2 == v4 && v3 == v5 || (sub_1B4F68D54()) && v9 == v7 && v10 == v6)
  {
    return 0;
  }

  return sub_1B4F68D54();
}

uint64_t sub_1B4F1168C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1B4F68D54()) && (v2 == v4 && v3 == v5 || (sub_1B4F68D54()) && v9 == v7 && v10 == v6)
  {
    return 0;
  }

  return sub_1B4F68D54();
}

BOOL sub_1B4F117C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10AE0(v7, v8);
}

BOOL sub_1B4F1180C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10BB4(v7, v8);
}

uint64_t sub_1B4F11858(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1B4F10C88(v7, v8) & 1;
}

uint64_t sub_1B4F118A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1B4F68D54();
  }
}

id sub_1B4F118D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B4F67F64();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1B4F119B0()
{
  result = qword_1EB8F6F30;
  if (!qword_1EB8F6F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F28, &qword_1B4F7B3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F30);
  }

  return result;
}

unint64_t sub_1B4F11AB8()
{
  result = qword_1EB8F6F38;
  if (!qword_1EB8F6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F38);
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

uint64_t sub_1B4F11B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4F11B68(uint64_t result, int a2, int a3)
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

uint64_t MediaMomentStarted.mediaMoment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64D34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaMomentStarted.init(mediaMoment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MediaMomentStarted(uint64_t a1)
{
  result = qword_1EB8F6F40;
  if (!qword_1EB8F6F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultiUserWorkoutUpdated.init(multiUserWorkoutUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MultiUserWorkoutUpdated.multiUserWorkoutUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F665B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MultiUserWorkoutUpdated(uint64_t a1)
{
  result = qword_1EB8F6F50;
  if (!qword_1EB8F6F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F11E78(uint64_t a1)
{
  result = sub_1B4F665B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4F11EF8()
{
  result = qword_1EB8F6F60;
  if (!qword_1EB8F6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F60);
  }

  return result;
}

uint64_t static AssetBundleProgress.+ infix(_:_:)()
{
  v0 = _s13SeymourClient26AssetBundleProgressUpdatedV18debounceIdentifierSSvg_0();
  v2 = v1;
  v3 = sub_1B4F660D4();
  v4 = sub_1B4F65194();
  v10 = __OFADD__(v3, v4);
  v11 = v3 + v4;
  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = sub_1B4F660E4();
  v4 = sub_1B4F651A4();
  v13 = v12 + v4;
  if (__OFADD__(v12, v4))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE35BD0](v4, v5, v6, v7, v8, v9);
  }

  v8 = sub_1B4F66114();
  v9 = v14;
  v4 = v0;
  v5 = v2;
  v6 = v11;
  v7 = v13;

  return MEMORY[0x1EEE35BD0](v4, v5, v6, v7, v8, v9);
}

uint64_t URL.init(multiUserActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  v19 = sub_1B4F64724();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64714();
  sub_1B4F646F4();
  MEMORY[0x1B8C7DF90](0x65735569746C756DLL, 0xE900000000000072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F68, &unk_1B4F7B6E0);
  sub_1B4F646A4();
  *(swift_allocObject() + 16) = xmmword_1B4F7B6D0;
  sub_1B4F65ED4();
  sub_1B4F64674();

  sub_1B4F65EE4();
  sub_1B4F64674();

  v21 = sub_1B4F65EC4();
  sub_1B4F68D04();
  sub_1B4F64674();

  sub_1B4F646C4();
  sub_1B4F64704();
  sub_1B4F647D4();
  v11 = sub_1B4F65EF4();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(v7 + 8))(v10, v19);
  v12 = sub_1B4F64824();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12))
  {
    sub_1B4E97050(v6);
    v14 = 1;
    v15 = v20;
  }

  else
  {
    v16 = v20;
    (*(v13 + 32))(v20, v6, v12);
    v14 = 0;
    v15 = v16;
  }

  return (*(v13 + 56))(v15, v14, 1, v12);
}

uint64_t static Platform.internalOnlyFailure<A>(message:fallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), double a4)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter(deviceClassNumber == 3) & 1) == 0 || (sub_1B4DF7094(88, 0, v8))
    {
      return a3();
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t static Platform.internalOnlyFailure(message:fallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), double a4)
{
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
LABEL_8:
    result = sub_1B4F68B24();
    __break(1u);
    return result;
  }

  v6 = v5;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  result = Platform.internalInstall.getter(deviceClassNumber == 3);
  if (result)
  {
    result = sub_1B4DF7094(88, 0, v9);
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t UnitPreferencesUpdated.unitPreferences.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65C34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnitPreferencesUpdated.init(unitPreferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UnitPreferencesUpdated(uint64_t a1)
{
  result = qword_1EB8F6F70;
  if (!qword_1EB8F6F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F12760(uint64_t a1)
{
  result = sub_1B4F65C34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *EstimatedCaloriesClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *EstimatedCaloriesClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t EstimatedCaloriesClient.queryEstimatedCalories(activityType:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F84340;
  v5._object = 0x80000001B4F84370;
  v5._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 309;
  v11 = a1;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65EA4();
  return v8(&v12, &v11, MEMORY[0x1E69E6810], v9, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v6);
}

uint64_t EstimatedCaloriesClient.queryEstimatedCalories()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x80000001B4F84340;
  v3._object = 0x80000001B4F843A0;
  v3._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 310;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F80, &qword_1B4F7B760);
  v8 = sub_1B4F1326C();
  v9 = sub_1B4F132F0();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t EstimatedCaloriesClient.lookupEstimatedCalories(activityType:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F84340;
  v5._object = 0x80000001B4F843C0;
  v5._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 311;
  v11 = a1;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65EA4();
  return v8(&v12, &v11, MEMORY[0x1E69E6810], v9, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v6);
}

uint64_t EstimatedCaloriesClient.generateEstimatedCalories()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x80000001B4F84340;
  v3._object = 0x80000001B4F843F0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 312;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t sub_1B4F12DE8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F84370;
  v6._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 309;
  v12 = a1;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65EA4();
  return v9(&v13, &v12, MEMORY[0x1E69E6810], v10, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v7);
}

uint64_t sub_1B4F12F1C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843A0;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 310;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F80, &qword_1B4F7B760);
  v9 = sub_1B4F1326C();
  v10 = sub_1B4F132F0();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F1304C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84340;
  v6._object = 0x80000001B4F843C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 311;
  v12 = a1;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65EA4();
  return v9(&v13, &v12, MEMORY[0x1E69E6810], v10, MEMORY[0x1E69CD4B0], MEMORY[0x1E69CD4B8], MEMORY[0x1E69CB9B0], MEMORY[0x1E69CB9B8], ObjectType, v7);
}

uint64_t sub_1B4F13180()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84340;
  v4._object = 0x80000001B4F843F0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 312;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

unint64_t sub_1B4F1326C()
{
  result = qword_1EB8F6F88;
  if (!qword_1EB8F6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F80, &qword_1B4F7B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F88);
  }

  return result;
}

unint64_t sub_1B4F132F0()
{
  result = qword_1EB8F6F90;
  if (!qword_1EB8F6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6F80, &qword_1B4F7B760);
    sub_1B4F13374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F90);
  }

  return result;
}

unint64_t sub_1B4F13374()
{
  result = qword_1EB8F6F98;
  if (!qword_1EB8F6F98)
  {
    sub_1B4F65EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6F98);
  }

  return result;
}

uint64_t CountdownIntent.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F65AB4();

  return sub_1B4F65AC4();
}

uint64_t sub_1B4F134BC(double a1)
{
  sub_1B4F65AB4();

  return sub_1B4F65AC4();
}

uint64_t Trainer.metadata()()
{
  v0 = sub_1B4F64824();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1B4F67914();
  sub_1B4F678D4();
  sub_1B4F678F4();
  sub_1B4F67944();
  sub_1B4F678E4();
  sub_1B4F67904();
  return sub_1B4F65BD4();
}

uint64_t RemoteParticipantPasswordRequired.init(challenge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoteParticipantPasswordRequired.challenge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F674B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteParticipantPasswordRequired(uint64_t a1)
{
  result = qword_1EDB6E280;
  if (!qword_1EDB6E280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F13818(uint64_t a1)
{
  result = sub_1B4F674B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t SessionStatus.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B4F1389C()
{
  result = qword_1EB8F6FA0;
  if (!qword_1EB8F6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6FA0);
  }

  return result;
}

uint64_t sub_1B4F138F0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82760](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F13964(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82760](v2);
  return sub_1B4F68EC4();
}

unint64_t *sub_1B4F139A8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B4F13A34()
{
  result = sub_1B4F67F74();
  qword_1EB8F6FA8 = result;
  unk_1EB8F6FB0 = v1;
  return result;
}

uint64_t static HealthDataConstants.moveModeWorkoutProperty.getter()
{
  if (qword_1EB8F3D50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8F6FA8;

  return v0;
}

uint64_t sub_1B4F13B20()
{
  v0 = sub_1B4F66474();
  __swift_allocate_value_buffer(v0, qword_1EB8F6FB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB8F6FB8);
  v2 = *MEMORY[0x1E69CC258];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static TransportCompression.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D58 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F66474();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F6FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4F13C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F13CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4F13D54()
{
  result = qword_1EB8F7600;
  if (!qword_1EB8F7600)
  {
    sub_1B4F658F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7600);
  }

  return result;
}

void (*sub_1B4F13DD8(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t a3, uint64_t (*a4)(void, void (*)(char *, uint64_t), unint64_t)))(char *, uint64_t)
{
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6FD0, &qword_1B4F7B998);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = sub_1B4F66474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v25 - v19;
  sub_1B4F13C7C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4F13CEC(v11);
    sub_1B4DD3014(a2, a3);
  }

  else
  {
    (*(v13 + 32))(v20, v11, v12);
    (*(v13 + 16))(v16, v20, v12);
    if ((*(v13 + 88))(v16, v12) == *MEMORY[0x1E69CC258])
    {
      v21 = v26(0, a2, a3);
      if (!v4)
      {
        a2 = v21;
      }

      (*(v13 + 8))(v20, v12);
    }

    else
    {
      v22 = sub_1B4F658F4();
      sub_1B4F13D54();
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69CB4E8], v22);
      swift_willThrow();
      a2 = *(v13 + 8);
      a2(v20, v12);
      a2(v16, v12);
    }
  }

  return a2;
}

SeymourClient::TransportEvent_optional __swiftcall TransportEvent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 799)
  {
    if (rawValue > 400)
    {
      if (rawValue <= 499)
      {
        if (rawValue <= 402)
        {
          if (rawValue == 401)
          {
            *v1 = 11;
          }

          else
          {
            *v1 = 12;
          }

          return rawValue;
        }

        switch(rawValue)
        {
          case 403:
            *v1 = 13;
            return rawValue;
          case 404:
            *v1 = 14;
            return rawValue;
          case 405:
            *v1 = 15;
            return rawValue;
        }
      }

      else if (rawValue > 700)
      {
        switch(rawValue)
        {
          case 701:
            *v1 = 19;
            return rawValue;
          case 702:
            *v1 = 20;
            return rawValue;
          case 703:
            *v1 = 21;
            return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 500:
            *v1 = 16;
            return rawValue;
          case 600:
            *v1 = 17;
            return rawValue;
          case 601:
            *v1 = 18;
            return rawValue;
        }
      }
    }

    else if (rawValue <= 200)
    {
      if (rawValue <= 99)
      {
        if (!rawValue)
        {
          *v1 = 0;
          return rawValue;
        }

        if (rawValue == 1)
        {
          *v1 = 1;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 100:
            *v1 = 2;
            return rawValue;
          case 101:
            *v1 = 3;
            return rawValue;
          case 200:
            *v1 = 4;
            return rawValue;
        }
      }
    }

    else if (rawValue > 301)
    {
      switch(rawValue)
      {
        case 302:
          *v1 = 8;
          return rawValue;
        case 303:
          *v1 = 9;
          return rawValue;
        case 400:
          *v1 = 10;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 201:
          *v1 = 5;
          return rawValue;
        case 300:
          *v1 = 6;
          return rawValue;
        case 301:
          *v1 = 7;
          return rawValue;
      }
    }

LABEL_116:
    *v1 = 57;
    return rawValue;
  }

  if (rawValue > 1102)
  {
    if (rawValue <= 1201)
    {
      if (rawValue > 1107)
      {
        if (rawValue > 1199)
        {
          if (rawValue == 1200)
          {
            *v1 = 46;
          }

          else
          {
            *v1 = 47;
          }

          return rawValue;
        }

        if (rawValue == 1108)
        {
          *v1 = 44;
          return rawValue;
        }

        if (rawValue == 1109)
        {
          *v1 = 45;
          return rawValue;
        }
      }

      else
      {
        if (rawValue <= 1104)
        {
          if (rawValue == 1103)
          {
            *v1 = 40;
          }

          else
          {
            *v1 = 41;
          }

          return rawValue;
        }

        if (rawValue == 1105)
        {
          *v1 = 42;
          return rawValue;
        }

        if (rawValue == 1106)
        {
          *v1 = 43;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 1499)
    {
      if (rawValue > 1400)
      {
        if (rawValue == 1401)
        {
          *v1 = 50;
          return rawValue;
        }

        if (rawValue == 1402)
        {
          *v1 = 51;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1202)
        {
          *v1 = 48;
          return rawValue;
        }

        if (rawValue == 1300)
        {
          *v1 = 49;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 1600)
    {
      if (rawValue == 1500)
      {
        *v1 = 52;
        return rawValue;
      }

      if (rawValue == 1600)
      {
        *v1 = 53;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 1601:
          *v1 = 54;
          return rawValue;
        case 1602:
          *v1 = 55;
          return rawValue;
        case 1700:
          *v1 = 56;
          return rawValue;
      }
    }

    goto LABEL_116;
  }

  if (rawValue > 999)
  {
    if (rawValue > 1100)
    {
      if (rawValue == 1101)
      {
        *v1 = 38;
      }

      else
      {
        *v1 = 39;
      }

      return rawValue;
    }

    if (rawValue == 1000)
    {
      *v1 = 36;
      return rawValue;
    }

    if (rawValue == 1100)
    {
      *v1 = 37;
      return rawValue;
    }

    goto LABEL_116;
  }

  switch(rawValue)
  {
    case 800:
      *v1 = 22;
      break;
    case 801:
      *v1 = 23;
      break;
    case 802:
      *v1 = 24;
      break;
    case 803:
      *v1 = 25;
      break;
    case 804:
      *v1 = 26;
      break;
    case 805:
      *v1 = 27;
      break;
    case 806:
      *v1 = 28;
      break;
    case 900:
      *v1 = 29;
      break;
    case 901:
      *v1 = 30;
      break;
    case 902:
      *v1 = 31;
      break;
    case 903:
      *v1 = 32;
      break;
    case 904:
      *v1 = 33;
      break;
    case 905:
      *v1 = 34;
      break;
    case 906:
      *v1 = 35;
      break;
    default:
      goto LABEL_116;
  }

  return rawValue;
}

uint64_t sub_1B4F146A0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F7BBB8[v1]);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F14728(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F7BBB8[v2]);
  return sub_1B4F68EC4();
}

uint64_t getEnumTagSinglePayload for TransportEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4F148B4()
{
  result = qword_1EB8F6FD8;
  if (!qword_1EB8F6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6FD8);
  }

  return result;
}

uint64_t PaceMetricUpdated.paceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64B04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PaceMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PaceMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PaceMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F6FE0;
  if (!qword_1EB8F6FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PaceMetricUpdated.init(paceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F64B04();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PaceMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4F14AB8(uint64_t a1)
{
  result = sub_1B4F64B04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MultiUserParticipantUpdated(uint64_t a1)
{
  result = qword_1EB8F6FF0;
  if (!qword_1EB8F6FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F14F24(uint64_t a1)
{
  result = sub_1B4F66E54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t XPCError.hashValue.getter(char a1)
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](a1 & 1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4F15014()
{
  result = qword_1EB8F7000;
  if (!qword_1EB8F7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7000);
  }

  return result;
}

uint64_t RemoteDisplayConnectionUpdated.connection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66914();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteDisplayConnectionUpdated.init(connection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteDisplayConnectionUpdated(uint64_t a1)
{
  result = qword_1EB8F7008;
  if (!qword_1EB8F7008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F151D0(uint64_t a1)
{
  result = sub_1B4F66914();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4F1523C(uint64_t a1)
{
  v32 = sub_1B4F64F74();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v30[1] = v1;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1B4E259BC(0, v7, 0);
  v8 = v41;
  v40 = a1 + 56;
  result = sub_1B4F688B4();
  v10 = result;
  v11 = 0;
  v35 = v3 + 32;
  v36 = v3 + 16;
  v31 = a1 + 64;
  v12 = v32;
  v33 = v7;
  v34 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v40 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    v37 = v11;
    v39 = *(a1 + 36);
    v15 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v15 * v10, v12);
    v41 = v8;
    v16 = v12;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v38 = v18 + 1;
      sub_1B4E259BC((v17 > 1), v18 + 1, 1);
      v19 = v38;
      v8 = v41;
    }

    *(v8 + 16) = v19;
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v38 = v8;
    v21 = v8 + v20 + v18 * v15;
    v22 = v3;
    result = (*(v3 + 32))(v21, v6, v16);
    v13 = 1 << *(v34 + 32);
    if (v10 >= v13)
    {
      goto LABEL_23;
    }

    v23 = *(v40 + 8 * v14);
    if ((v23 & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    v12 = v16;
    a1 = v34;
    if (v39 != *(v34 + 36))
    {
      goto LABEL_25;
    }

    v24 = v23 & (-2 << (v10 & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v14 << 6;
      v26 = v14 + 1;
      v27 = (v31 + 8 * v14);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1B4DF3104(v10, v39, 0);
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_1B4DF3104(v10, v39, 0);
LABEL_19:
      v12 = v32;
    }

    v11 = v37 + 1;
    v10 = v13;
    v3 = v22;
    v8 = v38;
    if (v37 + 1 == v33)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B4F15560(uint64_t a1)
{
  v36 = sub_1B4F64F74();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = sub_1B4F688B4();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v9, v36);
      v38 = sub_1B4F64F64();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1B4E257A4((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B4DF3104(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t Set<>.themes()(uint64_t a1)
{
  v32 = sub_1B4F663F4();
  MEMORY[0x1EEE9AC00](v32, v2);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v3;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v29[0] = v3 + 8;
  v29[1] = v3 + 16;
  v33 = a1;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v34 = v12;
LABEL_11:
    v14 = v32;
    v15 = v30;
    v16 = v31;
    (*(v31 + 16))(v30, *(v33 + 48) + *(v31 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v32);
    v17 = sub_1B4F663E4();
    v18 = sub_1B4F1523C(v17);

    result = (*(v16 + 8))(v15, v14);
    v19 = *(v18 + 16);
    v12 = v34;
    v20 = v34[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v21 > v12[3] >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v12 = sub_1B4E78BA0(isUniquelyReferenced_nonNull_native, v23, 1, v12);
    }

    v8 &= v8 - 1;
    if (*(v18 + 16))
    {
      v24 = (v12[3] >> 1) - v12[2];
      result = sub_1B4F64F74();
      if (v24 < v19)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v25 = v12[2];
        v26 = __OFADD__(v25, v19);
        v27 = v25 + v19;
        if (v26)
        {
          goto LABEL_28;
        }

        v12[2] = v27;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v28 = sub_1B4DF2CBC(v12);

      return v28;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v34 = v12;
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

char *Set<>.themeIdentifiers()(uint64_t a1)
{
  v30 = sub_1B4F663F4();
  MEMORY[0x1EEE9AC00](v30, v2);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v27[0] = v3 + 8;
  v27[1] = v3 + 16;
  v31 = a1;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v32 = v12;
LABEL_11:
    v14 = v30;
    v15 = v28;
    v16 = v29;
    (*(v29 + 16))(v28, *(v31 + 48) + *(v29 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v30);
    v17 = sub_1B4F663E4();
    v18 = sub_1B4F15560(v17);

    result = (*(v16 + 8))(v15, v14);
    v19 = *(v18 + 16);
    v12 = v32;
    v20 = *(v32 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_25;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v21 > *(v12 + 3) >> 1)
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_1B4E7884C(result, v22, 1, v12);
      v12 = result;
    }

    v8 &= v8 - 1;
    if (*(v18 + 16))
    {
      if ((*(v12 + 3) >> 1) - *(v12 + 2) < v19)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v23 = *(v12 + 2);
        v24 = __OFADD__(v23, v19);
        v25 = v23 + v19;
        if (v24)
        {
          goto LABEL_28;
        }

        *(v12 + 2) = v25;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v26 = sub_1B4DF2208(v12);

      return v26;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v32 = v12;
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MultiUserSessionIdentities.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66E64();

  return sub_1B4F66E74();
}

uint64_t sub_1B4F15E44(double a1)
{
  sub_1B4F66E64();

  return sub_1B4F66E74();
}

uint64_t sub_1B4F15EBC()
{
  v0 = sub_1B4F67134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4F65F84();
  __swift_allocate_value_buffer(v5, qword_1EB8F7018);
  __swift_project_value_buffer(v5, qword_1EB8F7018);
  (*(v1 + 104))(v4, *MEMORY[0x1E69CCE50], v0);
  return sub_1B4F65F64();
}

uint64_t static RemoteParticipant.local.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D60 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F65F84();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F7018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t dispatch thunk of FetchedResourceGating.fetch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for CatalogUpdated(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t ContentAvailabilityUpdated.init(availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ContentAvailabilityUpdated.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *SyncClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));

  result = swift_allocObject();
  result[2] = v10;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  result[5] = a1;
  result[6] = a2;
  return result;
}

void *SyncClient.__allocating_init(connection:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B4F16DD0(a1, a4, a5, v5, ObjectType, a2, a3);
}

uint64_t SyncClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SyncClient.fetchRemoteSyncables(forced:)(char a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v7 = 257;
  v6 = a1;
  return (*(v3 + 16))(&v7, &v6, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v3);
}

uint64_t SyncClient.fetchRemoteSyncableCounts(for:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 262;
  v11 = a1;
  v5 = *(v3 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v7 = sub_1B4F658E4();
  v8 = sub_1B4F16E2C();
  v9 = sub_1B4F16EB0();
  return v5(&v12, &v11, v6, v7, v8, v9, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v3);
}

uint64_t sub_1B4F167A8(__int16 a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = a1;
  return (*(v3 + 8))(&v6, ObjectType, v3);
}

Swift::Void __swiftcall SyncClient.startSync()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = 36;
  (*(v1 + 40))(&v3, ObjectType, v1);
}

uint64_t sub_1B4F168A0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v12 = a1;
  return (*(v9 + 24))(&v12, a2, a3, a4, ObjectType, v9);
}

uint64_t sub_1B4F1693C(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = a2;
  v12 = a1;
  v7 = *(v5 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v9 = sub_1B4F16E2C();
  v10 = sub_1B4F16EB0();
  return v7(&v13, &v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F169F8(char a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v7 = 257;
  v6 = a1;
  return (*(v3 + 16))(&v7, &v6, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v3);
}

uint64_t sub_1B4F16A88(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 262;
  v11 = a1;
  v5 = *(v3 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v7 = sub_1B4F658E4();
  v8 = sub_1B4F16E2C();
  v9 = sub_1B4F16EB0();
  return v5(&v12, &v11, v6, v7, v8, v9, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v3);
}

uint64_t sub_1B4F16B88(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 265;
  v10 = a1;
  v5 = *(v3 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7030, &qword_1B4F7C000);
  v7 = sub_1B4F16E2C();
  v8 = sub_1B4F16EB0();
  return v5(&v11, &v10, v6, v7, v8, ObjectType, v3);
}

uint64_t sub_1B4F16C54(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *(*v3 + 24);
  ObjectType = swift_getObjectType();
  v8 = a3;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F16CE0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*v6 + 24);
  ObjectType = swift_getObjectType();
  v14 = a3;
  return (*(v11 + 24))(&v14, a4, a5, a6, ObjectType, v11);
}

uint64_t sub_1B4F16D74()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 36;
  return (*(v1 + 40))(&v4, ObjectType, v1);
}

void *sub_1B4F16DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a6;
  result[4] = a7;
  result[5] = a2;
  result[6] = a3;
  return result;
}

unint64_t sub_1B4F16E2C()
{
  result = qword_1EDB6DAC8;
  if (!qword_1EDB6DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7030, &qword_1B4F7C000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAC8);
  }

  return result;
}

unint64_t sub_1B4F16EB0()
{
  result = qword_1EDB6DAC0;
  if (!qword_1EDB6DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7030, &qword_1B4F7C000);
    sub_1B4F16F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAC0);
  }

  return result;
}

unint64_t sub_1B4F16F34()
{
  result = qword_1EDB70010;
  if (!qword_1EDB70010)
  {
    sub_1B4F67AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70010);
  }

  return result;
}

uint64_t SessionUpdated.init(sessionUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionUpdated.sessionUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65504();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionUpdated(uint64_t a1)
{
  result = qword_1EDB70DD8;
  if (!qword_1EDB70DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionDeactivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SessionDeactivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SessionDeactivated(uint64_t a1)
{
  result = qword_1EDB70B80;
  if (!qword_1EDB70B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackUpdated.playback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67A34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PlaybackUpdated(uint64_t a1)
{
  result = qword_1EDB6EF10;
  if (!qword_1EDB6EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackUpdated.init(playback:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F67A34();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PlaybackUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t DistributedSessionActivated.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F678C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistributedSessionActivated.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for DistributedSessionActivated(uint64_t a1)
{
  result = qword_1EDB6E630;
  if (!qword_1EDB6E630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static EngagementRequestProcessor.isAppInstalledRequest(_:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v1 = v15[0];
  v11 = sub_1B4F661A4();
  sub_1B4F68954();
  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v2 = sub_1B4DF4440(v14);
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B4DC4F2C(*(v1 + 56) + 32 * v2, v15);
  sub_1B4DF4850(v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    return v9 & 1;
  }

  v4 = v11;
  v12 = sub_1B4F661C4();
  v13 = v5;
  sub_1B4F68954();
  if (!*(v4 + 16) || (v6 = sub_1B4DF4440(v14), (v7 & 1) == 0))
  {
LABEL_11:

    sub_1B4DF4850(v14);
    goto LABEL_12;
  }

  sub_1B4DC4F2C(*(v4 + 56) + 32 * v6, v15);
  sub_1B4DF4850(v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v12 == sub_1B4F661D4() && v13 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();
  }

  return v9 & 1;
}

uint64_t static EngagementRequestProcessor.validateEngagementRequest(_:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  if (!swift_dynamicCast())
  {
    v7 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69CB5D0], v7);
    *(swift_allocObject() + 16) = v8;
    return sub_1B4F67604();
  }

  v1 = v20[0];
  v17 = sub_1B4F66194();
  v18 = v2;
  sub_1B4F68954();
  if (!*(v1 + 16) || (v3 = sub_1B4DF4440(v19), (v4 & 1) == 0))
  {

    sub_1B4DF4850(v19);
    goto LABEL_9;
  }

  sub_1B4DC4F2C(*(v1 + 56) + 32 * v3, v20);
  sub_1B4DF4850(v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v10 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69CB5E0], v10);
    *(swift_allocObject() + 16) = v11;
    return sub_1B4F67604();
  }

  v5 = sub_1B4F67FF4();
  if (v5 >= sub_1B4F661B4())
  {

    v14 = sub_1B4F65AF4();
    sub_1B4F17B4C();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69CB5C8], v14);
    *(swift_allocObject() + 16) = v15;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v17;
    *(v6 + 24) = v18;
  }

  return sub_1B4F67604();
}

unint64_t sub_1B4F17B4C()
{
  result = qword_1EB8F7038;
  if (!qword_1EB8F7038)
  {
    sub_1B4F65AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7038);
  }

  return result;
}

uint64_t sub_1B4F17BA4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void HealthKitSource.init(_:)(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_1B4F67F74();

  sub_1B4F65B14();
}

uint64_t HealthWorkoutSession.SessionState.init(state:elapsedTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  *(a2 + 8) = a3;
  return result;
}

NSObject *HealthWorkoutSession.init(session:healthStore:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v150 = a2;
  v155 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v137 = &v130 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v135 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v138 = &v130 - v12;
  v139 = sub_1B4F65804();
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v13);
  v136 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v134 = &v130 - v17;
  v18 = sub_1B4F65CA4();
  v132 = *(v18 - 8);
  v133 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v130 - v24;
  v26 = sub_1B4F678C4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  v32 = sub_1B4F679A4();
  v33 = *(*(v32 - 8) + 56);
  v146 = v31;
  v33(&v31[v3], 1, 1, v32);
  v34 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  v35 = sub_1B4F67B64();
  v145 = v34;
  *&v34[v3] = v35;
  v36 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  v37 = sub_1B4F67B64();
  v144 = v36;
  *&v36[v3] = v37;
  v38 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  v39 = sub_1B4F67B64();
  v143 = v38;
  *&v3[v38] = v39;
  v40 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  v41 = sub_1B4F67B64();
  v142 = v40;
  *&v3[v40] = v41;
  sub_1B4DD8804(0, &unk_1EB8F70A0, 0x1E696C5A8);
  v149 = v27;
  v42 = v27;
  v43 = v155;
  (*(v42 + 16))(v30, v155, v26);
  v44 = v147;
  v45 = sub_1B4E4505C(v30);
  if (!v44)
  {
    v61 = v45;
    v147 = v25;
    v130 = v21;
    v131 = v3;
    v140 = v26;
    v62 = v150[7];
    __swift_project_boxed_opaque_existential_1(v150, v150[3]);
    v63 = *(v62 + 16);
    v64 = v61;
    v66 = v63();

    v67 = v66;
    v68 = [v67 associatedWorkoutBuilder];
    v69 = v150;
    v70 = v150[3];
    v71 = v150[7];
    __swift_project_boxed_opaque_existential_1(v150, v70);
    v72 = *(v71 + 24);
    v146 = v64;
    v73 = v72(v64, v70, v71);
    [v68 setDataSource_];

    v74 = v131;
    v145 = v67;
    *&v131[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession] = v67;
    *&v74[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder] = v68;
    v144 = v68;
    v75 = sub_1B4F676B4();
    v76 = &v74[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier];
    *v76 = v75;
    v76[1] = v77;
    v78 = v69[3];
    v79 = v69[5];
    __swift_project_boxed_opaque_existential_1(v69, v78);
    v80 = (*(v79 + 56))(v78, v79);
    v143 = 0;
    v81 = v80 & 1;
    v82 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70C8, &unk_1B4F7C1E0);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000029;
    v147 = (inited + 32);
    *(inited + 16) = xmmword_1B4F7C190;
    *(inited + 40) = 0x80000001B4F82480;
    v84 = v134;
    sub_1B4F67734();
    v85 = sub_1B4F655E4();
    v87 = v86;
    v88 = v82;
    v89 = v141 + 8;
    v142 = *(v141 + 8);
    v142(v84, v88);
    v90 = MEMORY[0x1E69E6158];
    *(inited + 48) = v85;
    *(inited + 56) = v87;
    *(inited + 72) = v90;
    *(inited + 80) = 0xD000000000000022;
    *(inited + 88) = 0x80000001B4F82450;
    *(inited + 96) = sub_1B4F676B4();
    *(inited + 104) = v91;
    *(inited + 120) = v90;
    *(inited + 128) = 0xD00000000000001ALL;
    *(inited + 136) = 0x80000001B4F84440;
    v92 = sub_1B4F65CD4();
    *(inited + 168) = v90;
    *(inited + 144) = v92;
    *(inited + 152) = v93;
    if (qword_1EB8F3D50 != -1)
    {
      swift_once();
    }

    v94 = unk_1EB8F6FB0;
    *(inited + 176) = qword_1EB8F6FA8;
    *(inited + 184) = v94;
    v141 = v89;
    if (v81)
    {
      v95 = 2;
    }

    else
    {
      v95 = 1;
    }

    v96 = MEMORY[0x1E69E6530];
    *(inited + 192) = v95;
    *(inited + 216) = v96;
    *(inited + 224) = 0xD00000000000002BLL;
    *(inited + 232) = 0x80000001B4F84460;

    sub_1B4F67794();
    v97 = v138;
    v98 = sub_1B4F65BC4();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (v100(v97, 1, v98) == 1)
    {
      sub_1B4DD2BC4(v97, &qword_1EB8F4098, &unk_1B4F78910);
      *(inited + 240) = 0u;
      *(inited + 256) = 0u;
    }

    else
    {
      v101 = sub_1B4F65BB4();
      *(inited + 264) = MEMORY[0x1E69E6158];
      *(inited + 240) = v101;
      *(inited + 248) = v102;
      (*(v99 + 8))(v97, v98);
    }

    *(inited + 272) = 0xD00000000000002CLL;
    *(inited + 280) = 0x80000001B4F84490;
    v103 = v135;
    sub_1B4F67794();
    if (v100(v103, 1, v98) == 1)
    {
      sub_1B4DD2BC4(v103, &qword_1EB8F4098, &unk_1B4F78910);
      v104 = v136;
      v105 = v137;
      v106 = v139;
    }

    else
    {
      v107 = sub_1B4F65BA4();
      v108 = v103;
      v110 = v109;
      (*(v99 + 8))(v108, v98);
      v104 = v136;
      v105 = v137;
      v106 = v139;
      if (v110)
      {
        *(inited + 312) = MEMORY[0x1E69E6158];
        *(inited + 288) = v107;
        *(inited + 296) = v110;
LABEL_23:
        *(inited + 320) = sub_1B4F67F74();
        *(inited + 328) = v111;
        *(inited + 360) = MEMORY[0x1E69E6370];
        *(inited + 336) = 1;
        *(inited + 368) = sub_1B4F67F74();
        *(inited + 376) = v112;
        sub_1B4F67734();
        v113 = sub_1B4F655E4();
        v114 = v104;
        v116 = v115;
        v142(v114, v106);
        *(inited + 408) = MEMORY[0x1E69E6158];
        *(inited + 384) = v113;
        *(inited + 392) = v116;
        v117 = sub_1B4E2BFE8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70D0, &qword_1B4F6CFF0);
        swift_arrayDestroy();
        v118 = v143;
        v119 = sub_1B4F18D5C(v117);
        v147 = v118;

        v120 = v131;
        *&v131[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_metadata] = v119;
        v152.receiver = v120;
        v152.super_class = ObjectType;
        v121 = objc_msgSendSuper2(&v152, sel_init);
        v122 = v145;
        [v145 setDelegate_];

        v123 = v144;
        [v144 setDelegate_];
        v124 = sub_1B4F68324();
        v125 = *(*(v124 - 8) + 56);
        v125(v105, 1, 1, v124);
        v126 = swift_allocObject();
        v126[2] = 0;
        v126[3] = 0;
        v126[4] = v121;
        v127 = v121;
        sub_1B4E4E620(0, 0, v105, &unk_1B4F7C1F8, v126);

        v125(v105, 1, 1, v124);
        v128 = swift_allocObject();
        v128[2] = 0;
        v128[3] = 0;
        v128[4] = v127;
        v50 = v127;
        sub_1B4E4E620(0, 0, v105, &unk_1B4F7C208, v128);

        v125(v105, 1, 1, v124);
        v129 = swift_allocObject();
        v129[2] = 0;
        v129[3] = 0;
        v129[4] = v50;
        sub_1B4E4E620(0, 0, v105, &unk_1B4F7C218, v129);

        (*(v149 + 8))(v155, v140);
        __swift_destroy_boxed_opaque_existential_1Tm(v150);
        return v50;
      }
    }

    *(inited + 288) = 0u;
    *(inited + 304) = 0u;
    goto LABEL_23;
  }

  v46 = v43;
  v147 = v44;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v47 = sub_1B4F67C54();
  __swift_project_value_buffer(v47, qword_1EDB6DF00);
  v48 = v147;
  v49 = v147;
  v50 = sub_1B4F67C34();
  v51 = sub_1B4F685E4();

  v52 = v46;
  if (os_log_type_enabled(v50, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v140 = v26;
    v55 = v54;
    v151[0] = v54;
    *v53 = 136315138;
    swift_getErrorValue();
    v56 = MEMORY[0x1B8C826C0](v153, v154);
    v58 = sub_1B4DC4F88(v56, v57, v151);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1B4DC2000, v50, v51, "HealthWorkoutSession - failed to make HKWorkoutConfiguration: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v59 = v55;
    v26 = v140;
    MEMORY[0x1B8C831D0](v59, -1, -1);
    v60 = v150;
    MEMORY[0x1B8C831D0](v53, -1, -1);
  }

  else
  {

    v60 = v150;
  }

  swift_willThrow();
  (*(v149 + 8))(v52, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  sub_1B4DD2BC4(v146 + v3, &qword_1EB8F4068, &qword_1B4F6A5C0);

  swift_deallocPartialClassInstance();
  return v50;
}

uint64_t sub_1B4F18D5C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B4F25690(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1B4F25690(&v35, &v28);
    if (v29)
    {
      sub_1B4E2C940(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1B4E2C940(v33, v30);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_1B4E27F34(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_1B4E2C940(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v10 = v32;
    }

    else
    {

      sub_1B4DD2BC4(&v34, &unk_1EB8F72F0, &qword_1B4F7C4D0);
      v10 = &v28;
    }

    result = sub_1B4DD2BC4(v10, &unk_1EB8F7680, &qword_1B4F795D0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B4F19028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B4F64FD4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D8, &unk_1B4F7C4C0);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19264, 0, 0);
}

uint64_t sub_1B4F19264()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[17] = *(v0[2] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8, MEMORY[0x1E699F0F0]);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19360, v5, v4);
}

uint64_t sub_1B4F19360()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1B4F67B44();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4F193F8, 0, 0);
}

uint64_t sub_1B4F193F8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1B4F68384();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F194D4;
  v5 = v0[14];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1B4F194D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4F195D0, 0, 0);
}

uint64_t sub_1B4F195D0()
{
  v31 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[4];
    v10 = sub_1B4F67C54();
    __swift_project_value_buffer(v10, qword_1EDB6DFB0);
    (*(v9 + 16))(v6, v7, v8);
    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685E4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[5];
    v15 = v0[6];
    v17 = v0[3];
    v16 = v0[4];
    if (v13)
    {
      v29 = v0[6];
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v18 = 136315138;
      sub_1B4F25648(&unk_1EB8F72E0, MEMORY[0x1E69CB198], MEMORY[0x1E69CB1A8]);
      v19 = sub_1B4F68D04();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v14, v17);
      v23 = sub_1B4DC4F88(v19, v21, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1B4DC2000, v11, v12, "HealthWorkoutSession: caloriesUpdated: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C831D0](v28, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);

      v22(v29, v17);
    }

    else
    {

      v24 = *(v16 + 8);
      v24(v14, v17);
      v24(v15, v17);
    }

    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_1B4F194D4;
    v26 = v0[14];
    v27 = v0[7];

    return MEMORY[0x1EEE6D9C8](v27, 0, 0, v26);
  }
}

uint64_t sub_1B4F19960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B4F65B84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72C0, &unk_1B4F7C4B0);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19B9C, 0, 0);
}

uint64_t sub_1B4F19B9C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[17] = *(v0[2] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8, MEMORY[0x1E699F0F0]);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F19C98, v5, v4);
}

uint64_t sub_1B4F19C98()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1B4F67B44();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4F19D30, 0, 0);
}

uint64_t sub_1B4F19D30()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1B4F68384();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F19E0C;
  v5 = v0[14];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1B4F19E0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4F19F08, 0, 0);
}

uint64_t sub_1B4F19F08()
{
  v31 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[4];
    v10 = sub_1B4F67C54();
    __swift_project_value_buffer(v10, qword_1EDB6DFB0);
    (*(v9 + 16))(v6, v7, v8);
    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685E4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[5];
    v15 = v0[6];
    v17 = v0[3];
    v16 = v0[4];
    if (v13)
    {
      v29 = v0[6];
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v18 = 136315138;
      sub_1B4F25648(&qword_1EB8F72C8, MEMORY[0x1E69CB618], MEMORY[0x1E69CB628]);
      v19 = sub_1B4F68D04();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v14, v17);
      v23 = sub_1B4DC4F88(v19, v21, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1B4DC2000, v11, v12, "HealthWorkoutSession: heartRateUpdated: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C831D0](v28, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);

      v22(v29, v17);
    }

    else
    {

      v24 = *(v16 + 8);
      v24(v14, v17);
      v24(v15, v17);
    }

    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_1B4F19E0C;
    v26 = v0[14];
    v27 = v0[7];

    return MEMORY[0x1EEE6D9C8](v27, 0, 0, v26);
  }
}

uint64_t sub_1B4F1A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F72B0, &unk_1B4F7C4A0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A434, 0, 0);
}

uint64_t sub_1B4F1A434()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[14] = *(v0[4] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0, MEMORY[0x1E699F0F0]);
  v5 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A52C, v5, v4);
}

uint64_t sub_1B4F1A52C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1B4F67B44();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A5C4, 0, 0);
}

uint64_t sub_1B4F1A5C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1B4F68384();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F1A6A0;
  v5 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1B4F1A6A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4F1A79C, 0, 0);
}

uint64_t sub_1B4F1A79C()
{
  if ((~v0[2] & 0xFF00000000) != 0)
  {
    v3 = v0[3];
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB6DFB0);
    v5 = sub_1B4F67C34();
    v6 = sub_1B4F685E4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1B4DC2000, v5, v6, "HealthWorkoutSession: sessionStateUpdated: %f", v7, 0xCu);
      MEMORY[0x1B8C831D0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1B4F1A6A0;
    v9 = v0[11];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v9);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v1 = v0[1];

    return v1();
  }
}

id HealthWorkoutSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthWorkoutSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthWorkoutSession.makeCalorieStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1AC04, 0, 0);
}

uint64_t sub_1B4F1AC04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[4] = sub_1B4E21468(&qword_1EB8F70F0, &qword_1EB8F70E8, &qword_1B4F7C238, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeDistanceStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7100, &qword_1B4F7C248);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1AE24, 0, 0);
}

uint64_t sub_1B4F1AE24()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7108, &qword_1B4F7C250);
  v4[4] = sub_1B4E21468(&qword_1EB8F7110, &qword_1EB8F7108, &qword_1B4F7C250, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeHeartRateStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B044, 0, 0);
}

uint64_t sub_1B4F1B044()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[4] = sub_1B4E21468(&qword_1EB8F7130, &qword_1EB8F7128, &qword_1B4F7C268, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25750, v6, v5);
}

uint64_t HealthWorkoutSession.makeSessionStateStream()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B264, 0, 0);
}

uint64_t sub_1B4F1B264()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[4] = sub_1B4E21468(&qword_1EB8F7150, &qword_1EB8F7148, &qword_1B4F7C280, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B3B8, v6, v5);
}

uint64_t sub_1B4F1B3B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1B4F67B44();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t HealthWorkoutSession.activate()()
{
  v1[34] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1B518, 0, 0);
}

uint64_t sub_1B4F1B518()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v9 = *(v0[34] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  v4 = sub_1B4F67EE4();
  v0[38] = v4;
  v0[2] = v0;
  v0[3] = sub_1B4F1B724;
  swift_continuation_init();
  v0[25] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  v6 = *(v2 + 32);
  v0[40] = v6;
  v0[41] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v6(boxed_opaque_existential_1, v1, v3);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B4ECD214;
  v0[21] = &block_descriptor_17;
  [v9 addMetadata:v4 completion:v0 + 18];
  v7 = *(v2 + 8);
  v0[42] = v7;
  v0[43] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B4F1B724()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1B4F1BC98;
  }

  else
  {
    v2 = sub_1B4F1B834;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1B834()
{
  v8 = *(v0 + 336);
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);

  v7 = *(v4 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1B4F1B9E0;
  swift_continuation_init();
  *(v0 + 264) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  sub_1B4F68294();
  v1(boxed_opaque_existential_1, v2, v3);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1B4ECD214;
  *(v0 + 232) = &block_descriptor_12;
  [v7 prepareWithCompletion_];
  v8(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B4F1B9E0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_1B4F1BD14;
  }

  else
  {
    v2 = sub_1B4F1BAF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1BAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1BB84;

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1BB84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F1BC98(uint64_t a1)
{
  v2 = *(v1 + 304);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B4F1BD14(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B4F1BD88(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1BE28, 0, 0);
}

uint64_t sub_1B4F1BE28()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 80);
  [*(v2 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder) elapsedTime];
  v5 = v4;
  sub_1B4F684B4();
  sub_1B4F67964();
  v6 = sub_1B4F679A4();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  swift_beginAccess();
  sub_1B4F255D8(v1, v2 + v7);
  swift_endAccess();
  *(v0 + 72) = *(v2 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  *(v0 + 40) = v3;
  *(v0 + 44) = 1;
  *(v0 + 48) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0, MEMORY[0x1E699F0F0]);
  v9 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1BFD0, v9, v8);
}

uint64_t sub_1B4F1BFD0()
{
  sub_1B4F67B54();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HealthWorkoutSession.pause()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1C108, 0, 0);
}

uint64_t sub_1B4F1C108()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  v2 = [v1 state];
  if ((v2 - 3) < 4 || v2 == 1)
  {
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B4F67C54();
    __swift_project_value_buffer(v4, qword_1EDB6DFB0);
    v5 = sub_1B4F67C34();
    v6 = sub_1B4F685E4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B4DC2000, v5, v6, "HealthWorkoutSession: The workout is not going.", v7, 2u);
    v8 = v7;
  }

  else
  {
    if (v2 == 2)
    {
      v12 = v0[20];
      v11 = v0[21];
      v13 = v0[19];
      v0[2] = v0;
      v0[3] = sub_1B4F1C4C0;
      swift_continuation_init();
      v0[17] = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F68294();
      (*(v12 + 32))(boxed_opaque_existential_1, v11, v13);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1B4ECD214;
      v0[13] = &block_descriptor_17_0;
      [v1 pauseWithCompletion_];
      (*(v12 + 8))(boxed_opaque_existential_1, v13);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v15 = v0[18];
    v16 = sub_1B4F67C54();
    __swift_project_value_buffer(v16, qword_1EDB6DFB0);
    v17 = v15;
    v5 = sub_1B4F67C34();
    v18 = sub_1B4F685E4();
    v19 = os_log_type_enabled(v5, v18);
    v20 = v0[18];
    if (!v19)
    {

      goto LABEL_11;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = [v1 state];

    _os_log_impl(&dword_1B4DC2000, v5, v18, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v21, 0xCu);
    v8 = v21;
  }

  MEMORY[0x1B8C831D0](v8, -1, -1);
LABEL_11:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B4F1C4C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1B4F1C778;
  }

  else
  {
    v2 = sub_1B4F1C5D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1C5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1C664;

  return sub_1B4F1BD88(1);
}

uint64_t sub_1B4F1C664()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F1C778(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t HealthWorkoutSession.resume()()
{
  v1[50] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v3 = sub_1B4F64964();
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1C914, 0, 0);
}

uint64_t sub_1B4F1C914()
{
  v1 = *(v0[50] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  v2 = [v1 state];
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v21 = v0[52];
      v20 = v0[53];
      v22 = v0[51];
      v0[2] = v0;
      v0[3] = sub_1B4F1D470;
      swift_continuation_init();
      v0[33] = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F68294();
      (*(v21 + 32))(boxed_opaque_existential_1, v20, v22);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1B4ECD214;
      v0[29] = &block_descriptor_22;
      [v1 resumeWithCompletion_];
      (*(v21 + 8))(boxed_opaque_existential_1, v22);
      v14 = v0 + 2;
      goto LABEL_15;
    }

    if (v2 == 6)
    {
      goto LABEL_10;
    }

    if (v2 != 5)
    {
LABEL_18:
      if (qword_1EDB6DFA8 != -1)
      {
        swift_once();
      }

      v24 = v0[50];
      v25 = sub_1B4F67C54();
      __swift_project_value_buffer(v25, qword_1EDB6DFB0);
      v26 = v24;
      v16 = sub_1B4F67C34();
      v27 = sub_1B4F685E4();
      v28 = os_log_type_enabled(v16, v27);
      v29 = v0[50];
      if (!v28)
      {

        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = [v1 state];

      _os_log_impl(&dword_1B4DC2000, v16, v27, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v30, 0xCu);
      v19 = v30;
LABEL_22:
      MEMORY[0x1B8C831D0](v19, -1, -1);
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (v2 != 1)
  {
    if (v2 == 2)
    {
LABEL_25:

      v31 = v0[1];

      return v31();
    }

    if (v2 != 3)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4F67C54();
    __swift_project_value_buffer(v15, qword_1EDB6DFB0);
    v16 = sub_1B4F67C34();
    v17 = sub_1B4F685E4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_24;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "HealthWorkoutSession: The workout has ended. Cannot resume.", v18, 2u);
    v19 = v18;
    goto LABEL_22;
  }

  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[51];
  v8 = v0[52];
  sub_1B4F64954();
  v9 = sub_1B4F648F4();
  v0[57] = v9;
  v10 = *(v3 + 8);
  v0[58] = v10;
  v0[59] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v0[10] = v0;
  v0[11] = sub_1B4F1CEA4;
  swift_continuation_init();
  v0[41] = v7;
  v11 = __swift_allocate_boxed_opaque_existential_1(v0 + 38);
  v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  v12 = *(v8 + 32);
  v0[61] = v12;
  v0[62] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11, v5, v7);
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = sub_1B4ECD214;
  v0[37] = &block_descriptor_27;
  [v1 startActivityWithDate:v9 completion:?];
  v13 = *(v8 + 8);
  v0[63] = v13;
  v0[64] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11, v7);
  v14 = v0 + 10;
LABEL_15:

  return MEMORY[0x1EEE6DEC8](v14);
}

uint64_t sub_1B4F1CEA4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 520) = v1;
  if (v1)
  {
    v2 = sub_1B4F1D7C4;
  }

  else
  {
    v2 = sub_1B4F1CFB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1CFB4()
{
  v12 = *(v0 + 504);
  v10 = *(v0 + 488);
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  v11 = *(v5 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  sub_1B4F64954();
  v7 = sub_1B4F648F4();
  *(v0 + 528) = v7;
  v1(v2, v4);
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_1B4F1D194;
  swift_continuation_init();
  *(v0 + 392) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
  sub_1B4F68294();
  v10(boxed_opaque_existential_1, v3, v6);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1B4ECD214;
  *(v0 + 360) = &block_descriptor_30;
  [v11 beginCollectionWithStartDate:v7 completion:?];
  v12(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B4F1D194()
{
  v1 = *(*v0 + 176);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_1B4F1D84C;
  }

  else
  {
    v2 = sub_1B4F1D2A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1D2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1D340;

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1D340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F1D470()
{
  v1 = *(*v0 + 48);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_1B4F1D744;
  }

  else
  {
    v2 = sub_1B4F1D580;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1D580()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1D614;

  return sub_1B4F1BD88(0);
}

uint64_t sub_1B4F1D614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F1D744(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B4F1D7C4(uint64_t a1)
{
  v2 = *(v1 + 456);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B4F1D84C(uint64_t a1)
{
  v2 = *(v1 + 528);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t HealthWorkoutSession.deactivate()()
{
  v1[83] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
  v1[84] = v2;
  v1[85] = *(v2 - 8);
  v1[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v1[87] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v1[88] = v3;
  v1[89] = *(v3 - 8);
  v1[90] = swift_task_alloc();
  v4 = sub_1B4F64964();
  v1[91] = v4;
  v1[92] = *(v4 - 8);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F1DAA8, 0, 0);
}

uint64_t sub_1B4F1DAA8(uint64_t a1)
{
  v79 = v1;
  sub_1B4F64954();
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 752);
  v3 = *(v1 + 744);
  v4 = *(v1 + 736);
  v5 = *(v1 + 728);
  v6 = *(v1 + 664);
  v7 = sub_1B4F67C54();
  *(v1 + 760) = __swift_project_value_buffer(v7, qword_1EDB6DFB0);
  (*(v4 + 16))(v3, v2, v5);
  v8 = v6;
  v9 = sub_1B4F67C34();
  v10 = sub_1B4F685E4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 744);
  v13 = *(v1 + 736);
  v14 = *(v1 + 728);
  if (v11)
  {
    v15 = *(v1 + 664);
    v16 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v78 = v76;
    *v16 = 136315394;
    *(v16 + 4) = sub_1B4DC4F88(*(v15 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v15 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v78);
    *(v16 + 12) = 2080;
    sub_1B4F25648(&unk_1EB8F7188, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v17 = sub_1B4F68D04();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_1B4DC4F88(v17, v19, &v78);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1B4DC2000, v9, v10, "HealthWorkoutSession: Ending workout: %s at %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v76, -1, -1);
    MEMORY[0x1B8C831D0](v16, -1, -1);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v14);
  }

  *(v1 + 768) = v20;
  v22 = *(*(v1 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workoutSession);
  *(v1 + 776) = v22;
  v23 = [v22 state];
  if (v23 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << v23) & 0x14) != 0)
  {
    v35 = *(v1 + 720);
    v36 = *(v1 + 712);
    v37 = *(v1 + 704);
    v38 = sub_1B4F648F4();
    *(v1 + 792) = v38;
    *(v1 + 144) = v1;
    *(v1 + 152) = sub_1B4F1EE20;
    swift_continuation_init();
    *(v1 + 520) = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 496));
    *(v1 + 800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    v40 = *(v36 + 32);
    *(v1 + 808) = v40;
    *(v1 + 816) = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(boxed_opaque_existential_1, v35, v37);
    *(v1 + 464) = MEMORY[0x1E69E9820];
    *(v1 + 472) = 1107296256;
    *(v1 + 480) = sub_1B4ECD214;
    *(v1 + 488) = &block_descriptor_43;
    [v22 stopActivityWithDate:v38 completion:?];
    v41 = *(v36 + 8);
    *(v1 + 824) = v41;
    *(v1 + 832) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(boxed_opaque_existential_1, v37);
    v42 = v1 + 144;
LABEL_23:

    return MEMORY[0x1EEE6DEC8](v42);
  }

  if (((1 << v23) & 0x22) != 0)
  {
    v30 = v1 + 272;
    v31 = *(v1 + 720);
    v32 = *(v1 + 712);
    v33 = *(v1 + 704);
    *(v1 + 272) = v1;
    *(v1 + 280) = sub_1B4F1E6DC;
    swift_continuation_init();
    *(v1 + 648) = v33;
    v34 = __swift_allocate_boxed_opaque_existential_1((v1 + 624));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v32 + 32))(v34, v31, v33);
    *(v1 + 592) = MEMORY[0x1E69E9820];
    *(v1 + 600) = 1107296256;
    *(v1 + 608) = sub_1B4ECD214;
    *(v1 + 616) = &block_descriptor_49;
    [v22 endWithCompletion_];
    (*(v32 + 8))(v34, v33);
LABEL_22:
    v42 = v30;
    goto LABEL_23;
  }

  if (((1 << v23) & 0x48) == 0)
  {
LABEL_10:
    v24 = *(v1 + 664);
    v25 = sub_1B4F67C34();
    v26 = sub_1B4F685E4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v1 + 664);
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = [v22 state];

      _os_log_impl(&dword_1B4DC2000, v25, v26, "HealthWorkoutSession: Unknown HealthWorkoutSession state: %ld", v29, 0xCu);
      MEMORY[0x1B8C831D0](v29, -1, -1);
    }

    else
    {
    }
  }

  v43 = *(*(v1 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  *(v1 + 856) = v43;
  v44 = [v43 startDate];
  if (v44)
  {
    v45 = *(v1 + 736);
    v46 = *(v1 + 728);
    v75 = *(v1 + 720);
    v47 = *(v1 + 712);
    v48 = *(v1 + 704);
    v49 = *(v1 + 696);
    v50 = v44;
    sub_1B4F64934();

    (*(v45 + 56))(v49, 0, 1, v46);
    sub_1B4DD2BC4(v49, &qword_1EB8F54A0, &qword_1B4F730F8);
    v51 = sub_1B4F648F4();
    *(v1 + 864) = v51;
    *(v1 + 80) = v1;
    *(v1 + 88) = sub_1B4F1F1F0;
    swift_continuation_init();
    *(v1 + 456) = v48;
    v52 = __swift_allocate_boxed_opaque_existential_1((v1 + 432));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v47 + 32))(v52, v75, v48);
    *(v1 + 400) = MEMORY[0x1E69E9820];
    *(v1 + 408) = 1107296256;
    *(v1 + 416) = sub_1B4ECD214;
    *(v1 + 424) = &block_descriptor_40_0;
    [v43 endCollectionWithEndDate:v51 completion:?];
    (*(v47 + 8))(v52, v48);
    v42 = v1 + 80;
    goto LABEL_23;
  }

  v53 = *(v1 + 696);
  (*(*(v1 + 736) + 56))(v53, 1, 1, *(v1 + 728));
  sub_1B4DD2BC4(v53, &qword_1EB8F54A0, &qword_1B4F730F8);
  v54 = *(v1 + 664);
  [*(v1 + 856) elapsedTime];
  v56 = v55;
  sub_1B4DF7310(59, 60.0);
  v58 = v57;
  v59 = v54;
  v60 = sub_1B4F67C34();
  v61 = sub_1B4F685E4();

  v62 = os_log_type_enabled(v60, v61);
  if (v58 < v56)
  {
    if (v62)
    {
      v63 = *(v1 + 664);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_1B4DC4F88(*(v63 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v63 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v78);
      _os_log_impl(&dword_1B4DC2000, v60, v61, "HealthWorkoutSession: Saving workout: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1B8C831D0](v65, -1, -1);
      MEMORY[0x1B8C831D0](v64, -1, -1);
    }

    v30 = v1 + 16;
    v77 = *(v1 + 856);
    v66 = *(v1 + 688);
    v67 = *(v1 + 680);
    v68 = *(v1 + 672);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 656;
    *(v1 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v1 + 392) = v68;
    v69 = __swift_allocate_boxed_opaque_existential_1((v1 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v67 + 32))(v69, v66, v68);
    *(v1 + 336) = MEMORY[0x1E69E9820];
    *(v1 + 344) = 1107296256;
    *(v1 + 352) = sub_1B4F1FFC4;
    *(v1 + 360) = &block_descriptor_35;
    [v77 finishWorkoutWithCompletion_];
    (*(v67 + 8))(v69, v68);
    goto LABEL_22;
  }

  if (v62)
  {
    v70 = *(v1 + 664);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v78 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1B4DC4F88(*(v70 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v70 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v78);
    _os_log_impl(&dword_1B4DC2000, v60, v61, "HealthWorkoutSession: Discarding workout: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1B8C831D0](v72, -1, -1);
    MEMORY[0x1B8C831D0](v71, -1, -1);
  }

  [*(v1 + 856) discardWorkout];
  v73 = swift_task_alloc();
  *(v1 + 896) = v73;
  *v73 = v1;
  v73[1] = sub_1B4F1FA84;

  return sub_1B4F1BD88(4);
}