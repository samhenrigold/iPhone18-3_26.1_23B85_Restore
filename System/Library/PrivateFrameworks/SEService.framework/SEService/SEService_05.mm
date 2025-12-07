unint64_t sub_1C7C21598()
{
  result = qword_1EC264350;
  if (!qword_1EC264350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264350);
  }

  return result;
}

unint64_t sub_1C7C215F0()
{
  result = qword_1EC264358;
  if (!qword_1EC264358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264358);
  }

  return result;
}

unint64_t sub_1C7C21648()
{
  result = qword_1EC264360;
  if (!qword_1EC264360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264360);
  }

  return result;
}

unint64_t sub_1C7C216A0()
{
  result = qword_1EC264368;
  if (!qword_1EC264368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264368);
  }

  return result;
}

unint64_t sub_1C7C216F8()
{
  result = qword_1EC264370;
  if (!qword_1EC264370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264370);
  }

  return result;
}

uint64_t sub_1C7C2174C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7173742 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6582115 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7499619 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7890025 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t static SESOnceOnlyTaskManager.register(taskIdentifier:performing:)(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EDCF6180;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C23D6C(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

void sub_1C7C219D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, objc_class *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for SESOnceOnlyTask();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_task];
  *v14 = a3;
  *(v14 + 1) = a4;
  v31.receiver = v12;
  v31.super_class = v11;

  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = qword_1EDCF6188;
  if (qword_1EDCF6188)
  {
    v17 = qword_1EDCF6188;
    v18 = qword_1EDCF6188;
  }

  else
  {
    v18 = [objc_allocWithZone(a5) init];
    v17 = 0;
    v16 = qword_1EDCF6188;
  }

  qword_1EDCF6188 = v18;
  v19 = v17;
  v20 = v18;

  swift_beginAccess();
  v21 = v15;
  v22 = sub_1C7C2AB08(&v32, v21);
  swift_endAccess();
  v23 = v32;
  if (v22)
  {
  }

  else
  {
    if (qword_1EDCF4FD8 != -1)
    {
      swift_once();
    }

    v24 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v24, qword_1EDCF4FE0);

    v25 = sub_1C7C7D194();
    v26 = sub_1C7C7D584();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1C7BE42F8(a1, a2, v30);
      _os_log_impl(&dword_1C7B9A000, v25, v26, "Attempted to insert duplicate task with identifier %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x1CCA6C990](v28, -1, -1);
      MEMORY[0x1CCA6C990](v27, -1, -1);
    }
  }

  *a6 = v23;
}

void static SESOnceOnlyTaskManager.deregister(task:)(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_1EDCF6180;
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C23DCC();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1C7C21D28(char *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1C7C7D2E4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1C7C7D2E4();
    [v4 removeObjectForKey_];

    v6 = qword_1EDCF6188;
    if (qword_1EDCF6188 && (swift_beginAccess(), v7 = v6, v8 = sub_1C7C238F4(a1), swift_endAccess(), v7, v8))
    {

      if (qword_1EDCF4FD8 != -1)
      {
        swift_once();
      }

      v9 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v9, qword_1EDCF4FE0);
      v10 = a1;
      v11 = sub_1C7C7D194();
      v12 = sub_1C7C7D574();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      v15 = v10;
      v16 = [v15 description];
      v17 = sub_1C7C7D304();
      v19 = v18;

      v20 = sub_1C7BE42F8(v17, v19, v30);

      *(v13 + 4) = v20;
      v21 = "Successfully deregistered task with identifier %s";
    }

    else
    {
      if (qword_1EDCF4FD8 != -1)
      {
        swift_once();
      }

      v22 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v22, qword_1EDCF4FE0);
      v23 = a1;
      v11 = sub_1C7C7D194();
      v12 = sub_1C7C7D584();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      v24 = v23;
      v25 = [v24 description];
      v26 = sub_1C7C7D304();
      v28 = v27;

      v29 = sub_1C7BE42F8(v26, v28, v30);

      *(v13 + 4) = v29;
      v21 = "Unable to deregister task with identifier %s";
    }

    _os_log_impl(&dword_1C7B9A000, v11, v12, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1CCA6C990](v14, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

void static SESOnceOnlyTaskManager.runAll()(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1EDCF6180;
  v2 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C24540();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1C7C2217C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v42 - v4;
  v45 = dispatch_group_create();
  v5 = qword_1EDCF6188;
  if (!qword_1EDCF6188)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C7C7D6D4())
    {
      sub_1C7C23E10(MEMORY[0x1E69E7CC0]);
      v7 = v12;
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    v10 = 0;
    v13 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v7 + 56);
    goto LABEL_13;
  }

  v6 = OBJC_IVAR____TtC9SEService22SESOnceOnlyTaskManager_tasks;
  swift_beginAccess();
  v7 = *(v5 + v6);

  if ((v7 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1C7C7D6C4();
  type metadata accessor for SESOnceOnlyTask();
  sub_1C7C24144();
  sub_1C7C7D524();
  v7 = v54;
  v8 = v55;
  v9 = v56;
  v10 = v57;
  v11 = v58;
LABEL_13:
  v42 = v9;
  v16 = (v9 + 64) >> 6;
  v43 = v16;
  v44 = v7;
  while (v7 < 0)
  {
    v23 = sub_1C7C7D6F4();
    if (!v23)
    {
      goto LABEL_33;
    }

    v49 = v23;
    type metadata accessor for SESOnceOnlyTask();
    swift_dynamicCast();
    v22 = v59;
    v20 = v10;
    v21 = v11;
    if (!v59)
    {
      goto LABEL_33;
    }

LABEL_25:
    v47 = v21;
    v24 = v8;
    v25 = v45;
    dispatch_group_enter(v45);
    v26 = sub_1C7C7D4D4();
    v27 = *(v26 - 8);
    v28 = v48;
    (*(v27 + 56))(v48, 1, 1, v26);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v22;
    v29[5] = v25;
    sub_1C7C2434C(v28, v3);
    LODWORD(v28) = (*(v27 + 48))(v3, 1, v26);
    v46 = v22;
    v30 = v25;

    if (v28 == 1)
    {
      sub_1C7C243BC(v3);
    }

    else
    {
      sub_1C7C7D4C4();
      (*(v27 + 8))(v3, v26);
    }

    v31 = v29[2];
    swift_unknownObjectRetain();

    v8 = v24;
    if (v31)
    {
      swift_getObjectType();
      v32 = sub_1C7C7D474();
      v34 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v16 = v43;
    v35 = v47;
    sub_1C7C243BC(v48);
    v36 = swift_allocObject();
    *(v36 + 16) = &unk_1C7C8FDE0;
    *(v36 + 24) = v29;
    if (v34 | v32)
    {
      v50 = 0;
      v51 = 0;
      v52 = v32;
      v53 = v34;
    }

    v7 = v44;
    v17 = v46;
    swift_task_create();

    v10 = v20;
    v11 = v35;
  }

  v18 = v10;
  v19 = v11;
  v20 = v10;
  if (!v11)
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_33;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_21:
  v21 = (v19 - 1) & v19;
  v22 = *(*(v7 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
  if (v22)
  {
    goto LABEL_25;
  }

LABEL_33:
  sub_1C7C0040C(v7);
  sub_1C7C7D5B4();
  if (qword_1EDCF4FD8 == -1)
  {
    goto LABEL_34;
  }

LABEL_38:
  swift_once();
LABEL_34:
  v37 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v37, qword_1EDCF4FE0);
  v38 = sub_1C7C7D194();
  v39 = sub_1C7C7D574();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1C7B9A000, v38, v39, "Successfully run all one-time tasks", v40, 2u);
    MEMORY[0x1CCA6C990](v40, -1, -1);
  }

  v41 = qword_1EDCF6188;
  qword_1EDCF6188 = 0;
}

uint64_t sub_1C7C22704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1C7C22798;

  return sub_1C7C228F4();
}

uint64_t sub_1C7C22798()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C22894, 0, 0);
}

uint64_t sub_1C7C22894()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C7C22914()
{
  v26 = v0;
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1C7C7D2E4();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0]();
  }

  v4 = sub_1C7C7D2E4();
  v5 = [v3 BOOLForKey_];

  if ((v5 & 1) == 0)
  {
    v22 = v0[2];
    v23 = swift_task_alloc();
    v0[3] = v23;
    *(v23 + 16) = v22;
    v24 = swift_task_alloc();
    v0[4] = v24;
    *v24 = v0;
    v24[1] = sub_1C7C22C3C;

    return MEMORY[0x1EEE6DDE0]();
  }

  if (qword_1EDCF4FD8 != -1)
  {
    swift_once();
  }

  v6 = v0[2];
  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EDCF4FE0);
  v8 = v6;
  v9 = sub_1C7C7D194();
  v10 = sub_1C7C7D574();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = v11;
    v15 = [v14 description];
    v16 = sub_1C7C7D304();
    v18 = v17;

    v19 = sub_1C7BE42F8(v16, v18, &v25);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1C7B9A000, v9, v10, "One-time task %s already ran", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1CCA6C990](v13, -1, -1);
    MEMORY[0x1CCA6C990](v12, -1, -1);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1C7C22C3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C22D54, 0, 0);
}

uint64_t sub_1C7C22D54()
{
  v18 = v0;
  if (qword_1EDCF4FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EDCF4FE0);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D574();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1C7C7D304();
    v13 = v12;

    v14 = sub_1C7BE42F8(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Successfully run one-time task %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  sub_1C7C231D0(1);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C7C22F28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643A8, &qword_1C7C8FE08);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EDCF6180 = result;
  return result;
}

id SESOnceOnlyTaskManager.init()()
{
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v4 = ObjectType;
    if (sub_1C7C7D6D4())
    {
      sub_1C7C23E10(MEMORY[0x1E69E7CC0]);
      v2 = v5;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    ObjectType = v4;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC9SEService22SESOnceOnlyTaskManager_tasks] = v2;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t SESOnceOnlyTask.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier);

  return v1;
}

void sub_1C7C231D0(char a1)
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1C7C7D2E4();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_1C7C7D464();
    v5 = sub_1C7C7D2E4();
    [v3 setValue:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

unint64_t SESOnceOnlyTask.overrideDescription.getter()
{
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](*(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier), *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier + 8));
  MEMORY[0x1CCA6B380](41, 0xE100000000000000);
  return 0xD000000000000010;
}

id SESOnceOnlyTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C23424()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EDCF4FE0);
  __swift_project_value_buffer(v0, qword_1EDCF4FE0);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C234A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C7C2359C;

  return v6(a1);
}

uint64_t sub_1C7C2359C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C7C23694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
    v2 = sub_1C7C7D764();
    v15 = v2;
    sub_1C7C7D6C4();
    if (sub_1C7C7D6F4())
    {
      type metadata accessor for SESOnceOnlyTask();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C7C2B014(v9 + 1);
        }

        v2 = v15;
        result = sub_1C7C7D614();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C7C7D6F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1C7C23870(uint64_t a1, uint64_t a2)
{
  sub_1C7C7D614();
  result = sub_1C7C7D6B4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C7C238F4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1C7C7D704();

    if (v6)
    {
      v7 = sub_1C7C23A78(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SESOnceOnlyTask();
  v10 = sub_1C7C7D614();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1C7C7D624();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C7C2BBA8();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1C7C23BCC(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1C7C23A78(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1C7C7D6D4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1C7C23694(v5, v4);
  v15 = v6;

  v7 = sub_1C7C7D614();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for SESOnceOnlyTask();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1C7C7D624();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1C7C23BCC(v9);
  result = sub_1C7C7D624();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7C23BCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C7C7D694();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1C7C7D614();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1C7C23D6C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1C7C23E10(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C7C7D6D4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
      v3 = sub_1C7C7D774();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C7C7D6D4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1CCA6B7B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1C7C7D614();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SESOnceOnlyTask();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1C7C7D624();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1C7C7D614();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for SESOnceOnlyTask();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1C7C7D624();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1C7C24144()
{
  result = qword_1EC264398;
  if (!qword_1EC264398)
  {
    type metadata accessor for SESOnceOnlyTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264398);
  }

  return result;
}

uint64_t sub_1C7C24198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C7C24258;

  return sub_1C7C22704(a1, v4, v5, v7, v6);
}

uint64_t sub_1C7C24258()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C7C2434C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7C243BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7C24424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C24258;

  return sub_1C7C234A4(a1, v4);
}

uint64_t sub_1C7C244DC()
{
  (*(*(v0 + 16) + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_task))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643A0, &qword_1C7C8FE00);
  return sub_1C7C7D494();
}

id SERCredentialInfo.__allocating_init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = a1;
  v12 = &v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = a4;
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SERCredentialInfo.init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = a1;
  v12 = &v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = a4;
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SERCredentialInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C2471C()
{
  v1 = 0x4941656C75646F6DLL;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x416567616B636170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7C247B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C2664C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C247D8(uint64_t a1)
{
  v2 = sub_1C7C24BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C24814(uint64_t a1)
{
  v2 = sub_1C7C24BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SERCredentialInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SERCredentialInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643D8, &unk_1C7C8FE10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C24BC4();
  sub_1C7C7DBA4();
  v11 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  sub_1C7C2500C(&unk_1EC2643F0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C7C7DA44();
  if (!v2)
  {
    LOBYTE(v11) = 1;

    sub_1C7C7DA14();

    v11 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize);
    HIBYTE(v10) = 2;
    type metadata accessor for MemoryUsage();
    sub_1C7C25078(&qword_1EC265240, &protocol conformance descriptor for MemoryUsage);
    sub_1C7C7DA44();
    v11 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential);
    HIBYTE(v10) = 3;
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C7C24BC4()
{
  result = qword_1EC2643E0;
  if (!qword_1EC2643E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2643E0);
  }

  return result;
}

void *SERCredentialInfo.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264400, &qword_1C7C8FE20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C24BC4();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    v17 = 0;
    sub_1C7C2500C(&qword_1EC264408, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C7C7D9B4();
    v10 = OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs;
    *(v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs) = v18;
    LOBYTE(v18) = 1;
    v11 = sub_1C7C7D984();
    v14[1] = v10;
    v12 = (v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID);
    *v12 = v11;
    v12[1] = v13;
    type metadata accessor for MemoryUsage();
    v17 = 2;
    v14[0] = sub_1C7C25078(&qword_1EC264410, &protocol conformance descriptor for MemoryUsage);
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize) = v18;
    v17 = 3;
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential) = v18;
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_1C7C2500C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC265230, &qword_1C7C94520);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C25078(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MemoryUsage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1C7C250BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SERCredentialInfo.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static SERCredentialInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2643B0 = a1;
  return result;
}

Swift::Void __swiftcall SERCredentialInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs);
  v5 = *(v4 + 16);
  if (v5)
  {

    sub_1C7C7D804();
    v6 = v4 + 40;
    do
    {

      sub_1C7C7D2E4();

      sub_1C7C7D7E4();
      sub_1C7C7D814();
      sub_1C7C7D824();
      sub_1C7C7D7F4();
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1C7C142A8();
  v7 = sub_1C7C7D414();

  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = sub_1C7C7D2E4();

  v10 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize);
  v12 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential);
  v14 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id SERCredentialInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *SERCredentialInfo.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C7C142A8();
  v3 = sub_1C7C7D604();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = sub_1C7C7D5E4();
  if (!v5)
  {

LABEL_17:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  type metadata accessor for MemoryUsage();
  v7 = sub_1C7C7D5E4();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_1C7C7D5E4();
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v9;
  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v9;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_24:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v29 = sub_1C7C7D304();
    v31 = v30;
    v32 = objc_allocWithZone(ObjectType);
    *&v32[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = v13;
    v33 = &v32[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
    *v33 = v29;
    v33[1] = v31;
    *&v32[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = v8;
    *&v32[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = v40;
    v41.receiver = v32;
    v41.super_class = ObjectType;
    v34 = v8;
    v35 = v40;
    v36 = objc_msgSendSuper2(&v41, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v36;
  }

  v11 = sub_1C7C7D6D4();
  v40 = v10;
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_7:
  v42 = MEMORY[0x1E69E7CC0];
  result = sub_1C7C2599C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37 = v8;
    v38 = ObjectType;
    v39 = v6;
    v13 = v42;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        MEMORY[0x1CCA6B7B0](v14, v4);
        v15 = sub_1C7C7D304();
        v17 = v16;
        swift_unknownObjectRelease();
        v42 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C7C2599C((v18 > 1), v19 + 1, 1);
          v13 = v42;
        }

        ++v14;
        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v11 != v14);
    }

    else
    {
      v21 = v4 + 32;
      do
      {
        v22 = sub_1C7C7D304();
        v42 = v13;
        v25 = *(v13 + 16);
        v24 = *(v13 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = v22;
          v28 = v23;
          sub_1C7C2599C((v24 > 1), v25 + 1, 1);
          v23 = v28;
          v22 = v27;
          v13 = v42;
        }

        *(v13 + 16) = v25 + 1;
        v26 = v13 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v21 += 8;
        --v11;
      }

      while (v11);
    }

    v6 = v39;
    v8 = v37;
    ObjectType = v38;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

char *sub_1C7C2599C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C25D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C7C25A48()
{
  result = qword_1EC264418;
  if (!qword_1EC264418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264418);
  }

  return result;
}

unint64_t sub_1C7C25AA0()
{
  result = qword_1EC264420;
  if (!qword_1EC264420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264420);
  }

  return result;
}

unint64_t sub_1C7C25AF8()
{
  result = qword_1EC264428;
  if (!qword_1EC264428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264428);
  }

  return result;
}

void *sub_1C7C25B4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C25E9C(a1, a2, a3, *v3, &qword_1EC264488, &qword_1C7C90028, &qword_1EC264490, &qword_1C7C90030);
  *v3 = result;
  return result;
}

void *sub_1C7C25B8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C25E9C(a1, a2, a3, *v3, &qword_1EC264458, &qword_1C7C8FFF8, &qword_1EC264460, &unk_1C7C90000);
  *v3 = result;
  return result;
}

void *sub_1C7C25BCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C25FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C7C25BEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C261C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C262F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C25C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C26410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C7C25C6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7C26504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264468, &qword_1C7C905F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C7C25D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264498, &qword_1C7C90600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C7C25E9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C7C25FD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264440, &unk_1C7C8FFE0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C7C261C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264470, &qword_1C7C90010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264478, &qword_1C7C90018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C262F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264480, &qword_1C7C90020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C26410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264450, &qword_1C7C8FFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1C7C26504(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264430, &qword_1C7C8FFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264438, &qword_1C7C8FFD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C7C2664C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4941656C75646F6DLL && a2 == 0xEA00000000007344;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEA00000000004449 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000657A695372 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C7C9E5C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C7C267D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C7C2434C(a3, v25 - v10);
  v12 = sub_1C7C7D4D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C7C243BC(v11);
  }

  else
  {
    sub_1C7C7D4C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C7C7D474();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C7C7D344() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F8, &qword_1C7C902E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C7C243BC(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C7C243BC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F8, &qword_1C7C902E8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SESContactlessTCCContext.NFCTCCRow.rowStyle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SESContactlessTCCContext.NFCTCCRow.RowStyle.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.RowStyle.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C7C7DB64();
  if (v1)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26BCC()
{
  v1 = *(v0 + 8);
  sub_1C7C7DB64();
  if (v1)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26C3C(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t sub_1C7C26CB4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C7C7DB64();
  if (v2)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1C7C7D364();
  if (!v2)
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v1)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26E30()
{
  v1 = *(v0 + 24);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v1)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26EBC(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1C7C7D364();
  if (!v2)
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t sub_1C7C26F38(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v2)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t SESContactlessTCCContext.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SESContactlessTCCContext.init(_:)(a1, a2);
  return v4;
}

void SESContactlessTCCContext.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  aBlock[7] = *v4;
  v7 = sub_1C7C7D234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 32) = -1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v11 = tcc_message_options_create();
  if (!v11)
  {
    goto LABEL_13;
  }

  v35 = v3;
  v36 = a2;
  v37 = v11;
  v12 = sub_1C7C28E14();
  v13 = *(v8 + 104);
  v33 = *MEMORY[0x1E69E7F98];
  v32 = v13;
  v13(v10);
  v34 = v12;
  v14 = sub_1C7C7D5C4();
  v31 = *(v8 + 8);
  v31(v10, v7);
  v15 = tcc_server_create();

  if (v15)
  {
    v16 = *MEMORY[0x1E69D5530];
    if (*MEMORY[0x1E69D5530])
    {
      v17 = v15;
      v18 = tcc_service_singleton_for_CF_name();

      if (!v18)
      {
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      v30 = v18;
      v19 = *MEMORY[0x1E69D5528];
      if (*MEMORY[0x1E69D5528])
      {
        v20 = tcc_service_singleton_for_CF_name();

        if (v20)
        {
          *(v4 + 40) = v37;
          *(v4 + 48) = v17;
          v29[0] = v17;
          v29[1] = v20;
          *(v4 + 56) = v30;
          *(v4 + 64) = v20;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          tcc_message_options_set_reply_handler_policy();
          v32(v10, v33, v7);
          v21 = sub_1C7C7D5C4();
          v31(v10, v7);
          v22 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = sub_1C7C28E60;
          aBlock[5] = v22;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C7C2775C;
          aBlock[3] = &block_descriptor;
          v23 = _Block_copy(aBlock);

          swift_beginAccess();
          notify_register_dispatch("com.apple.tcc.access.changed", (v4 + 32), v21, v23);
          swift_endAccess();
          _Block_release(v23);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v24, qword_1EC2644A0);
  v25 = sub_1C7C7D194();
  v26 = sub_1C7C7D584();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C7B9A000, v25, v26, "Unable to create TCC services necessary for class", v27, 2u);
    MEMORY[0x1CCA6C990](v27, -1, -1);
  }

  sub_1C7C28DC0();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();

  swift_deallocPartialClassInstance();
}

uint64_t sub_1C7C274E0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C7C7D4D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C7C7D4B4();

  v7 = sub_1C7C7D4A4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1C7C267D0(0, 0, v5, &unk_1C7C902D0, v8);
}

uint64_t sub_1C7C27604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C7C7D4B4();
  v4[7] = sub_1C7C7D4A4();
  v6 = sub_1C7C7D474();

  return MEMORY[0x1EEE6DFA0](sub_1C7C2769C, v6, v5);
}

uint64_t sub_1C7C2769C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);

    v3(v4);
  }

  **(v0 + 40) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C7C2775C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t SESContactlessTCCContext.NFCTCCRowForBundle(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  sub_1C7C7D344();
  v8 = tcc_identity_create();

  if (v8)
  {
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v7;
    v9[4] = a1;
    v9[5] = a2;
    aBlock[4] = sub_1C7C28EC4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C7C27E34;
    aBlock[3] = &block_descriptor_9;
    v25 = a1;
    v10 = _Block_copy(aBlock);

    tcc_server_message_get_authorization_records_by_identity();
    swift_unknownObjectRelease();
    _Block_release(v10);
    swift_beginAccess();
    v11 = *(v7 + 24);
    if (v11)
    {
      v12 = *(v7 + 16);
      v13 = *(v7 + 32);
      v14 = *(v7 + 40);
      *a3 = v12;
      a3[1] = v11;
      a3[2] = v13;
      a3[3] = v14;
      sub_1C7C28E80(v12, v11, v13, v14);
    }

    else
    {

      *a3 = v25;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
    }
  }

  else
  {
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v16, qword_1EC2644A0);

    v17 = sub_1C7C7D194();
    v18 = sub_1C7C7D584();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C7BE42F8(a1, a2, aBlock);
      _os_log_impl(&dword_1C7B9A000, v17, v18, "Unable to create TCC identity for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1CCA6C990](v20, -1, -1);
      MEMORY[0x1CCA6C990](v19, -1, -1);
    }

    v21 = *(v7 + 16);
    v22 = *(v7 + 24);
    v23 = *(v7 + 32);
    v24 = *(v7 + 40);
    sub_1C7C28E80(v21, v22, v23, v24);

    *a3 = v21;
    a3[1] = v22;
    a3[2] = v23;
    a3[3] = v24;
  }

  return result;
}

void sub_1C7C27ABC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_service())
  {
LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v11, qword_1EC2644A0);
    v12 = a2;
    oslog = sub_1C7C7D194();
    v13 = sub_1C7C7D564();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v26[0] = v15;
      *v14 = 136315138;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644E8, &unk_1C7C902B8);
      v17 = sub_1C7C7D324();
      v19 = sub_1C7BE42F8(v17, v18, v26);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C7B9A000, oslog, v13, "error when checking tcc: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1CCA6C990](v15, -1, -1);
      MEMORY[0x1CCA6C990](v14, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if ([*(a3 + 56) isEqual_])
  {
    type metadata accessor for SESContactlessTCCContext();
    sub_1C7C27D48(a5, a6, v26);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v20 = a4[2];
    v21 = a4[3];
    v22 = a4[4];
    v23 = a4[5];
    v24 = v26[1];
    *(a4 + 1) = v26[0];
    *(a4 + 2) = v24;
    sub_1C7C29104(v20, v21, v22, v23);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C7C27D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  authorization_right = tcc_authorization_record_get_authorization_right();
  if ((authorization_right - 2) >= 2)
  {
    if (authorization_right == 1)
    {
      *a3 = a1;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
      goto LABEL_11;
    }

    if (qword_1EC2621B8 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC2642E8;
  }

  else
  {
    if (qword_1EC2621B0 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC2642D8;
  }

  v8 = *v7;

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v8;
  a3[3] = v9;
LABEL_11:
}

uint64_t sub_1C7C27E34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t SESContactlessTCCContext.allNFCTCCRows()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v9 = sub_1C7C28ED0;
  v10 = v0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = sub_1C7C27E34;
  v8 = &block_descriptor_15;
  v1 = _Block_copy(&v5);

  tcc_server_message_get_authorization_records_by_service();
  _Block_release(v1);
  v9 = sub_1C7C28ED8;
  v10 = v0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = sub_1C7C27E34;
  v8 = &block_descriptor_18;
  v2 = _Block_copy(&v5);

  tcc_server_message_get_authorization_records_by_service();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v0 + 16);

  return v3;
}

void sub_1C7C28078(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = qword_1EC2621C0;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v5, qword_1EC2644A0);
    v6 = v4;
    oslog = sub_1C7C7D194();
    v7 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315138;
      type metadata accessor for CFError(0);
      v10 = v6;
      v11 = sub_1C7C7D324();
      v13 = sub_1C7BE42F8(v11, v12, &v34);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C7B9A000, oslog, v7, "Error when checking tcc: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1CCA6C990](v9, -1, -1);
      MEMORY[0x1CCA6C990](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  swift_unknownObjectRetain();
  if (tcc_authorization_record_get_subject_identity())
  {
    tcc_identity_get_identifier();
    v15 = sub_1C7C7D2D4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      type metadata accessor for SESContactlessTCCContext();
      sub_1C7C27D48(v17, v18, &v34);

      v19 = v35;
      if (v35)
      {
        v20 = v34;
        *osloga = v36;
        swift_beginAccess();
        v21 = *(a3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v21;
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = a3;
        }

        else
        {
          v28 = sub_1C7C2A7E4(0, *(v21 + 2) + 1, 1, v21);
          v23 = a3;
          v21 = v28;
          *(a3 + 16) = v28;
        }

        v24 = *(v21 + 2);
        v25 = *(v21 + 3);
        v26 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v29 = v21;
          v30 = *(v21 + 2);
          v31 = sub_1C7C2A7E4((v25 > 1), v24 + 1, 1, v29);
          v24 = v30;
          v23 = a3;
          v21 = v31;
        }

        *(v21 + 2) = v26;
        v27 = &v21[32 * v24];
        *(v27 + 4) = v20;
        *(v27 + 5) = v19;
        *(v27 + 3) = *osloga;
        *(v23 + 16) = v21;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void sub_1C7C283A4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = qword_1EC2621C0;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v5, qword_1EC2644A0);
    v6 = v4;
    oslog = sub_1C7C7D194();
    v7 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39[0] = v9;
      *v8 = 136315138;
      v38[0] = v6;
      type metadata accessor for CFError(0);
      v10 = v6;
      v11 = sub_1C7C7D324();
      v13 = sub_1C7BE42F8(v11, v12, v39);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C7B9A000, oslog, v7, "Error when checking tcc: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1CCA6C990](v9, -1, -1);
      MEMORY[0x1CCA6C990](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_subject_identity())
  {
    goto LABEL_21;
  }

  tcc_identity_get_identifier();
  v15 = sub_1C7C7D2D4();
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_21:
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v23, qword_1EC2644A0);
    v24 = sub_1C7C7D194();
    v25 = sub_1C7C7D584();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C7B9A000, v24, v25, "No identity or bundleID for record, skipping", v26, 2u);
      MEMORY[0x1CCA6C990](v26, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v17 = v15;
  v18 = v16;
  swift_beginAccess();
  v19 = *(a3 + 16);
  v20 = (v19 + 40);
  v21 = *(v19 + 16) + 1;
  while (--v21)
  {
    if (*(v20 - 1) != v17 || v18 != *v20)
    {
      v20 += 4;
      if ((sub_1C7C7DAA4() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v27, qword_1EC2644A0);

  v28 = sub_1C7C7D194();
  v29 = sub_1C7C7D564();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1C7BE42F8(v17, v18, v38);
    _os_log_impl(&dword_1C7B9A000, v28, v29, "Adding %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1CCA6C990](v31, -1, -1);
    MEMORY[0x1CCA6C990](v30, -1, -1);
  }

  swift_beginAccess();
  v32 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_1C7C2A7E4(0, *(v32 + 2) + 1, 1, v32);
    *(a3 + 16) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1C7C2A7E4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[32 * v35];
  *(v36 + 4) = v17;
  *(v36 + 5) = v18;
  *(v36 + 6) = 0;
  *(v36 + 7) = 0;
  *(a3 + 16) = v32;
  swift_endAccess();
LABEL_37:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t SESContactlessTCCContext.deinit()
{
  v1 = v0;
  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC2644A0);
  v3 = sub_1C7C7D194();
  v4 = sub_1C7C7D574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C7B9A000, v3, v4, "Cancelling notification for contactless TCC", v5, 2u);
    MEMORY[0x1CCA6C990](v5, -1, -1);
  }

  swift_beginAccess();
  notify_cancel(*(v1 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SESContactlessTCCContext.__deallocating_deinit()
{
  SESContactlessTCCContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1C7C28A08()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC2644A0);
  __swift_project_value_buffer(v0, qword_1EC2644A0);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C28A88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C7C28B7C;

  return v5(v2 + 32);
}

uint64_t sub_1C7C28B7C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9SEService24SESContactlessTCCContextC9NFCTCCRowV8RowStyleO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

BOOL _s9SEService24SESContactlessTCCContextC9NFCTCCRowV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C7C7DAA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1C7C7DAA4() & 1) != 0;
      }
    }

    else if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C7C28DC0()
{
  result = qword_1EC2644B8;
  if (!qword_1EC2644B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644B8);
  }

  return result;
}

unint64_t sub_1C7C28E14()
{
  result = qword_1EDCF4FA0;
  if (!qword_1EDCF4FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF4FA0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C7C28E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_1C7C28EE4()
{
  result = qword_1EC2644C8;
  if (!qword_1EC2644C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644C8);
  }

  return result;
}

unint64_t sub_1C7C28F3C()
{
  result = qword_1EC2644D0;
  if (!qword_1EC2644D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644D0);
  }

  return result;
}

uint64_t sub_1C7C28FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C7C2903C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C7C290B0()
{
  result = qword_1EC2644E0;
  if (!qword_1EC2644E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644E0);
  }

  return result;
}

void sub_1C7C29104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1C7C29148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C7C24258;

  return sub_1C7C27604(a1, v4, v5, v6);
}

uint64_t sub_1C7C291FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C29378;

  return sub_1C7C28A88(a1, v4);
}

uint64_t sub_1C7C292B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C24258;

  return sub_1C7C28A88(a1, v4);
}

uint64_t TCCContext.TCCService.tccString.getter(uint64_t a1)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = *MEMORY[0x1E69D5530];
    if (*MEMORY[0x1E69D5530])
    {
LABEL_9:
      v2 = sub_1C7C7D304();

      return v2;
    }

    __break(1u);
  }

  v1 = *MEMORY[0x1E69D55E0];
  if (*MEMORY[0x1E69D55E0])
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  if (!a1)
  {
    v1 = *MEMORY[0x1E69D5528];
    if (*MEMORY[0x1E69D5528])
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

uint64_t TCCContext.TCCService.defaultAppTCCService.getter(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 0;
    }

    else if (result == 2)
    {
      return 1;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

unint64_t TCCContext.TCCService.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.tccService.getter(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 2;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter(uint64_t a1)
{
  result = 0xD000000000000033;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000045;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t TCCContext.DefaultAppCapableTCCService.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1C7C295E4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t TCCContext.TCCAccess.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6465696E6564;
    }

    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = 1851880039;
      return v1 | 0x64657400000000;
    }

    if (a1 == 1)
    {
      v1 = 1768778092;
      return v1 | 0x64657400000000;
    }
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t sub_1C7C296CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7C2C660(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C7C29700(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      v3 = 1851880039;
      return v3 | 0x64657400000000;
    }

    if (v2 == 1)
    {
      v3 = 1768778092;
      return v3 | 0x64657400000000;
    }

    goto LABEL_12;
  }

  if (v2 == 2)
  {
    return 0x6465696E6564;
  }

  if (v2 != 3)
  {
LABEL_12:
    result = sub_1C7C7DAC4();
    __break(1u);
    return result;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t TCCContext.checkTCCAccess(to:for:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3)
  {
    result = sub_1C7C7DAC4();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v20 = v3;

    v7 = v3;
    v8 = swift_readAtKeyPath();
    v10 = *v9;

    v8(v19, 0);

    if (v10)
    {
      if (*(v10 + 16))
      {
        v11 = sub_1C7C70200(a2, a3);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 8 * v11);
LABEL_10:

          return v13;
        }
      }
    }

    else
    {
      v14 = sub_1C7C2CE08(a1);
      v19[0] = v7;
      v20 = v14;
      v15 = v7;

      swift_setAtReferenceWritableKeyPath();

      if (*(v14 + 16))
      {
        v16 = sub_1C7C70200(a2, a3);
        if (v17)
        {
          v13 = *(*(v14 + 56) + 8 * v16);
          goto LABEL_10;
        }
      }
    }

    return 3;
  }

  return result;
}

uint64_t TCCContext.getTCCKnownBundleIds(for:filter:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = a1;
  if (a1 >= 3)
  {
    goto LABEL_42;
  }

  swift_getKeyPath();
  v51 = v3;

  v7 = v3;
  v8 = swift_readAtKeyPath();
  v10 = *v9;

  v8(v50, 0);

  if (!v10)
  {
    v28 = sub_1C7C2CE08(v4);
    v50[0] = v7;
    v51 = v28;
    v29 = v7;

    swift_setAtReferenceWritableKeyPath();

    v30 = 1 << *(v28 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v4 = v31 & *(v28 + 64);
    v32 = (v30 + 63) >> 6;

    v33 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (!v4)
        {
          do
          {
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_41;
            }

            if (v34 >= v32)
            {
LABEL_39:

              v47 = sub_1C7C2D48C(v49);

              return v47;
            }

            v4 = *(v28 + 64 + 8 * v34);
            ++v33;
          }

          while (!v4);
          v33 = v34;
        }

        v35 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v36 = v35 | (v33 << 6);
        v37 = (*(v28 + 48) + 16 * v36);
        v38 = *v37;
        v39 = v37[1];
        v40 = *(*(v28 + 56) + 8 * v36);
        if (!a2)
        {
          break;
        }

        sub_1C7C2D46C(a2, a3);

        v41 = a2(v40);
        sub_1C7C2D47C(a2, a3);
        if (v41)
        {
          goto LABEL_34;
        }
      }

      if (v40 != 3)
      {

LABEL_34:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1C7C2A8F0(0, *(v49 + 2) + 1, 1, v49);
        }

        v43 = *(v49 + 2);
        v42 = *(v49 + 3);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v46 = sub_1C7C2A8F0((v42 > 1), v43 + 1, 1, v49);
          v44 = v43 + 1;
          v49 = v46;
        }

        *(v49 + 2) = v44;
        v45 = &v49[16 * v43];
        *(v45 + 4) = v38;
        *(v45 + 5) = v39;
      }
    }
  }

  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v4 = v12 & *(v10 + 64);
  v13 = (v11 + 63) >> 6;

  v14 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_12:
    v16 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(v10 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v10 + 56) + 8 * v17);
    if (a2)
    {

      sub_1C7C2D46C(a2, a3);
      v22 = a2(v21);
      sub_1C7C2D47C(a2, a3);
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else if (v21 != 3)
    {

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1C7C2A8F0(0, *(v49 + 2) + 1, 1, v49);
      }

      v24 = *(v49 + 2);
      v23 = *(v49 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_1C7C2A8F0((v23 > 1), v24 + 1, 1, v49);
        v25 = v24 + 1;
        v49 = v27;
      }

      *(v49 + 2) = v25;
      v26 = &v49[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v20;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_39;
    }

    v4 = *(v10 + 64 + 8 * v15);
    ++v14;
    if (v4)
    {
      v14 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v50[0] = v4;
  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

void sub_1C7C29E44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = qword_1EDCF4FB8;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v7, qword_1EDCF4FC0);
    v8 = v6;
    oslog = sub_1C7C7D194();
    v9 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47[0] = v11;
      *v10 = 136315394;
      type metadata accessor for CFError(0);
      sub_1C7C2D748(&qword_1EC264548, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      v12 = sub_1C7C7DB04();
      v14 = sub_1C7BE42F8(v12, v13, v47);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = TCCContext.TCCService.tccString.getter(a3);
      v17 = sub_1C7BE42F8(v15, v16, v47);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1C7B9A000, oslog, v9, "Error %s while getting auth records for service %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA6C990](v11, -1, -1);
      MEMORY[0x1CCA6C990](v10, -1, -1);

      return;
    }

LABEL_24:

    return;
  }

  if (!a1)
  {
LABEL_20:
    if (qword_1EDCF4FB8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v35, qword_1EDCF4FC0);
    oslog = sub_1C7C7D194();
    v36 = sub_1C7C7D574();
    if (os_log_type_enabled(oslog, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v37 = 136315138;
      v39 = TCCContext.TCCService.tccString.getter(a3);
      v41 = sub_1C7BE42F8(v39, v40, v47);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1C7B9A000, oslog, v36, "No authorizationRecord / identity for tccService %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1CCA6C990](v38, -1, -1);
      MEMORY[0x1CCA6C990](v37, -1, -1);

      return;
    }

    goto LABEL_24;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_subject_identity())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  authorization_right = tcc_authorization_record_get_authorization_right();
  tcc_identity_get_identifier();
  v19 = sub_1C7C7D384();
  v21 = v20;
  if (qword_1EDCF4FB8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v22, qword_1EDCF4FC0);

  v23 = sub_1C7C7D194();
  v24 = sub_1C7C7D574();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v25 = 136315650;
    *(v25 + 4) = sub_1C7BE42F8(v19, v21, v47);
    *(v25 + 12) = 2080;
    v26 = sub_1C7C2A3E8(authorization_right);
    v43 = authorization_right;
    v28 = sub_1C7BE42F8(v26, v27, v47);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    v29 = TCCContext.TCCService.tccString.getter(a3);
    v31 = sub_1C7BE42F8(v29, v30, v47);

    *(v25 + 24) = v31;
    authorization_right = v43;
    _os_log_impl(&dword_1C7B9A000, v23, v24, "Found auth record for bundle ID %s with authorization %s for service %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v42, -1, -1);
    MEMORY[0x1CCA6C990](v25, -1, -1);
  }

  v32 = 1;
  if (authorization_right != 3)
  {
    v32 = 2;
  }

  if (authorization_right == 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C7C67E60(v33, v19, v21, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v46;
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

unint64_t sub_1C7C2A3E8(uint64_t a1)
{
  result = 0xD00000000000001FLL;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        return 0xD000000000000028;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000023;
    }

    if (a1 == 6)
    {
      return 0xD000000000000022;
    }

    return 0xD00000000000001BLL;
  }

  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 != 1 && a1 != 2)
  {
    return 0xD00000000000001BLL;
  }

  return result;
}

id TCCContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TCCContext.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_hceService] = 0;
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_secService] = 0;
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_paymentReaderService] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id TCCContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7C2A664()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EDCF4FC0);
  __swift_project_value_buffer(v0, qword_1EDCF4FC0);
  return sub_1C7C7D1A4();
}

char *sub_1C7C2A6E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264468, &qword_1C7C905F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C7C2A7E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264558, &unk_1C7C90610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C2A8F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264498, &qword_1C7C90600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C2A9FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264530, &qword_1C7C905D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C7C2AB08(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C7C7D6E4();

    if (v9)
    {

      type metadata accessor for SESOnceOnlyTask();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1C7C7D6D4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C7C23694(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1C7C2B014(v20 + 1);
    }

    v18 = v8;
    sub_1C7C23870(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SESOnceOnlyTask();
  v11 = sub_1C7C7D614();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1C7C2B714(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C7C7D624();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1C7C2AD20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C7C7DB64();
  sub_1C7C7D364();
  v8 = sub_1C7C7DB84();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C7C7DAA4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C7C2B874(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C7C2AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v10 = *v4;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  sub_1C7C7DB64();
  CredentialType.hash(into:)(&v24);
  v11 = sub_1C7C7DB84();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v10 + 48) + 24 * v13;
      v16 = *(v15 + 8);
      v24 = *v15;
      v25 = v16;
      v26 = *(v15 + 16);
      sub_1C7BDF708(v24, v16, v26);
      v17 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v24, &v30);
      sub_1C7BEA9D8(v24, v25, v26);
      if (v17)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v8 = v30;
        v7 = v31;
        v6 = v32;
        goto LABEL_6;
      }
    }

    sub_1C7BEA9D8(v30, v31, v32);
    v20 = *(v10 + 48) + 24 * v13;
    v21 = *v20;
    v22 = *(v20 + 8);
    *a1 = *v20;
    *(a1 + 8) = v22;
    v23 = *(v20 + 16);
    *(a1 + 16) = v23;
    sub_1C7BDF708(v21, v22, v23);
    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    sub_1C7BDF708(v8, v7, v6);
    sub_1C7C2B9F4(v8, v7, v6, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    return 1;
  }
}

uint64_t sub_1C7C2B014(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1C7C7D614();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7C2B23C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7C2B49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v32 = *v18;
      v33 = v20;
      v34 = v21;
      sub_1C7C7DB64();
      CredentialType.hash(into:)(v31);
      result = sub_1C7C7DB84();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1C7C2B714(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C7C2B014(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C7C2BBA8();
      goto LABEL_12;
    }

    sub_1C7C2BFBC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C7C7D614();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SESOnceOnlyTask();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C7C7D624();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C7C7DAE4();
  __break(1u);
}

uint64_t sub_1C7C2B874(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C7C2B23C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C7C2BCF8();
      goto LABEL_16;
    }

    sub_1C7C2C1D0(v8 + 1);
  }

  v10 = *v4;
  sub_1C7C7DB64();
  sub_1C7C7D364();
  result = sub_1C7C7DB84();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C7C7DAA4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C7C7DAE4();
  __break(1u);
  return result;
}

uint64_t sub_1C7C2B9F4(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v30 = result;
  v31 = a2;
  v32 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a5)
  {
    sub_1C7C2B49C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C7C2BE54();
      goto LABEL_13;
    }

    sub_1C7C2C408(v11 + 1);
  }

  v13 = *v5;
  v27 = v10;
  v28 = v9;
  v29 = v8;
  sub_1C7C7DB64();
  CredentialType.hash(into:)(&v24);
  result = sub_1C7C7DB84();
  v14 = -1 << *(v13 + 32);
  a4 = result & ~v14;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    while (1)
    {
      v16 = *(v13 + 48) + 24 * a4;
      v17 = *(v16 + 8);
      v24 = *v16;
      v25 = v17;
      v26 = *(v16 + 16);
      sub_1C7BDF708(v24, v17, v26);
      v18 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v24, &v30);
      result = sub_1C7BEA9D8(v24, v25, v26);
      if (v18)
      {
        goto LABEL_16;
      }

      a4 = (a4 + 1) & v15;
      if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        v10 = v30;
        v9 = v31;
        v8 = v32;
        break;
      }
    }
  }

LABEL_13:
  v19 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v10;
  *(v20 + 8) = v9;
  *(v20 + 16) = v8;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_16:
  result = sub_1C7C7DAE4();
  __break(1u);
  return result;
}

id sub_1C7C2BBA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  v2 = *v0;
  v3 = sub_1C7C7D744();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C7C2BCF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  v2 = *v0;
  v3 = sub_1C7C7D744();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C7C2BE54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  v2 = *v0;
  v3 = sub_1C7C7D744();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1C7BDF708(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C7C2BFBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1C7C7D614();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C7C2C1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C7C7DB64();

      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C7C2C408(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  result = sub_1C7C7D754();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v31 = *v18;
      v19 = v31;
      v32 = v20;
      v33 = v21;
      sub_1C7C7DB64();
      sub_1C7BDF708(v19, v20, v21);
      CredentialType.hash(into:)(v30);
      result = sub_1C7C7DB84();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1C7C2C660(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t _s9SEService10TCCContextC28checkTCCAccessWithoutLoading2to3forAC0D0OAC10TCCServiceO_SStFZ_0(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C7C7D2E4();
  v6 = TCCAccessCopyInformationForBundleId();

  if (!v6)
  {
    if (qword_1EDCF4FB8 != -1)
    {
      swift_once();
    }

    v27 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v27, qword_1EDCF4FC0);

    v28 = sub_1C7C7D194();
    v29 = sub_1C7C7D594();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1C7BE42F8(a2, a3, v52);
      _os_log_impl(&dword_1C7B9A000, v28, v29, "Unable to look up TCC for %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x1CCA6C990](v31, -1, -1);
      MEMORY[0x1CCA6C990](v30, -1, -1);
    }

    return 3;
  }

  v48 = sub_1C7C7D424();

  v7 = *MEMORY[0x1E69D54F8];
  if (!*MEMORY[0x1E69D54F8])
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v52[0] = v7;
    result = sub_1C7C7DAC4();
    __break(1u);
    return result;
  }

  v8 = *MEMORY[0x1E69D54E8];
  v47 = v7;
  if (!v8)
  {
    goto LABEL_73;
  }

  v46 = v8;
  v53 = MEMORY[0x1E69E7CC0];
  v9 = v48;
  if (v48 >> 62)
  {
LABEL_44:
    v10 = sub_1C7C7D6D4();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_45:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v10 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_45;
  }

LABEL_6:
  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v13 = v9 & 0xFFFFFFFFFFFFFF8;
  v14 = &unk_1EC264550;
  v45 = v10;
  while (!v12)
  {
    if (v11 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v15 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_36;
    }

LABEL_12:
    v52[0] = v15;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, &qword_1C7C90608);
    if (swift_dynamicCast())
    {
      v17 = v14;
      v18 = v50;
      v50 = v47;
      type metadata accessor for CFString(0);
      sub_1C7C2D748(&qword_1EC2623F8, type metadata accessor for CFString, &unk_1C7C83280);
      v19 = v47;
      sub_1C7C7D734();
      if (v18[2] && (sub_1C7C70304(v52), (v20 & 1) != 0))
      {
        swift_unknownObjectRetain();
        sub_1C7C2D790(v52);

        if (swift_dynamicCast())
        {
          v7 = a1;
          if (a1 == 2)
          {
            v7 = MEMORY[0x1E69D55E0];
            v21 = *MEMORY[0x1E69D55E0];
            if (!*MEMORY[0x1E69D55E0])
            {
              goto LABEL_76;
            }
          }

          else if (a1 == 1)
          {
            v7 = MEMORY[0x1E69D5530];
            v21 = *MEMORY[0x1E69D5530];
            if (!*MEMORY[0x1E69D5530])
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (a1)
            {
              goto LABEL_77;
            }

            v7 = MEMORY[0x1E69D5528];
            v21 = *MEMORY[0x1E69D5528];
            if (!*MEMORY[0x1E69D5528])
            {
              goto LABEL_74;
            }
          }

          v22 = sub_1C7C7D304();
          v24 = v23;

          if (v47 == v22 && v51 == v24)
          {
          }

          else
          {
            v25 = sub_1C7C7DAA4();

            if ((v25 & 1) == 0)
            {
              swift_unknownObjectRelease();
              goto LABEL_33;
            }
          }

          sub_1C7C7D7E4();
          sub_1C7C7D814();
          sub_1C7C7D824();
          sub_1C7C7D7F4();
LABEL_33:
          v9 = v48;
          v14 = v17;
          v10 = v45;
          goto LABEL_8;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1C7C2D790(v52);
      }

      v9 = v48;
      v10 = v45;
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_8:
    ++v11;
    if (v16 == v10)
    {
      goto LABEL_37;
    }
  }

  v15 = MEMORY[0x1CCA6B7B0](v11, v9);
  v16 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_12;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v26 = v53;
LABEL_46:

  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
LABEL_69:
    v32 = sub_1C7C7D6D4();
    if (!v32)
    {
      goto LABEL_70;
    }

LABEL_49:
    v33 = 0;
    v34 = &unk_1EC264550;
    v49 = v32;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1CCA6B7B0](v33, v26);
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:

          return 2;
        }
      }

      else
      {
        if (v33 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v35 = *(v26 + 8 * v33 + 32);
        swift_unknownObjectRetain();
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_66;
        }
      }

      v52[0] = v35;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_1C7C90608);
      if (swift_dynamicCast())
      {
        v37 = v34;
        v38 = v50;
        v50 = v46;
        type metadata accessor for CFString(0);
        sub_1C7C2D748(&qword_1EC2623F8, type metadata accessor for CFString, &unk_1C7C83280);
        v39 = v46;
        sub_1C7C7D734();
        if (v38[2] && (sub_1C7C70304(v52), (v40 & 1) != 0))
        {
          swift_unknownObjectRetain();
          sub_1C7C2D790(v52);

          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (v41)
          {
            v42 = [v41 BOOLValue];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v34 = v37;
            v32 = v49;
            if (v42)
            {

              return 0;
            }

            goto LABEL_51;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          sub_1C7C2D790(v52);
        }

        v34 = v37;
        v32 = v49;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_51:
      ++v33;
      if (v36 == v32)
      {
        goto LABEL_67;
      }
    }
  }

  v32 = *(v26 + 16);
  if (v32)
  {
    goto LABEL_49;
  }

LABEL_70:

  return 3;
}

unint64_t sub_1C7C2CE08(uint64_t a1)
{
  v2 = sub_1C7C7D234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCF4FB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v6, qword_1EDCF4FC0);
  v7 = sub_1C7C7D194();
  v8 = sub_1C7C7D564();
  v9 = os_log_type_enabled(v7, v8);
  v48 = a1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = TCCContext.TCCService.tccString.getter(a1);
    v14 = sub_1C7BE42F8(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v7, v8, "Loading TCC information for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1CCA6C990](v11, -1, -1);
    MEMORY[0x1CCA6C990](v10, -1, -1);
  }

  sub_1C7C28E14();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F98], v2);
  v15 = sub_1C7C7D5C4();
  (*(v3 + 8))(v5, v2);
  v16 = tcc_server_create();

  if (v16)
  {
    v17 = v48;
    TCCContext.TCCService.tccString.getter(v48);
    v18 = sub_1C7C7D2E4();

    v19 = tcc_service_singleton_for_CF_name();

    if (v19)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = MEMORY[0x1E69E7CC8];
      v21 = swift_allocObject();
      *(v21 + 16) = v17;
      *(v21 + 24) = v20;
      aBlock[4] = sub_1C7C2D728;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C7C27E34;
      aBlock[3] = &block_descriptor_0;
      v22 = _Block_copy(aBlock);

      tcc_server_message_get_authorization_records_by_service();
      _Block_release(v22);

      v23 = sub_1C7C7D194();
      v24 = sub_1C7C7D574();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v25 = 136315394;
        v26 = TCCContext.TCCService.tccString.getter(v17);
        v28 = sub_1C7BE42F8(v26, v27, aBlock);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        swift_beginAccess();

        v29 = sub_1C7C7D264();
        v31 = v30;

        v32 = sub_1C7BE42F8(v29, v31, aBlock);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_1C7B9A000, v23, v24, "Loaded TCC information for service %s --> %s", v25, 0x16u);
        v33 = v47;
        swift_arrayDestroy();
        MEMORY[0x1CCA6C990](v33, -1, -1);
        MEMORY[0x1CCA6C990](v25, -1, -1);
      }

      else
      {
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_beginAccess();
      v37 = *(v20 + 16);
    }

    else
    {
      v38 = sub_1C7C7D194();
      v39 = sub_1C7C7D584();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136315138;
        v42 = TCCContext.TCCService.tccString.getter(v17);
        v44 = sub_1C7BE42F8(v42, v43, aBlock);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1C7B9A000, v38, v39, "Unable to create tcc Service string %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1CCA6C990](v41, -1, -1);
        MEMORY[0x1CCA6C990](v40, -1, -1);
      }

      v37 = sub_1C7C730F8(MEMORY[0x1E69E7CC0]);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v34 = sub_1C7C7D194();
    v35 = sub_1C7C7D584();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C7B9A000, v34, v35, "Failed to create tcc server", v36, 2u);
      MEMORY[0x1CCA6C990](v36, -1, -1);
    }

    return sub_1C7C730F8(MEMORY[0x1E69E7CC0]);
  }

  return v37;
}

uint64_t sub_1C7C2D46C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C7C2D47C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C7C2D48C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA6B510](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C7C2AD20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C7C2D528()
{
  result = qword_1EC264518;
  if (!qword_1EC264518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264518);
  }

  return result;
}

unint64_t sub_1C7C2D580()
{
  result = qword_1EC264520;
  if (!qword_1EC264520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264520);
  }

  return result;
}

unint64_t sub_1C7C2D5D8()
{
  result = qword_1EC264528;
  if (!qword_1EC264528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264528);
  }

  return result;
}

uint64_t sub_1C7C2D680(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C7C003B8();
  result = MEMORY[0x1CCA6B510](v2, &type metadata for CredentialType, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1C7BDF708(v7, v6, v8);
      sub_1C7C2AE70(v9, v7, v6, v8);
      sub_1C7BEA9D8(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C7C2D748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SECErrorInternal.localizedDescription.getter(uint64_t a1)
{
  result = 0x6174614465726F43;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 16:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
    case 22:
    case 26:
      result = 0xD000000000000023;
      break;
    case 4:
    case 12:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000002ELL;
      break;
    case 6:
    case 33:
      result = 0xD000000000000010;
      break;
    case 7:
    case 25:
      result = 0xD000000000000034;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 13:
    case 19:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
    case 28:
      result = 0xD00000000000001DLL;
      break;
    case 20:
    case 30:
      result = 0xD000000000000026;
      break;
    case 21:
    case 29:
      result = 0xD00000000000002BLL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0xD00000000000001FLL;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    default:
      result = sub_1C7C7DAC4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C7C2DBF8(uint64_t a1, uint64_t a2)
{
  sub_1C7C7DB64();
  sub_1C7C7D294();
  return sub_1C7C7DB84();
}

uint64_t sub_1C7C2DC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1C7C2DCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C7C7DB64();
  sub_1C7C7D294();
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C2DD08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7C2DE24(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C7C2DD3C(uint64_t a1)
{
  v2 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1C7C2DD78(uint64_t a1)
{
  v2 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1C7C2DDD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t sub_1C7C2DE24(unint64_t result)
{
  if (result > 0x22)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7C2DE38()
{
  result = qword_1EC264560;
  if (!qword_1EC264560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264560);
  }

  return result;
}

unint64_t sub_1C7C2DE8C()
{
  result = qword_1EC264568;
  if (!qword_1EC264568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264568);
  }

  return result;
}

unint64_t sub_1C7C2DEE4()
{
  result = qword_1EC264570;
  if (!qword_1EC264570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264570);
  }

  return result;
}

unint64_t sub_1C7C2DF3C()
{
  result = qword_1EC264578;
  if (!qword_1EC264578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264578);
  }

  return result;
}

unint64_t sub_1C7C2DF94()
{
  result = qword_1EC264580;
  if (!qword_1EC264580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264580);
  }

  return result;
}

unint64_t sub_1C7C2DFEC()
{
  result = qword_1EC264588;
  if (!qword_1EC264588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264588);
  }

  return result;
}

unint64_t sub_1C7C2E050()
{
  result = qword_1EC264590;
  if (!qword_1EC264590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264590);
  }

  return result;
}

uint64_t sub_1C7C2E0A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1C7C25B8C(0, v3, 0);
  v4 = v41;
  v6 = v5 + 64;
  v7 = sub_1C7C7D684();
  v8 = 0;
  v9 = *(v5 + 36);
  v34 = v5 + 72;
  v35 = v3;
  v37 = v9;
  v38 = v5;
  v36 = v5 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(v5 + 36))
    {
      goto LABEL_24;
    }

    v40 = v7 >> 6;
    v39 = v8;
    v12 = v4;
    v13 = *(v5 + 48) + 24 * v7;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_1C7C7CFB4();
    swift_allocObject();
    sub_1C7BDF708(v15, v14, v16);
    sub_1C7C7CFA4();
    sub_1C7BDF724();
    v17 = sub_1C7C7CF94();
    if (v2)
    {
      goto LABEL_28;
    }

    v19 = v17;
    v20 = v18;

    v21 = sub_1C7C7D024();
    sub_1C7BDF778(v19, v20);
    v22 = sub_1C7C7D544();
    sub_1C7BEA9D8(v15, v14, v16);
    v4 = v12;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1C7C25B8C((v23 > 1), v24 + 1, 1);
      v4 = v12;
    }

    *(v4 + 16) = v24 + 1;
    v25 = v4 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    v9 = v37;
    v5 = v38;
    v10 = 1 << *(v38 + 32);
    if (v7 >= v10)
    {
      goto LABEL_25;
    }

    v6 = v36;
    v26 = *(v36 + 8 * v40);
    if ((v26 & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (v37 != *(v38 + 36))
    {
      goto LABEL_27;
    }

    v27 = v26 & (-2 << (v7 & 0x3F));
    if (v27)
    {
      v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v11 = v35;
    }

    else
    {
      v28 = v40 << 6;
      v29 = v40 + 1;
      v11 = v35;
      v30 = (v34 + 8 * v40);
      while (v29 < (v10 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_1C7C322B0(v7, v37, 0);
          v10 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      sub_1C7C322B0(v7, v37, 0);
    }

LABEL_4:
    v2 = 0;
    v8 = v39 + 1;
    v7 = v10;
    if (v39 + 1 == v11)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1C7C2E3D0(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C7C7D6D4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v2 & ~(v2 >> 63), 0);
    v3 = v42;
    if (v31)
    {
      v4 = sub_1C7C7D844();
    }

    else
    {
      v4 = sub_1C7C7D684();
      v5 = *(v1 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v29 = v2;
      v30 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }

        v14 = v39;
        v15 = v41;
        v32 = v40;
        sub_1C7C72C88(&v38, v39, v40, v41, v1);
        v17 = v16;
        v18 = v38;
        v19 = sub_1C7C7D304();
        CredentialType.init(rawValue:)(v19, v20, &v36);
        if (v37 == 255)
        {
          v33 = 0;
          v22 = 0;
          v21 = 22;
        }

        else
        {
          v34 = v36;
          v35 = v37;
          CredentialType.init(fromLegacy:)(&v34, &v36);
          v33 = *(&v36 + 1);
          v21 = v36;
          v22 = v37;
        }

        v23 = sub_1C7C7D534();

        v24 = v3;
        v42 = v3;
        v25 = *(v3 + 16);
        v26 = *(v24 + 24);
        if (v25 >= v26 >> 1)
        {
          sub_1C7C25BEC((v26 > 1), v25 + 1, 1);
          v24 = v42;
        }

        *(v24 + 16) = v25 + 1;
        v27 = v24 + 32 * v25;
        *(v27 + 32) = v21;
        *(v27 + 40) = v33;
        *(v27 + 48) = v22;
        *(v27 + 56) = v23;
        if (v31)
        {
          v1 = v30;
          if (!v15)
          {
            goto LABEL_29;
          }

          v3 = v24;
          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v29;
          v13 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265020, &qword_1C7C90A10);
          v28 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v28(&v36, 0);
        }

        else
        {
          v3 = v24;
          v1 = v30;
          sub_1C7C729F4(v14, v32, v15, v30);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_1C7C322B0(v14, v32, v15);
          v39 = v8;
          v40 = v10;
          v41 = v12 & 1;
          v2 = v29;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_1C7C322B0(v39, v40, v41);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7C2E6D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C7C7D6D4();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v4 & ~(v4 >> 63), 0);
    v36 = v45;
    if (v33)
    {
      v5 = sub_1C7C7D844();
    }

    else
    {
      v5 = sub_1C7C7D684();
      v6 = *(v3 + 36);
    }

    v42 = v5;
    v43 = v6;
    v44 = v33 != 0;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v31 = v4;
      v32 = v3;
      while (v7 < v4)
      {
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        v15 = v44;
        v34 = v42;
        v35 = v43;
        sub_1C7C72A74(&v41, v42, v43, v44, v3);
        v17 = v16;
        v18 = v41;
        v19 = sub_1C7C7D054();
        v21 = v20;
        sub_1C7C7CF84();
        swift_allocObject();
        sub_1C7BED654(v19, v21);
        sub_1C7C7CF74();
        sub_1C7BE4974();
        sub_1C7C7CF64();
        if (v2)
        {

          sub_1C7BDF778(v19, v21);

          sub_1C7BDF778(v19, v21);
          v22 = 0;
          v23 = 0;
          v24 = 22;
        }

        else
        {

          sub_1C7BDF778(v19, v21);
          v37 = v39;
          v38 = v40;
          CredentialType.init(fromLegacy:)(&v37, &v39);
          sub_1C7BDF778(v19, v21);
          v22 = *(&v39 + 1);
          v24 = v39;
          v23 = v40;
        }

        v25 = sub_1C7C7D534();

        v26 = v36;
        v45 = v36;
        v28 = *(v36 + 16);
        v27 = *(v36 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C7C25BEC((v27 > 1), v28 + 1, 1);
          v26 = v45;
        }

        *(v26 + 16) = v28 + 1;
        v29 = v26 + 32 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v22;
        *(v29 + 48) = v23;
        *(v29 + 56) = v25;
        v36 = v26;
        if (v33)
        {
          v2 = 0;
          v3 = v32;
          if (!v15)
          {
            goto LABEL_29;
          }

          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v4 = v31;
          v14 = v7 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646C0, &qword_1C7C90A18);
          v30 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v30(&v39, 0);
        }

        else
        {
          v3 = v32;
          sub_1C7C72858(v34, v35, v15, v32);
          v9 = v8;
          v11 = v10;
          v13 = v12;
          sub_1C7C322B0(v34, v35, v15);
          v42 = v9;
          v43 = v11;
          v44 = v13 & 1;
          v14 = v7 + 1;
          v2 = 0;
          v4 = v31;
        }

        ++v7;
        if (v14 == v4)
        {
          sub_1C7C322B0(v42, v43, v44);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C7C2EA70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - v4;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1C7C7D6D4();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v34 = v5;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BCC(0, v6 & ~(v6 >> 63), 0);
    v38 = v43;
    if (v37)
    {
      result = sub_1C7C7D844();
    }

    else
    {
      result = sub_1C7C7D684();
      v8 = *(a1 + 36);
    }

    v40 = result;
    v41 = v8;
    v42 = v37 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v31[0] = v1;
      v31[1] = v10;
      v32 = v6;
      v33 = a1;
      while (v9 < v6)
      {
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        v19 = v40;
        v18 = v41;
        v20 = v42;
        sub_1C7C72A1C(v39, v40, v41, v42, a1);
        v22 = v21;
        v23 = v39[0];
        v24 = *(v36 + 48);
        v25 = v34;
        sub_1C7C7D0E4();

        *(v25 + v24) = v23;
        v26 = v38;
        v43 = v38;
        v28 = *(v38 + 16);
        v27 = *(v38 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C7C25BCC((v27 > 1), v28 + 1, 1);
          v25 = v34;
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v26;
        result = sub_1C7C32A4C(v25, v26 + v29 + *(v35 + 72) * v28, &qword_1EC264448, &qword_1C7C90A20);
        if (v37)
        {
          a1 = v33;
          if (!v20)
          {
            goto LABEL_28;
          }

          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646D0, &qword_1C7C90A28);
          v30 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          result = v30(v39, 0);
        }

        else
        {
          a1 = v33;
          sub_1C7C72830(v19, v18, v20, v33);
          v12 = v11;
          v14 = v13;
          v16 = v15;
          result = sub_1C7C322B0(v19, v18, v20);
          v40 = v12;
          v41 = v14;
          v42 = v16 & 1;
          v6 = v32;
        }

        ++v9;
        if (v17 == v6)
        {
          sub_1C7C322B0(v40, v41, v42);
          return v38;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7C2EDC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1C7C25BEC(0, v1, 0);
  v2 = v40;
  v4 = v3 + 64;
  result = sub_1C7C7D684();
  v6 = result;
  v7 = 0;
  v34 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v34 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v10 = *(v3 + 56);
    v11 = *(v3 + 48) + 24 * v6;
    v12 = v3;
    v14 = *(v11 + 8);
    v15 = *(v10 + 8 * v6);
    v16 = *(v11 + 16);
    v35[0] = *v11;
    v13 = v35[0];
    v35[1] = v14;
    v36 = v16;
    CredentialType.init(fromLegacy:)(v35, v37);
    v39 = v15;
    v32 = v37[1];
    v33 = v37[0];
    v31 = v38;
    result = sub_1C7BDF708(v13, v14, v16);
    v40 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1C7C25BEC((v17 > 1), v18 + 1, 1);
      v2 = v40;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 32 * v18;
    *(v19 + 32) = v33;
    *(v19 + 40) = v32;
    *(v19 + 48) = v31;
    *(v19 + 56) = v15;
    v8 = 1 << *(v12 + 32);
    v4 = v29;
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v20 = *(v29 + 8 * v9);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v12;
    if (v34 != *(v12 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v9 << 6;
      v23 = v9 + 1;
      v24 = (v27 + 8 * v9);
      while (v23 < (v8 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1C7C322B0(v6, v34, 0);
          v8 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1C7C322B0(v6, v34, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v8;
    if (v30 + 1 == v28)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

id ReservationState.__allocating_init(counts:reservations:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9SEService16ReservationState_counts] = a1;
  *&v5[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ReservationState.init(counts:reservations:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9SEService16ReservationState_counts] = a1;
  *&v2[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ReservationState.stringValue.getter()
{
  swift_getObjectType();
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C2F3D0(&unk_1EC264F30, v0, type metadata accessor for ReservationState, &protocol conformance descriptor for ReservationState);
  v1 = sub_1C7C7CF94();
  v3 = v2;
  v4 = sub_1C7C7D034();
  sub_1C7BDF778(v1, v3);

  return v4;
}

uint64_t sub_1C7C2F3D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t ReservationState.description.getter()
{
  sub_1C7C7D794();

  swift_beginAccess();
  sub_1C7C003B8();

  v0 = sub_1C7C7D264();
  v2 = v1;

  MEMORY[0x1CCA6B380](v0, v2);

  MEMORY[0x1CCA6B380](0x617672657365520ALL, 0xEE003A736E6F6974);
  swift_beginAccess();
  sub_1C7C7D104();
  type metadata accessor for Reservation(0);
  sub_1C7C2F3D0(&unk_1EC264F40, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v3 = sub_1C7C7D264();
  v5 = v4;

  MEMORY[0x1CCA6B380](v3, v5);

  return 0xD000000000000013;
}

id sub_1C7C2F600(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

unint64_t ReservationState.debugDescription.getter()
{
  swift_getObjectType();
  sub_1C7C7D794();
  v0 = ReservationState.description.getter();

  v9 = v0;
  MEMORY[0x1CCA6B380](0x632067756265440ALL, 0xED0000203A65646FLL);
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C2F3D0(&unk_1EC264F30, v1, type metadata accessor for ReservationState, &protocol conformance descriptor for ReservationState);
  v2 = sub_1C7C7CF94();
  v4 = v3;
  v5 = sub_1C7C7D034();
  v7 = v6;
  sub_1C7BDF778(v2, v4);

  MEMORY[0x1CCA6B380](v5, v7);

  return v9;
}

Swift::Void __swiftcall ReservationState.encode(with:)(NSCoder with)
{
  v2 = v1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2645D0, &qword_1C7C907F0);
  v4 = MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v60 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v60 - v10;
  swift_beginAccess();

  v12 = sub_1C7C2E0A8(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D0, &qword_1C7C907F8);
    v13 = sub_1C7C7D914();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v76[0] = v13;

  sub_1C7C315A8(v14, 1, v76);
  v60 = 0;

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  sub_1C7C32260(&qword_1EC2645E0, &qword_1EC262ED0, 0x1E695DEF0);
  v15 = sub_1C7C7D244();

  v16 = sub_1C7C7D2E4();
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v75 = MEMORY[0x1E69E7CC0];

    sub_1C7C25B4C(0, v19, 0);
    v20 = v75;
    v21 = v18 + 64;
    v22 = sub_1C7C7D684();
    v23 = 0;
    v74 = *(v18 + 36);
    v62 = v18 + 72;
    v63 = v19;
    v64 = v18 + 64;
    v65 = v18;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v18 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v21 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_30;
      }

      if (v74 != *(v18 + 36))
      {
        goto LABEL_31;
      }

      v71 = v23;
      v72 = 1 << v22;
      v27 = *(v18 + 48);
      v28 = sub_1C7C7D104();
      v29 = *(v28 - 8);
      v30 = v66;
      (*(v29 + 16))(v66, v27 + *(v29 + 72) * v22, v28);
      v31 = *(*(v18 + 56) + 8 * v22);
      v32 = *(v29 + 32);
      v73 = v20;
      v33 = v67;
      v32(v67, v30, v28);
      v34 = v70;
      *(v33 + *(v70 + 48)) = v31;
      v35 = v68;
      sub_1C7C329E4(v33, v68, &qword_1EC2645D0, &qword_1C7C907F0);
      v36 = *(v35 + *(v34 + 48));
      v37 = v31;

      v38 = sub_1C7C7D0C4();
      v39 = v33;
      v40 = v69;
      sub_1C7C32A4C(v39, v69, &qword_1EC2645D0, &qword_1C7C907F0);
      v41 = *(v40 + *(v34 + 48));
      v42 = *(v29 + 8);
      v43 = v40;
      v20 = v73;
      v42(v43, v28);
      v42(v35, v28);
      v75 = v20;
      v45 = *(v20 + 16);
      v44 = *(v20 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1C7C25B4C((v44 > 1), v45 + 1, 1);
        v20 = v75;
      }

      *(v20 + 16) = v45 + 1;
      v46 = v20 + 16 * v45;
      *(v46 + 32) = v38;
      *(v46 + 40) = v41;
      v18 = v65;
      v24 = 1 << *(v65 + 32);
      if (v22 >= v24)
      {
        goto LABEL_32;
      }

      v21 = v64;
      v47 = *(v64 + 8 * v26);
      if ((v47 & v72) == 0)
      {
        goto LABEL_33;
      }

      if (v74 != *(v65 + 36))
      {
        goto LABEL_34;
      }

      v48 = v47 & (-2 << (v22 & 0x3F));
      if (v48)
      {
        v24 = __clz(__rbit64(v48)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v63;
      }

      else
      {
        v49 = v26 << 6;
        v50 = v26 + 1;
        v25 = v63;
        v51 = (v62 + 8 * v26);
        while (v50 < (v24 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_1C7C322B0(v22, v74, 0);
            v24 = __clz(__rbit64(v52)) + v49;
            goto LABEL_7;
          }
        }

        sub_1C7C322B0(v22, v74, 0);
      }

LABEL_7:
      v23 = v71 + 1;
      v22 = v24;
      if (v71 + 1 == v25)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_24:
    v54 = isa;
    if (*(v20 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2645E8, &qword_1C7C90800);
      v55 = sub_1C7C7D914();
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC8];
    }

    v75 = v55;

    v57 = v60;
    sub_1C7C31220(v56, 1, &v75);
    if (!v57)
    {

      sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
      type metadata accessor for Reservation(0);
      sub_1C7C32260(&unk_1EC2645F8, &qword_1EC263460, 0x1E696AFB0);
      v58 = sub_1C7C7D244();

      v59 = sub_1C7C7D2E4();
      [(objc_class *)v54 encodeObject:v58 forKey:v59];

      return;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

id ReservationState.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
  type metadata accessor for Reservation(0);
  v4 = sub_1C7C7D5F4();
  if (!v4)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = v4;
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  v6 = sub_1C7C7D5F4();
  if (v6)
  {
    sub_1C7C2E3D0(v6);
    v8 = v7;

    if (*(v8 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v9 = sub_1C7C7D914();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC8];
    }

    v21[0] = v9;
    sub_1C7C31E74(v8, 1, v21);
LABEL_14:
    v15 = v21[0];
    goto LABEL_15;
  }

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  v11 = sub_1C7C7D5F4();
  if (v11)
  {
    sub_1C7C2E6D8(v11);
    v13 = v12;

    if (*(v13 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v14 = sub_1C7C7D914();
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC8];
    }

    v21[0] = v14;
    sub_1C7C322BC(v13, 1, v21);

    goto LABEL_14;
  }

  v15 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
LABEL_15:
  *&v1[OBJC_IVAR____TtC9SEService16ReservationState_counts] = v15;
  v16 = sub_1C7C2EA70(v5);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
    v17 = sub_1C7C7D914();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
  }

  v21[0] = v17;

  sub_1C7C31930(v18, 1, v21);

  *&v1[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = v21[0];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, sel_init);

  return v10;
}

uint64_t CredentialType.init(fromLegacy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C7C7CF84();
  swift_allocObject();
  sub_1C7BED654(a1, a2);
  sub_1C7C7CF74();
  sub_1C7BE4974();
  sub_1C7C7CF64();

  sub_1C7BDF778(a1, a2);
  v8 = v10;
  v9 = v11;
  CredentialType.init(fromLegacy:)(&v8, &v10);
  result = sub_1C7BDF778(a1, a2);
  v7 = v11;
  *a3 = v10;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_1C7C3058C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7461767265736572;
  }

  else
  {
    v3 = 0x73746E756F63;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v5 = 0x7461767265736572;
  }

  else
  {
    v5 = 0x73746E756F63;
  }

  if (*a2)
  {
    v6 = 0xEC000000736E6F69;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C7C7DAA4();
  }

  return v8 & 1;
}

uint64_t sub_1C7C30638()
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C306C0(uint64_t a1)
{
  sub_1C7C7D364();
}

uint64_t sub_1C7C30734(uint64_t a1)
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C307B8@<X0>(char *a2@<X8>)
{
  v3 = sub_1C7C7D934();

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

void sub_1C7C30818(uint64_t *a1@<X8>)
{
  v2 = 0x73746E756F63;
  if (*v1)
  {
    v2 = 0x7461767265736572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C7C3085C()
{
  if (*v0)
  {
    return 0x7461767265736572;
  }

  else
  {
    return 0x73746E756F63;
  }
}

uint64_t sub_1C7C3089C@<X0>(char *a3@<X8>)
{
  v4 = sub_1C7C7D934();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C7C30900(uint64_t a1)
{
  v2 = sub_1C7C325A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3093C(uint64_t a1)
{
  v2 = sub_1C7C325A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *ReservationState.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264620, &qword_1C7C90818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C325A4();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
    v14 = 0;
    sub_1C7C326EC(&unk_1EC264FD0, sub_1C7BE4974, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1C7C7D9B4();
    v10 = sub_1C7C2EDC8(v15);

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v11 = sub_1C7C7D914();
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC8];
    }

    v15 = v11;
    sub_1C7C31E74(v10, 1, &v15);
    *(v1 + OBJC_IVAR____TtC9SEService16ReservationState_counts) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264640, &qword_1C7C90828);
    v14 = 1;
    sub_1C7C325F8();
    sub_1C7C7D9B4();
    (*(v6 + 8))(v8, v5);
    *(v1 + OBJC_IVAR____TtC9SEService16ReservationState_reservations) = v15;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t static ReservationState.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2645A0 = a1;
  return result;
}

id ReservationState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReservationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ReservationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264660, &qword_1C7C90830);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C325A4();
  sub_1C7C7DBA4();
  v9 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v14 = *(v3 + v9);
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
  sub_1C7C326EC(&qword_1EC264668, sub_1C7BDF724, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
  sub_1C7C7DA44();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v13 = *(v3 + v10);
    v12[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C32770();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_1C7C311AC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ReservationState.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C7C31220(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_1C7C70348(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1C7C70D04(v16, v6 & 1);
    v11 = sub_1C7C70348(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1C7C722D8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1C7C70348(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1C7C70D04(v32, 1);
        v28 = sub_1C7C70348(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C7C315A8(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_1C7C70398(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1C7C70D18(v16, v6 & 1);
    v11 = sub_1C7C70398(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1C7C722EC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1C7C70398(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1C7C70D18(v32, 1);
        v28 = sub_1C7C70398(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C7C31930(void *a1, char a2, void *a3)
{
  v7 = sub_1C7C7D104();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - v14;
  v58 = a1[2];
  if (!v58)
  {
    goto LABEL_22;
  }

  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  sub_1C7C329E4(a1 + v17, v53 - v14, &qword_1EC264448, &qword_1C7C90A20);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1C7C703E8(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1C7C70F8C(v25, a2 & 1);
    v20 = sub_1C7C703E8(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1C7C7DAF4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_1C7C72450();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v64 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    v30 = swift_dynamicCast();
    v31 = v54;
    if ((v30 & 1) == 0)
    {

      (*(v31 + 8))(v10, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v55 = *(v54 + 72);
  v35 = v20;
  v60((v34 + v55 * v20), v10, v61);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v59 + v57 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_1C7C329E4(v39, v15, &qword_1EC264448, &qword_1C7C90A20);
      v60(v10, v15, v61);
      v18 = *&v15[v56];
      v41 = *a3;
      v42 = sub_1C7C703E8(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_1C7C70F8C(v46, 1);
        v42 = sub_1C7C703E8(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v60((v49[6] + v55 * v42), v10, v61);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v57;
      v38 = v59;
      if (v58 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](39, 0xE100000000000000);
  sub_1C7C7D8D4();
  __break(1u);
}

void sub_1C7C31E74(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1C7BDF708(v8, v7, *(a1 + 48));
  if (v5 == 255)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1C7C70278(v8, v7, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_1C7C704D4(v15, a2 & 1);
    v10 = sub_1C7C70278(v8, v7, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_1C7C71E84();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C7BEA9D8(v8, v7, v5);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = v21[6] + 24 * v10;
  *v22 = v8;
  *(v22 + 8) = v7;
  *(v22 + 16) = v5;
  *(v21[7] + 8 * v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v37 != 1)
    {
      v16 = (a1 + 88);
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        v5 = *(v16 - 8);
        v25 = *v16;
        v8 = *(v16 - 3);
        v7 = *(v16 - 2);
        sub_1C7BDF708(v8, v7, *(v16 - 8));
        if (v5 == 255)
        {
          goto LABEL_23;
        }

        v26 = *a3;
        v27 = sub_1C7C70278(v8, v7, v5);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v14 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v14)
        {
          goto LABEL_25;
        }

        a2 = v28;
        if (v26[3] < v31)
        {
          sub_1C7C704D4(v31, 1);
          v27 = sub_1C7C70278(v8, v7, v5);
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          goto LABEL_9;
        }

        v33 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v34 = v33[6] + 24 * v27;
        *v34 = v8;
        *(v34 + 8) = v7;
        *(v34 + 16) = v5;
        *(v33[7] + 8 * v27) = v25;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v6;
        v33[2] = v36;
        v16 += 4;
        if (v37 == v6)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_23:

    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](39, 0xE100000000000000);
  sub_1C7C7D8D4();
  __break(1u);
}

uint64_t sub_1C7C32260(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C7BED6A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C322B0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1C7C322BC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 48);
  v8 = *(result + 56);
  v10 = *(result + 32);
  v9 = *(result + 40);
  result = sub_1C7BDF708(v10, v9, v7);
  if (v7 == 255)
  {
    return result;
  }

  v39 = v8;
  v11 = *a3;
  result = sub_1C7C70278(v10, v9, v7);
  v13 = v11[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v17) = v12;
  if (v11[3] < v16)
  {
    sub_1C7C704D4(v16, v5 & 1);
    result = sub_1C7C70278(v10, v9, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v22 = result;
  sub_1C7C71E84();
  result = v22;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    v19[(result >> 6) + 8] |= 1 << result;
    v23 = v19[6] + 24 * result;
    *v23 = v10;
    *(v23 + 8) = v9;
    *(v23 + 16) = v7;
    *(v19[7] + 8 * result) = v39;
    v24 = v19[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v19[2] = v25;
      v17 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_9:
  v20 = result;
  v21 = *(v19[7] + 8 * result);
  result = sub_1C7BEA9D8(v10, v9, v7);
  if (__OFADD__(v21, v39))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(v19[7] + 8 * v20) = v21 + v39;
  v17 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_16:
  v3 = (v6 + 88);
  v40 = a3;
  do
  {
    v6 = *(v3 - 8);
    v5 = *v3;
    v9 = *(v3 - 3);
    v7 = *(v3 - 2);
    result = sub_1C7BDF708(v9, v7, *(v3 - 8));
    if (v6 == 255)
    {
      break;
    }

    v29 = *a3;
    result = sub_1C7C70278(v9, v7, v6);
    v31 = *(v29 + 16);
    v32 = (v30 & 1) == 0;
    v15 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v15)
    {
      goto LABEL_27;
    }

    v10 = v30;
    if (*(v29 + 24) < v33)
    {
      sub_1C7C704D4(v33, 1);
      result = sub_1C7C70278(v9, v7, v6);
      if ((v10 & 1) != (v34 & 1))
      {
        goto LABEL_6;
      }
    }

    v35 = *a3;
    if (v10)
    {
      v36 = result;
      v37 = *(v35[7] + 8 * result);
      result = sub_1C7BEA9D8(v9, v7, v6);
      v15 = __OFADD__(v37, v5);
      v38 = v37 + v5;
      a3 = v40;
      if (v15)
      {
        goto LABEL_29;
      }

      *(v35[7] + 8 * v36) = v38;
    }

    else
    {
      v35[(result >> 6) + 8] |= 1 << result;
      v26 = v35[6] + 24 * result;
      *v26 = v9;
      *(v26 + 8) = v7;
      *(v26 + 16) = v6;
      *(v35[7] + 8 * result) = v5;
      v27 = v35[2];
      v15 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v15)
      {
        goto LABEL_28;
      }

      v35[2] = v28;
    }

    v3 += 4;
    --v17;
  }

  while (v17);
  return result;
}

unint64_t sub_1C7C325A4()
{
  result = qword_1EC264628;
  if (!qword_1EC264628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264628);
  }

  return result;
}

unint64_t sub_1C7C325F8()
{
  result = qword_1EC264648;
  if (!qword_1EC264648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C2F3D0(&qword_1EC262F00, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1C7C2F3D0(&qword_1EC264658, 255, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264648);
  }

  return result;
}

uint64_t sub_1C7C326EC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC264630, &qword_1C7C90820);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C32770()
{
  result = qword_1EC264678;
  if (!qword_1EC264678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C2F3D0(&qword_1EC264680, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1C7C2F3D0(&unk_1EC264688, 255, type metadata accessor for Reservation, &protocol conformance descriptor for Reservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264678);
  }

  return result;
}

unint64_t sub_1C7C328E0()
{
  result = qword_1EC264698;
  if (!qword_1EC264698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264698);
  }

  return result;
}

unint64_t sub_1C7C32938()
{
  result = qword_1EC2646A0;
  if (!qword_1EC2646A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646A0);
  }

  return result;
}

unint64_t sub_1C7C32990()
{
  result = qword_1EC2646A8;
  if (!qword_1EC2646A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646A8);
  }

  return result;
}

uint64_t sub_1C7C329E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C7C32A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C7C32AB4()
{
  type metadata accessor for CredentialInternalXPCClient(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7C90A30;
  *(v0 + 32) = 0x80000001C7C9F050;
  result = sub_1C7C7D1A4();
  qword_1EC288330 = v0;
  return result;
}

id sub_1C7C32B54(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C7C7D194();
    v6 = sub_1C7C7D574();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C7B9A000, v5, v6, "CredentialInternalXPCClient: already connected", v7, 2u);
      MEMORY[0x1CCA6C990](v7, -1, -1);
    }
  }

  else
  {
    v8 = sub_1C7C7D194();
    v9 = sub_1C7C7D574();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C7B9A000, v8, v9, "CredentialInternalXPCClient: Starting new XPC connection", v10, 2u);
      MEMORY[0x1CCA6C990](v10, -1, -1);
    }

    v11 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v12 = sub_1C7C7D2E4();
    v13 = [v11 initWithMachServiceName:v12 options:4096];

    v14 = *(v2 + 16);
    *(v2 + 16) = v13;
    v4 = v13;

    if (v4)
    {
      v15 = sub_1C7BFAB64();
      [v4 setRemoteObjectInterface_];

      [v4 setExportedObject_];
      v26 = sub_1C7C333E4;
      v27 = v2;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_1C7C32EF8;
      v25 = &block_descriptor_8;
      v16 = _Block_copy(&v22);

      [v4 setInterruptionHandler_];
      _Block_release(v16);
      v26 = sub_1C7C33408;
      v27 = v2;
      v22 = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_1C7C32EF8;
      v25 = &block_descriptor_11;
      v17 = _Block_copy(&v22);

      [v4 setInvalidationHandler_];
      _Block_release(v17);
      [v4 activate];
    }

    else
    {
      v18 = sub_1C7C7D194();
      v19 = sub_1C7C7D594();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C7B9A000, v18, v19, "CredentialInternalXPCClient: Unable to start XPC Connection", v20, 2u);
        MEMORY[0x1CCA6C990](v20, -1, -1);
      }

      sub_1C7C33390();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_1C7C32EF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C7C32F3C(uint64_t a1, const char *a2)
{
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C7B9A000, v4, v5, a2, v6, 2u);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t sub_1C7C32FFC()
{

  v1 = OBJC_IVAR____TtC9SEService27CredentialInternalXPCClient_logger;
  v2 = sub_1C7C7D1B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CredentialInternalXPCClient(uint64_t a1)
{
  result = qword_1EDCF51F0;
  if (!qword_1EDCF51F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C330FC(uint64_t a1)
{
  result = sub_1C7C7D1B4();
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

uint64_t sub_1C7C331A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C7C32B54(a1);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v12[4] = sub_1C7C33370;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C7C54C88;
  v12[3] = &block_descriptor_1;
  v9 = _Block_copy(v12);

  v10 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_1C7C7D664();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2646E0, &qword_1C7C90AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
  }

  sub_1C7C55DE8(&v13, a1, a3, a4);
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}