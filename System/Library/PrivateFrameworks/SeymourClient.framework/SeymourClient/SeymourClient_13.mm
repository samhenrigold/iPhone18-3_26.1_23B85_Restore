uint64_t sub_1B4F1E6DC()
{
  v1 = *(*v0 + 304);
  *(*v0 + 784) = v1;
  if (v1)
  {
    v2 = sub_1B4F1FB80;
  }

  else
  {
    v2 = sub_1B4F1E7EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1E7EC()
{
  v37 = v0;
  v1 = *(*(v0 + 664) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  *(v0 + 856) = v1;
  v2 = [v1 startDate];
  if (v2)
  {
    v3 = *(v0 + 736);
    v4 = *(v0 + 728);
    v34 = *(v0 + 720);
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    v8 = v2;
    sub_1B4F64934();

    (*(v3 + 56))(v7, 0, 1, v4);
    sub_1B4DD2BC4(v7, &qword_1EB8F54A0, &qword_1B4F730F8);
    v9 = sub_1B4F648F4();
    *(v0 + 864) = v9;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B4F1F1F0;
    swift_continuation_init();
    *(v0 + 456) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v5 + 32))(boxed_opaque_existential_1, v34, v6);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1B4ECD214;
    *(v0 + 424) = &block_descriptor_40_0;
    [v1 endCollectionWithEndDate:v9 completion:?];
    (*(v5 + 8))(boxed_opaque_existential_1, v6);
    v11 = v0 + 80;
LABEL_7:

    return MEMORY[0x1EEE6DEC8](v11);
  }

  v12 = *(v0 + 696);
  (*(*(v0 + 736) + 56))(v12, 1, 1, *(v0 + 728));
  sub_1B4DD2BC4(v12, &qword_1EB8F54A0, &qword_1B4F730F8);
  v13 = *(v0 + 664);
  [*(v0 + 856) elapsedTime];
  v15 = v14;
  sub_1B4DF7310(59, 60.0);
  v17 = v16;
  v18 = v13;
  v19 = sub_1B4F67C34();
  v20 = sub_1B4F685E4();

  v21 = os_log_type_enabled(v19, v20);
  if (v17 < v15)
  {
    if (v21)
    {
      v22 = *(v0 + 664);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B4DC4F88(*(v22 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v22 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v36);
      _os_log_impl(&dword_1B4DC2000, v19, v20, "HealthWorkoutSession: Saving workout: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1B8C831D0](v24, -1, -1);
      MEMORY[0x1B8C831D0](v23, -1, -1);
    }

    v35 = *(v0 + 856);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 656;
    *(v0 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v0 + 392) = v27;
    v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v26 + 32))(v28, v25, v27);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B4F1FFC4;
    *(v0 + 360) = &block_descriptor_35;
    [v35 finishWorkoutWithCompletion_];
    (*(v26 + 8))(v28, v27);
    v11 = v0 + 16;
    goto LABEL_7;
  }

  if (v21)
  {
    v29 = *(v0 + 664);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1B4DC4F88(*(v29 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v29 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v36);
    _os_log_impl(&dword_1B4DC2000, v19, v20, "HealthWorkoutSession: Discarding workout: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B8C831D0](v31, -1, -1);
    MEMORY[0x1B8C831D0](v30, -1, -1);
  }

  [*(v0 + 856) discardWorkout];
  v32 = swift_task_alloc();
  *(v0 + 896) = v32;
  *v32 = v0;
  v32[1] = sub_1B4F1FA84;

  return sub_1B4F1BD88(4);
}

uint64_t sub_1B4F1EE20()
{
  v1 = *(*v0 + 176);
  *(*v0 + 840) = v1;
  if (v1)
  {
    v2 = sub_1B4F1FC54;
  }

  else
  {
    v2 = sub_1B4F1EF30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1EF30()
{
  v7 = *(v0 + 824);
  v1 = *(v0 + 808);
  v6 = *(v0 + 776);
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);

  *(v0 + 208) = v0;
  *(v0 + 216) = sub_1B4F1F0E0;
  swift_continuation_init();
  *(v0 + 584) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
  sub_1B4F68294();
  v1(boxed_opaque_existential_1, v2, v3);
  *(v0 + 528) = MEMORY[0x1E69E9820];
  *(v0 + 536) = 1107296256;
  *(v0 + 544) = sub_1B4ECD214;
  *(v0 + 552) = &block_descriptor_46;
  [v6 endWithCompletion_];
  v7(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 208);
}

uint64_t sub_1B4F1F0E0()
{
  v1 = *(*v0 + 240);
  *(*v0 + 848) = v1;
  if (v1)
  {
    v2 = sub_1B4F1FD38;
  }

  else
  {
    v2 = sub_1B4F2575C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1F1F0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 872) = v1;
  if (v1)
  {
    v2 = sub_1B4F1FE0C;
  }

  else
  {
    v2 = sub_1B4F1F300;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1F300()
{
  v24 = v0;

  v1 = *(v0 + 664);
  [*(v0 + 856) elapsedTime];
  v3 = v2;
  sub_1B4DF7310(59, 60.0);
  v5 = v4;
  v6 = v1;
  v7 = sub_1B4F67C34();
  v8 = sub_1B4F685E4();

  v9 = os_log_type_enabled(v7, v8);
  if (v5 >= v3)
  {
    if (v9)
    {
      v17 = *(v0 + 664);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B4DC4F88(*(v17 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v17 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v23);
      _os_log_impl(&dword_1B4DC2000, v7, v8, "HealthWorkoutSession: Discarding workout: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B8C831D0](v19, -1, -1);
      MEMORY[0x1B8C831D0](v18, -1, -1);
    }

    [*(v0 + 856) discardWorkout];
    v20 = swift_task_alloc();
    *(v0 + 896) = v20;
    *v20 = v0;
    v20[1] = sub_1B4F1FA84;

    return sub_1B4F1BD88(4);
  }

  else
  {
    if (v9)
    {
      v10 = *(v0 + 664);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B4DC4F88(*(v10 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v10 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v23);
      _os_log_impl(&dword_1B4DC2000, v7, v8, "HealthWorkoutSession: Saving workout: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B8C831D0](v12, -1, -1);
      MEMORY[0x1B8C831D0](v11, -1, -1);
    }

    v22 = *(v0 + 856);
    v13 = *(v0 + 688);
    v14 = *(v0 + 680);
    v15 = *(v0 + 672);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 656;
    *(v0 + 24) = sub_1B4F1F714;
    swift_continuation_init();
    *(v0 + 392) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7180, &qword_1B4F7C2D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68294();
    (*(v14 + 32))(boxed_opaque_existential_1, v13, v15);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B4F1FFC4;
    *(v0 + 360) = &block_descriptor_35;
    [v22 finishWorkoutWithCompletion_];
    (*(v14 + 8))(boxed_opaque_existential_1, v15);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1B4F1F714()
{
  v1 = *(*v0 + 48);
  *(*v0 + 880) = v1;
  if (v1)
  {
    v2 = sub_1B4F1FEF0;
  }

  else
  {
    v2 = sub_1B4F1F824;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F1F824()
{
  v1 = swift_task_alloc();
  *(v0 + 888) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F1F8C0;

  return sub_1B4F1BD88(3);
}

uint64_t sub_1B4F1F8C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4F1F9BC, 0, 0);
}

uint64_t sub_1B4F1F9BC()
{
  (*(v0 + 768))(*(v0 + 752), *(v0 + 728));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F1FA84()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4F25760, 0, 0);
}

uint64_t sub_1B4F1FB80(uint64_t a1)
{
  v2 = v1[96];
  v3 = v1[94];
  v4 = v1[91];
  swift_willThrow();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1B4F1FC54(uint64_t a1)
{
  v2 = v1[99];
  v3 = v1[96];
  v4 = v1[94];
  v5 = v1[91];
  swift_willThrow();
  v3(v4, v5);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B4F1FD38(uint64_t a1)
{
  v2 = v1[96];
  v3 = v1[94];
  v4 = v1[91];
  swift_willThrow();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1B4F1FE0C(uint64_t a1)
{
  v2 = v1[108];
  v3 = v1[96];
  v4 = v1[94];
  v5 = v1[91];
  swift_willThrow();
  v3(v4, v5);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B4F1FEF0(uint64_t a1)
{
  v2 = v1[96];
  v3 = v1[94];
  v4 = v1[91];
  swift_willThrow();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

void sub_1B4F1FFC4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
    sub_1B4F682A4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7170, &unk_1B4F7C2C0);
    sub_1B4F682B4();
  }
}

id HealthWorkoutSession.makeQuantityQuery(type:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v8 = MEMORY[0x1B8C81EA0](a1);
  v9 = *(v4 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_builder);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = objc_allocWithZone(MEMORY[0x1E696C5A0]);
  v15[4] = sub_1B4F2406C;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B4F23D98;
  v15[3] = &block_descriptor_55;
  v12 = _Block_copy(v15);

  v13 = [v11 initWithQuantityType:v8 workoutBuilder:v9 quantitiesAddedHandler:v12];

  _Block_release(v12);

  return v13;
}

void sub_1B4F201B8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, void))
{

  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72A8, &qword_1B4F7C498);
  sub_1B4F68EE4();
  a4(v7, v8);
  sub_1B4E6B7A8(v7, v8);
}

uint64_t sub_1B4F20250(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E0, &qword_1B4F7C230);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20320, 0, 0);
}

uint64_t sub_1B4F20320()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F70E8, &qword_1B4F7C238);
  v4[4] = sub_1B4E21468(&qword_1EB8F70F0, &qword_1EB8F70E8, &qword_1B4F7C238, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F20474(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7100, &qword_1B4F7C248);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20544, 0, 0);
}

uint64_t sub_1B4F20544()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7108, &qword_1B4F7C250);
  v4[4] = sub_1B4E21468(&qword_1EB8F7110, &qword_1EB8F7108, &qword_1B4F7C250, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F20698(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7120, &qword_1B4F7C260);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4F20768, 0, 0);
}

uint64_t sub_1B4F20768()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7128, &qword_1B4F7C268);
  v4[4] = sub_1B4E21468(&qword_1EB8F7130, &qword_1EB8F7128, &qword_1B4F7C268, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25754, v6, v5);
}

uint64_t sub_1B4F208BC(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7140, &qword_1B4F7C278);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4F2098C, 0, 0);
}

uint64_t sub_1B4F2098C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[6] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionStateStreamPublisher);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7148, &qword_1B4F7C280);
  v4[4] = sub_1B4E21468(&qword_1EB8F7150, &qword_1EB8F7148, &qword_1B4F7C280, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7098, &unk_1B4F7C1D0);
  sub_1B4E21468(&qword_1EB8F7158, &qword_1EB8F7098, &unk_1B4F7C1D0, MEMORY[0x1E699F0F0]);
  v6 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F20AE0, v6, v5);
}

uint64_t sub_1B4F20AE0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1B4F67B44();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4F20B74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.activate()();
}

uint64_t sub_1B4F20C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.pause()();
}

uint64_t sub_1B4F20C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return HealthWorkoutSession.resume()();
}

uint64_t sub_1B4F20D24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE13F0;

  return HealthWorkoutSession.deactivate()();
}

uint64_t HealthWorkoutSession.workoutBuilder(_:didCollectDataOf:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v51 - v8;
  v10 = sub_1B4F679A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4F67C54();
  __swift_project_value_buffer(v15, qword_1EDB6DFB0);

  v16 = sub_1B4F67C34();
  v17 = sub_1B4F685B4();

  v18 = os_log_type_enabled(v16, v17);
  v53 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v51 = v14;
    v22 = v21;
    v57[0] = v21;
    *v20 = 136315138;
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    v23 = sub_1B4F68514();
    v25 = v9;
    v26 = v3;
    v27 = a1;
    v28 = sub_1B4DC4F88(v23, v24, v57);

    *(v20 + 4) = v28;
    a1 = v27;
    v3 = v26;
    v9 = v25;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "Got event for %s types.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v29 = v22;
    v14 = v51;
    MEMORY[0x1B8C831D0](v29, -1, -1);
    v30 = v20;
    v11 = v52;
    MEMORY[0x1B8C831D0](v30, -1, -1);
  }

  v31 = OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_workout;
  swift_beginAccess();
  if (!(*(v11 + 48))(&v3[v31], 1, v10))
  {
    (*(v11 + 16))(v14, &v3[v31], v10);
    v32 = sub_1B4F67984();
    (*(v11 + 8))(v14, v10);
    v55 = v32;
    v56 = BYTE4(v32) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7198, &qword_1B4F7C308);
    sub_1B4F65044();
    v33 = v54;
    if (v54 != 5)
    {
      v34 = sub_1B4F68324();
      (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = v3;
      *(v35 + 40) = v33;
      v36 = v3;
      sub_1B4E4E620(0, 0, v9, &unk_1B4F7C318, v35);
    }
  }

  v37 = v53;
  if (sub_1B4F2143C(v53))
  {
    v38 = sub_1B4F68324();
    (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v3;
    v39[5] = a1;
    v40 = v3;
    v41 = a1;
    sub_1B4E4E620(0, 0, v9, &unk_1B4F7C300, v39);
  }

  if (sub_1B4F227C0(v37, MEMORY[0x1E696BCF8]))
  {
    v42 = sub_1B4F68324();
    (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v3;
    v43[5] = a1;
    v44 = v3;
    v45 = a1;
    sub_1B4E4E620(0, 0, v9, &unk_1B4F7C2F0, v43);
  }

  result = sub_1B4F227C0(v37, MEMORY[0x1E696BD30]);
  if (result)
  {
    v47 = sub_1B4F68324();
    (*(*(v47 - 8) + 56))(v9, 1, 1, v47);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v3;
    v48[5] = a1;
    v49 = v3;
    v50 = a1;
    sub_1B4E4E620(0, 0, v9, &unk_1B4F7C2E0, v48);
  }

  return result;
}

uint64_t sub_1B4F213A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1B4DE13F0;

  return sub_1B4F1BD88(a5);
}

uint64_t sub_1B4F2143C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B4F688E4();
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    result = sub_1B4F68544();
    v1 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v31 = v1;
  while (v1 < 0)
  {
    if (!sub_1B4F68914() || (sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0), swift_dynamicCast(), v15 = v33, v13 = v5, v14 = v6, !v33))
    {
LABEL_29:
      v30 = 0;
LABEL_30:
      sub_1B4E632A0(v1);
      return v30;
    }

LABEL_18:
    v32 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4F7C1A0;
    *(inited + 32) = sub_1B4F67F74();
    *(inited + 40) = v17;
    *(inited + 48) = sub_1B4F67F74();
    *(inited + 56) = v18;
    v19 = sub_1B4E2A75C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = [v15 identifier];
    v21 = sub_1B4F67F74();
    v23 = v22;

    if (*(v19 + 16))
    {
      sub_1B4F68E84();
      sub_1B4F67FE4();
      v24 = sub_1B4F68EC4();
      v25 = -1 << *(v19 + 32);
      v26 = v24 & ~v25;
      if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v19 + 48) + 16 * v26);
          v29 = *v28 == v21 && v28[1] == v23;
          if (v29 || (sub_1B4F68D54() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v30 = 1;
        v1 = v31;
        goto LABEL_30;
      }
    }

LABEL_8:

    v5 = v13;
    v1 = v31;
    v6 = v32;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4F217C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F64FD4();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21884, 0, 0);
}

uint64_t sub_1B4F21884()
{
  sub_1B4F23C90(*MEMORY[0x1E696BC78]);
  sub_1B4F23C90(*MEMORY[0x1E696BC38]);
  sub_1B4F684B4();
  sub_1B4F64FA4();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F21980;
  v2 = *(v0 + 48);

  return sub_1B4F21AD8(v2);
}

uint64_t sub_1B4F21980()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B4F21AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F21AF8, 0, 0);
}

uint64_t sub_1B4F21AF8()
{
  v17 = v0;
  sub_1B4F64F84();
  v2 = v1;
  sub_1B4F64FB4();
  v4 = v3;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 24);
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  v7 = v5;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 24);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1B4DC4F88(*(v10 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v10 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v2;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Updating calories for session %s: Basal: %f Active: %f", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B8C831D0](v12, -1, -1);
    MEMORY[0x1B8C831D0](v11, -1, -1);
  }

  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_calorieStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7068, &qword_1B4F7C1B8);
  sub_1B4E21468(&qword_1EB8F70F8, &qword_1EB8F7068, &qword_1B4F7C1B8, MEMORY[0x1E699F0F0]);
  v14 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21D20, v14, v13);
}

uint64_t sub_1B4F21D20()
{
  sub_1B4F67B54();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F21D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F65854();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F21E44, 0, 0);
}

uint64_t sub_1B4F21E44()
{
  sub_1B4F21EE8(*(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F25758;
  v2 = *(v0 + 48);

  return sub_1B4F22410(v2);
}

uint64_t sub_1B4F21EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - v14;
  v16 = sub_1B4F64964();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v36 - v23;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v25 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BCF8]);
  v26 = [v2 statisticsForType_];

  if (v26)
  {
    v27 = [v26 mostRecentQuantityDateInterval];
    if (v27)
    {
      v28 = v27;
      sub_1B4F64644();

      v29 = sub_1B4F64664();
      (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    }

    else
    {
      v29 = sub_1B4F64664();
      (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
    }

    sub_1B4F25568(v7, v11);
    sub_1B4F64664();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v11, 1, v29) != 1)
    {
      sub_1B4F64654();
      (*(v30 + 8))(v11, v29);
      (*(v17 + 56))(v15, 0, 1, v16);
      (*(v17 + 32))(v24, v15, v16);
      goto LABEL_10;
    }

    sub_1B4DD2BC4(v11, &unk_1EB8F7290, &qword_1B4F7C480);
  }

  (*(v17 + 56))(v15, 1, 1, v16);
  sub_1B4F648D4();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_1B4DD2BC4(v15, &qword_1EB8F54A0, &qword_1B4F730F8);
  }

LABEL_10:
  sub_1B4F64954();
  sub_1B4F648E4();
  v31 = *(v17 + 8);
  v31(v20, v16);
  if (qword_1EB8F3D30 != -1)
  {
    swift_once();
  }

  if (v26)
  {
    v32 = [v26 sumQuantity];
    if (v32)
    {
      v33 = v32;
      v34 = [objc_opt_self() meterUnit];
      [v33 doubleValueForUnit_];
    }
  }

  sub_1B4F684B4();
  v37 = 1;
  sub_1B4F65824();

  return (v31)(v24, v16);
}

uint64_t sub_1B4F22410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B4F65854();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F224D0, 0, 0);
}

uint64_t sub_1B4F224D0()
{
  v23 = v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B4DC4F88(*(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v22);
    *(v15 + 12) = 2048;
    sub_1B4F65834();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    *(v15 + 14) = v18;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Updating distance for session %s: Distance: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B8C831D0](v16, -1, -1);
    MEMORY[0x1B8C831D0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_distanceStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7078, &qword_1B4F7C1C0);
  sub_1B4E21468(&qword_1EB8F7118, &qword_1EB8F7078, &qword_1B4F7C1C0, MEMORY[0x1E699F0F0]);
  v20 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F22754, v20, v19);
}

uint64_t sub_1B4F22754()
{
  sub_1B4F67B54();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F227C0(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B4F688E4();
    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    sub_1B4F243D8();
    result = sub_1B4F68544();
    v2 = v24;
    v22 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v22 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = v4;
  while (v2 < 0)
  {
    if (!sub_1B4F68914())
    {
      v12 = 0;
      goto LABEL_25;
    }

    sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
    swift_dynamicCast();
    v12 = v23;
    if (!v23)
    {
      goto LABEL_25;
    }

LABEL_17:
    v13 = v2;
    v14 = [v12 identifier];
    v15 = sub_1B4F67F74();
    v17 = v16;

    if (v15 == sub_1B4F67F74() && v17 == v18)
    {

      v12 = 1;
      v2 = v13;
      goto LABEL_25;
    }

    v20 = sub_1B4F68D54();

    v2 = v13;
    if (v20)
    {
      v12 = 1;
LABEL_25:
      sub_1B4E632A0(v2);
      return v12;
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v11 = *(v22 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4F22A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B4F65B84();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F22B28, 0, 0);
}

uint64_t sub_1B4F22B28()
{
  sub_1B4F22BCC(*(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B4F25758;
  v2 = *(v0 + 48);

  return sub_1B4F23368(v2);
}

uint64_t sub_1B4F22BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v58 - v13;
  v15 = sub_1B4F64964();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - v22;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v24 = MEMORY[0x1B8C81EA0](*MEMORY[0x1E696BD30]);
  v25 = [v2 statisticsForType_];

  if (v25)
  {
    v26 = [v25 mostRecentQuantityDateInterval];
    if (v26)
    {
      v27 = v26;
      sub_1B4F64644();

      v28 = sub_1B4F64664();
      (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    }

    else
    {
      v28 = sub_1B4F64664();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    }

    sub_1B4F25568(v6, v10);
    sub_1B4F64664();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v10, 1, v28) != 1)
    {
      sub_1B4F64654();
      (*(v29 + 8))(v10, v28);
      (*(v16 + 56))(v14, 0, 1, v15);
      (*(v16 + 32))(v23, v14, v15);
      goto LABEL_10;
    }

    sub_1B4DD2BC4(v10, &unk_1EB8F7290, &qword_1B4F7C480);
  }

  (*(v16 + 56))(v14, 1, 1, v15);
  sub_1B4F648D4();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_1B4DD2BC4(v14, &qword_1EB8F54A0, &qword_1B4F730F8);
  }

LABEL_10:
  sub_1B4F64954();
  sub_1B4F648E4();
  v30 = *(v16 + 8);
  v30(v19, v15);
  if (qword_1EB8F3D30 != -1)
  {
    swift_once();
  }

  if (v25)
  {
    v59 = v30;
    v31 = [v25 mostRecentQuantity];
    v32 = 0x1FBD82000;
    if (v31)
    {
      v33 = v31;
      v34 = objc_opt_self();
      v35 = [v34 countUnit];
      v36 = [v34 minuteUnit];
      v37 = [v35 unitDividedByUnit_];

      v32 = &off_1E7C14000;
      [v33 doubleValueForUnit_];
    }

    v38 = [v25 averageQuantity];
    if (v38)
    {
      v39 = v38;
      v40 = objc_opt_self();
      v41 = [v40 countUnit];
      v42 = [v40 minuteUnit];
      v43 = [v41 unitDividedByUnit_];

      v32 = &off_1E7C14000;
      [v39 doubleValueForUnit_];
    }

    v44 = [v25 minimumQuantity];
    if (v44)
    {
      v45 = v44;
      v46 = objc_opt_self();
      v47 = [v46 countUnit];
      v48 = [v46 minuteUnit];
      v49 = [v47 unitDividedByUnit_];

      v32 = &off_1E7C14000;
      [v45 doubleValueForUnit_];
    }

    v50 = [v25 maximumQuantity];
    if (v50)
    {
      v51 = v50;
      v52 = v32;
      v53 = objc_opt_self();
      v54 = [v53 countUnit];
      v55 = [v53 minuteUnit];
      v56 = [v54 unitDividedByUnit_];

      [v51 v52 + 3267];
    }

    v30 = v59;
  }

  sub_1B4F684B4();
  v61 = 1;
  sub_1B4F65B44();

  return (v30)(v23, v15);
}

uint64_t sub_1B4F23368(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B4F65B84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F23428, 0, 0);
}

uint64_t sub_1B4F23428()
{
  v23 = v0;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB6DFB0);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B4DC4F88(*(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier), *(v14 + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8), &v22);
    *(v15 + 12) = 2048;
    sub_1B4F65B54();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    *(v15 + 14) = v18;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "HealthWorkoutSession: Updating heart rate for session %s: Heart Rate: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B8C831D0](v16, -1, -1);
    MEMORY[0x1B8C831D0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v0[7] = *(v0[3] + OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_heartRateStreamPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7088, &qword_1B4F7C1C8);
  sub_1B4E21468(&qword_1EB8F7138, &qword_1EB8F7088, &qword_1B4F7C1C8, MEMORY[0x1E699F0F0]);
  v20 = sub_1B4F68274();

  return MEMORY[0x1EEE6DFA0](sub_1B4F2574C, v20, v19);
}

Swift::Void __swiftcall HealthWorkoutSession.workoutBuilder(_:didEnd:)(HKLiveWorkoutBuilder _, HKWorkoutActivity didEnd)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB6DFB0);
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x80000001B4F845B0;
  v10._object = 0x80000001B4F845E0;
  v10._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v9, v10);
  v11 = sub_1B4F68324();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v13 = v3;
  sub_1B4E4E620(0, 0, v7, &unk_1B4F7C328, v12);
}

uint64_t sub_1B4F238D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return sub_1B4F1BD88(3);
}

uint64_t sub_1B4F23C90(void *a1)
{
  v2 = v1;
  sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
  v4 = MEMORY[0x1B8C81EA0](a1);
  v5 = [v2 statisticsForType_];

  if (v5)
  {
    v6 = [v5 sumQuantity];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() kilocalorieUnit];
      [v7 doubleValueForUnit_];
      v10 = v9;

      return v10;
    }
  }

  return 0;
}

uint64_t sub_1B4F23D98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1B4DD8804(0, &qword_1EB8F72A0, 0x1E696C598);
    v5 = sub_1B4F681C4();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1B4F23E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F19028(a1, v4, v5, v6);
}

uint64_t sub_1B4F23F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F19960(a1, v4, v5, v6);
}

uint64_t sub_1B4F23FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F1A298(a1, v4, v5, v6);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4F2408C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F22A68(a1, v4, v5, v7, v6);
}

uint64_t sub_1B4F2414C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F21D84(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4F24254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE13F0;

  return sub_1B4F217C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B4F24314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F213A0(a1, v4, v5, v6, v7);
}

unint64_t sub_1B4F243D8()
{
  result = qword_1EB8F71A8;
  if (!qword_1EB8F71A8)
  {
    sub_1B4DD8804(255, &qword_1EDB6DA90, 0x1E696C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F71A8);
  }

  return result;
}

void _s13SeymourClient20HealthWorkoutSessionC29workoutBuilderDidCollectEventyySo06HKLivedG0CF_0()
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4F67C54();
  __swift_project_value_buffer(v0, qword_1EDB6DFB0);
  oslog = sub_1B4F67C34();
  v1 = sub_1B4F685E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B4DC2000, oslog, v1, "HealthWorkoutSession: Workout Builder Collected Event.", v2, 2u);
    MEMORY[0x1B8C831D0](v2, -1, -1);
  }
}

uint64_t sub_1B4F24528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return sub_1B4F238D8();
}

void sub_1B4F245DC(uint64_t a1, uint64_t a2)
{
  v3 = HKWorkoutSessionStateToString();
  v4 = sub_1B4F67F74();
  v6 = v5;

  v7 = HKWorkoutSessionStateToString();
  v8 = sub_1B4F67F74();
  v10 = v9;

  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DFB0);
  v12 = v2;

  oslog = sub_1B4F67C34();
  v13 = sub_1B4F685E4();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1B4DC4F88(*&v12[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier], *&v12[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8], &v19);
    *(v14 + 12) = 2080;
    v16 = sub_1B4DC4F88(v4, v6, &v19);

    *(v14 + 14) = v16;
    *(v14 + 22) = 2080;
    v17 = sub_1B4DC4F88(v8, v10, &v19);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_1B4DC2000, oslog, v13, "HealthWorkoutSession (%s) changed from %s to %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v15, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  else
  {
  }
}

void sub_1B4F24818(void *a1)
{
  if (qword_1EDB6DFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DFB0);
  v4 = v1;
  v5 = a1;
  oslog = sub_1B4F67C34();
  v6 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1B4DC4F88(*&v4[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier], *&v4[OBJC_IVAR____TtC13SeymourClient20HealthWorkoutSession_sessionIdentifier + 8], &v13);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = MEMORY[0x1B8C826C0]();
    v11 = sub_1B4DC4F88(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1B4DC2000, oslog, v6, "HealthWorkoutSession (%s) error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v8, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeCalorieStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeDistanceStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeHeartRateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.makeSessionStateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.pause()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.resume()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return v7(a1, a2);
}

uint64_t dispatch thunk of HealthWorkoutSessionProtocol.deactivate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return v7(a1, a2);
}

uint64_t type metadata accessor for HealthWorkoutSession(uint64_t a1)
{
  result = qword_1EB8F71B8;
  if (!qword_1EB8F71B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4F2536C(uint64_t a1)
{
  sub_1B4F25478(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B4F25478(uint64_t a1)
{
  if (!qword_1EB8F71C8)
  {
    sub_1B4F679A4();
    v1 = sub_1B4F687D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8F71C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for HealthWorkoutSession.SessionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthWorkoutSession.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B4F25568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7290, &qword_1B4F7C480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F255D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F25648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4F25690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7680, &qword_1B4F795D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CatalogClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
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
  v12 = swift_allocObject();
  v13 = sub_1B4F2DC20(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F258B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB72490);
    v4._countAndFlagsBits = 0xD000000000000021;
    v4._object = 0x80000001B4F84720;
    v5._object = 0x80000001B4F85080;
    v5._countAndFlagsBits = 0xD000000000000016;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for CatalogDeleted, &protocol witness table for CatalogDeleted, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F259CC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._countAndFlagsBits = 0xD000000000000021;
    v6._object = 0x80000001B4F84720;
    v7._object = 0x80000001B4F85060;
    v7._countAndFlagsBits = 0xD000000000000018;
    Logger.trace(file:function:)(v6, v7);
    v8 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v10 = v2;
    (*(v8 + 8))(&v10, &type metadata for CatalogUpdated, &protocol witness table for CatalogUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F25AEC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB72490);
    v4._countAndFlagsBits = 0xD000000000000021;
    v4._object = 0x80000001B4F84720;
    v5._object = 0x80000001B4F85040;
    v5._countAndFlagsBits = 0xD00000000000001ELL;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for CatalogMetadataUpdated, &protocol witness table for CatalogMetadataUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t sub_1B4F25C00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6._object = 0x80000001B4F84720;
    v7._countAndFlagsBits = 0xD000000000000030;
    v7._object = 0x80000001B4F85000;
    v6._countAndFlagsBits = 0xD000000000000021;
    Logger.trace(file:function:)(v6, v7);
    v8 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v11 = v2;
    v10 = *(v8 + 8);

    v10(&v11, &type metadata for CatalogTipJournalsUpdated, &protocol witness table for CatalogTipJournalsUpdated, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1B4F25D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F25E18, 0, 0);
}

uint64_t sub_1B4F25E18()
{
  v17 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000032;
  v6._object = 0x80000001B4F84FC0;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 101;
  v0[2] = v3;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v11 = sub_1B4F2E5D0();
  v12 = sub_1B4F2E654();
  v9(&v16, v0 + 2, MEMORY[0x1E69E6530], v10, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v11, v12, ObjectType, v7);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *(v13 + 16) = "SeymourClient/CatalogClient.swift";
  *(v13 + 24) = 33;
  *(v13 + 32) = 2;
  *(v13 + 40) = 66;
  *(v13 + 48) = v1;
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_1B4F26050;

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E2B834, v13, v10);
}

uint64_t sub_1B4F26050()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1B4F262F0;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[3];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1B4F261B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F261B0()
{
  if (*(v0[14] + 16))
  {
    v5 = (v0[5] + *v0[5]);
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_1B4F2636C;
    v2 = v0[14];

    return v5(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B4F262F0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4F2636C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B4F2664C;
  }

  else
  {
    v2 = sub_1B4F26480;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F26480()
{
  v1 = v0[4];
  v2 = *(v0[14] + 16);

  v4 = __OFADD__(v1, v2);
  v5 = v1 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1B4F26534;
    v7 = v0[6];
    v8 = v0[5];

    return sub_1B4F25D48(v5, v8, v7);
  }

  return result;
}

uint64_t sub_1B4F26534()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F2664C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CatalogClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CatalogClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CatalogClient.deleteAllCatalogTipJournals()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84750;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 92;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t CatalogClient.deleteCatalog()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0x61436574656C6564;
  v2._object = 0xEF2928676F6C6174;
  v3._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 62;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t CatalogClient.deleteCatalogSyncAnchor()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84770;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 63;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteCatalogEditorialCollectionDetail(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F84720;
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x80000001B4F84790;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 88;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67394();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CCFF0], MEMORY[0x1E69CCFF8], ObjectType, v8);
}

uint64_t CatalogClient.fetchRemoteCatalogModalityDetail(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F84720;
  v7._countAndFlagsBits = 0xD000000000000024;
  v7._object = 0x80000001B4F847C0;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 65;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F664C4();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC2B8], MEMORY[0x1E69CC2C0], ObjectType, v8);
}

uint64_t CatalogClient.fetchRemoteCatalogProgramDetail(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F84720;
  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x80000001B4F847F0;
  v6._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 66;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F663D4();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC0F0], MEMORY[0x1E69CC0F8], ObjectType, v8);
}

uint64_t CatalogClient.fetchRemoteCatalogWorkoutDetail(_:completedCountOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1B4F66FC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4F67C54();
  __swift_project_value_buffer(v10, qword_1EDB72490);
  v11._object = 0x80000001B4F84720;
  v12._countAndFlagsBits = 0xD00000000000003ALL;
  v12._object = 0x80000001B4F84820;
  v11._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v11, v12);

  sub_1B4F66FB4();
  v13 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v19 = 68;
  v15 = *(v13 + 32);
  v16 = sub_1B4F66404();
  v15(&v19, v9, v5, v16, MEMORY[0x1E69CCCB0], MEMORY[0x1E69CCCB8], MEMORY[0x1E69CC198], MEMORY[0x1E69CC1A0], ObjectType, v13);
  return (*(v6 + 8))(v9, v5);
}

uint64_t CatalogClient.fetchRemoteCatalogWorkouts(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84860;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 86;
  v7 = *(v5 + 32);
  v8 = sub_1B4F66FD4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7300, &qword_1B4F7C4F8);
  v10 = sub_1B4E2F2A0(&qword_1EB8F7308, &qword_1EB8F7300, &qword_1B4F7C4F8);
  v11 = sub_1B4F2DF28();
  return v7(&v14, a1, v8, v9, MEMORY[0x1E69CCCC0], MEMORY[0x1E69CCCC8], v10, v11, ObjectType, v5);
}

uint64_t CatalogClient.fetchRemoteNavigationEditorialContent()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x80000001B4F84880;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 106;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66E94();
  return v6(&v9, v7, MEMORY[0x1E69CCBB8], MEMORY[0x1E69CCBC0], ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteSummaryShelfLockupDescriptors()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x80000001B4F848B0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 110;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4F2DFDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteTipShelfLockupDescriptors()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000026;
  v3._object = 0x80000001B4F848E0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 90;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4F2DFDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteWorkoutShelfLockupDescriptors()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x80000001B4F84910;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 112;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4F2DFDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteTrainerDetail(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x80000001B4F84720;
  v7._object = 0x80000001B4F84940;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 73;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65514();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB3B8], MEMORY[0x1E69CB3C0], ObjectType, v8);
}

uint64_t CatalogClient.fetchRemoteCatalogLockups(displayStyle:placeholders:)@<X0>(uint64_t a3@<X8>)
{
  v20[1] = a3;
  v21 = sub_1B4F65FE4();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB72490);
  v9._object = 0x80000001B4F84720;
  v10._countAndFlagsBits = 0xD000000000000035;
  v10._object = 0x80000001B4F84960;
  v9._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v9, v10);

  sub_1B4F65FD4();
  v11 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v22 = 67;
  v13 = *(v11 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7328, &qword_1B4F7C508);
  v15 = sub_1B4E2F2A0(&qword_1EDB6DBF0, &qword_1EB8F7328, &qword_1B4F7C508);
  v16 = sub_1B4F2E090();
  v19 = v11;
  v17 = v21;
  v13(&v22, v7, v21, v14, MEMORY[0x1E69CBC30], MEMORY[0x1E69CBC38], v15, v16, ObjectType, v19);
  return (*(v4 + 8))(v7, v17);
}

uint64_t CatalogClient.fetchRemoteExploreShelfLockupDescriptors()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x80000001B4F849A0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 102;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4F2DFDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteGalleryLockups(displayStyle:identifier:)@<X0>(uint64_t a4@<X8>)
{
  v21[1] = a4;
  v22 = sub_1B4F66B14();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB72490);
  v10._object = 0x80000001B4F84720;
  v11._countAndFlagsBits = 0xD000000000000033;
  v11._object = 0x80000001B4F849D0;
  v10._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v10, v11);

  sub_1B4F66B04();
  v12 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v23 = 69;
  v14 = *(v12 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7330, &qword_1B4F7C510);
  v16 = sub_1B4E2F2A0(&qword_1EB8F7338, &qword_1EB8F7330, &qword_1B4F7C510);
  v17 = sub_1B4F2E144();
  v20 = v12;
  v18 = v22;
  v14(&v23, v8, v22, v15, MEMORY[0x1E69CCA40], MEMORY[0x1E69CCA48], v16, v17, ObjectType, v20);
  return (*(v5 + 8))(v8, v18);
}

uint64_t CatalogClient.fetchRemoteShelfLockupDescriptors()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F84A10;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 70;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4F2DFDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteShowcaseLockupContent()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F84A40;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 71;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7350, &qword_1B4F7C518);
  v8 = sub_1B4E2F2A0(&qword_1EB8F7358, &qword_1EB8F7350, &qword_1B4F7C518);
  v9 = sub_1B4F2E1F8();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteTopShelfCatalogWorkoutDetails()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x80000001B4F84A70;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 72;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7370, &qword_1B4F7C520);
  v8 = sub_1B4E2F2A0(&qword_1EB8F7378, &qword_1EB8F7370, &qword_1B4F7C520);
  v9 = sub_1B4F2E2AC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteTrainerTipGalleryDetail()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F84AA0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 104;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66934();
  return v6(&v9, v7, MEMORY[0x1E69CC7C0], MEMORY[0x1E69CC7C8], ObjectType, v4);
}

uint64_t CatalogClient.fetchRemoteExploreTrainerTipShelfLockupDescriptor()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000033;
  v3._object = 0x80000001B4F84AD0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 109;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66514();
  return v6(&v9, v7, MEMORY[0x1E69CC390], MEMORY[0x1E69CC398], ObjectType, v4);
}

uint64_t CatalogClient.filterCatalog(filter:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84B10;
  v5._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 74;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65284();
  v10 = sub_1B4F66144();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CB2B8], MEMORY[0x1E69CB2C0], MEMORY[0x1E69CBEC0], MEMORY[0x1E69CBEC8], ObjectType, v6);
}

uint64_t CatalogClient.queryFilterOptions(for:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84B30;
  v5._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 81;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65E74();
  v10 = sub_1B4F663C4();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CB980], MEMORY[0x1E69CB988], MEMORY[0x1E69CC0E0], MEMORY[0x1E69CC0E8], ObjectType, v6);
}

uint64_t CatalogClient.insertCatalogTipJournal(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84B50;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 91;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65E94();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB9A0], MEMORY[0x1E69CB9A8], ObjectType, v6);
}

uint64_t CatalogClient.insertChangeset(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84B70;
  v5._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 75;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65CC4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB708], MEMORY[0x1E69CB710], ObjectType, v6);
}

uint64_t CatalogClient.queryAllCatalogModalityReferences()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F84B90;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 76;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7390, &qword_1B4F7C528);
  v8 = sub_1B4F2E360();
  v9 = sub_1B4F2E3E4();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllCatalogProgramReferences()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F84BC0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 77;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7398, &qword_1B4F7C530);
  v8 = sub_1B4F2E498();
  v9 = sub_1B4F2E51C();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryCatalogWorkoutReferenceCount()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x80000001B4F84BF0;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 107;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v4);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(workoutIdentifiers:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD000000000000032;
  v5._object = 0x80000001B4F84C20;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 89;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4DC5928();
  v13 = sub_1B4F2E5D0();
  v14 = sub_1B4F2E654();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t CatalogClient.filterCatalogWorkoutReferenceIdentifiers(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  v5._object = 0x80000001B4F84C60;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 98;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66414();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4DC5928();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CC1D0], MEMORY[0x1E69CC1D8], v11, v12, ObjectType, v6);
}

uint64_t CatalogClient.queryAllBodyFocuses()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84C90;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 94;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A0, &qword_1B4F7C538);
  v8 = sub_1B4F2E708();
  v9 = sub_1B4F2E78C();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllCatalogThemeCategories()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84CB0;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 95;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A8, &qword_1B4F7C540);
  v8 = sub_1B4F2E840();
  v9 = sub_1B4F2E8C4();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllCatalogThemes()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84CE0;
  v3._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 87;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73C8, &qword_1B4F7C548);
  v8 = sub_1B4F2E978();
  v9 = sub_1B4F2E9FC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllEquipment()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84D00;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 96;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D0, &qword_1B4F7C550);
  v8 = sub_1B4F2EAB0();
  v9 = sub_1B4F2EB34();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllMusicGenres()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84D20;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 93;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D8, &qword_1B4F7C558);
  v8 = sub_1B4F2EBE8();
  v9 = sub_1B4F2EC6C();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllSkillLevels()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84D40;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 97;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E0, &qword_1B4F7C560);
  v8 = sub_1B4F2ED20();
  v9 = sub_1B4F2EDA4();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryAllTrainerReferences()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F84720;
  v3._object = 0x80000001B4F84D60;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 78;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E8, &qword_1B4F7C568);
  v8 = sub_1B4F2EE58();
  v9 = sub_1B4F2EEDC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t CatalogClient.queryCachedCatalogWorkoutLockups(inclusion:displayStyle:sortMode:limit:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a7@<X8>)
{
  v26[1] = a7;
  v27 = sub_1B4F67414();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4F67C54();
  __swift_project_value_buffer(v14, qword_1EDB72490);
  v15._object = 0x80000001B4F84720;
  v16._countAndFlagsBits = 0xD000000000000048;
  v16._object = 0x80000001B4F84D80;
  v15._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v15, v16);
  sub_1B4F2EF90(a1, a2 & 1);
  sub_1B4F67404();
  v17 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v28 = 79;
  v19 = *(v17 + 32);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7328, &qword_1B4F7C508);
  v21 = sub_1B4E2F2A0(&qword_1EDB6DBF0, &qword_1EB8F7328, &qword_1B4F7C508);
  v22 = sub_1B4F2E090();
  v25 = ObjectType;
  v23 = v27;
  v19(&v28, v13, v27, v20, MEMORY[0x1E69CD0B8], MEMORY[0x1E69CD0C0], v21, v22, v25, v17);
  return (*(v10 + 8))(v13, v23);
}

uint64_t CatalogClient.queryCachedCatalogWorkoutDetail(_:completedCountOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1B4F66FC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B4F67C54();
  __swift_project_value_buffer(v10, qword_1EDB72490);
  v11._object = 0x80000001B4F84720;
  v12._countAndFlagsBits = 0xD00000000000003ALL;
  v12._object = 0x80000001B4F84DD0;
  v11._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v11, v12);

  sub_1B4F66FB4();
  v13 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v19 = 80;
  v15 = *(v13 + 32);
  v16 = sub_1B4F66404();
  v15(&v19, v9, v5, v16, MEMORY[0x1E69CCCB0], MEMORY[0x1E69CCCB8], MEMORY[0x1E69CC198], MEMORY[0x1E69CC1A0], ObjectType, v13);
  return (*(v6 + 8))(v9, v5);
}

uint64_t CatalogClient.requestCatalogLockupPlaceholderBackfill(request:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x80000001B4F84E10;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 105;
  v7 = *(v5 + 32);
  v8 = sub_1B4F65964();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v11 = sub_1B4E598F4();
  return v7(&v14, a1, v8, v9, MEMORY[0x1E69CB560], MEMORY[0x1E69CB568], v10, v11, ObjectType, v5);
}

uint64_t CatalogClient.refreshRemoteCatalogWorkoutMetadata(mediaTypes:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD000000000000030;
  v5._object = 0x80000001B4F84E50;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v15 = 82;
  v14 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73F0, &qword_1B4F7C570);
  v10 = sub_1B4F674C4();
  v11 = sub_1B4E2F2A0(&qword_1EB8F73F8, &qword_1EB8F73F0, &qword_1B4F7C570);
  v12 = sub_1B4F2EFE4();
  return v8(&v15, &v14, v9, v10, v11, v12, MEMORY[0x1E69CD188], MEMORY[0x1E69CD190], ObjectType, v6);
}

uint64_t CatalogClient.queryCatalogSyncAnchor()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F29DE0, 0, 0);
}

uint64_t sub_1B4F29DE0()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84E90;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 108;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F65E84();
  *(v0 + 40) = v8;
  *v7 = v0;
  v7[1] = sub_1B4F29F54;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CB990];
  v11 = MEMORY[0x1E69CB998];

  return TransportClient.sendRequest<A>(_:)(v9, (v0 + 56), ObjectType, v8, v5, v10, v11);
}

uint64_t sub_1B4F29F54()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B4E40AEC;
  }

  else
  {
    v2 = sub_1B4F2A068;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4F2A068()
{
  (*(*(v0[5] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t CatalogClient.requestCatalogSync(mode:)(char a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84EB0;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 85;
  v9 = a1;
  return (*(v6 + 16))(&v10, &v9, MEMORY[0x1E69CC3F8], MEMORY[0x1E69CC3E8], MEMORY[0x1E69CC3F0], ObjectType, v6);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(releasedSince:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x80000001B4F84ED0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 100;
  v8 = *(v6 + 32);
  v9 = sub_1B4F64964();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v11 = sub_1B4F2E5D0();
  v12 = sub_1B4F2E654();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CAE50], MEMORY[0x1E69CAE58], v11, v12, ObjectType, v6);
}

uint64_t CatalogClient.queryLatestCatalogWorkoutReferences(limit:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84F00;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 103;
  v13 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v10 = sub_1B4F2E5D0();
  v11 = sub_1B4F2E654();
  return v8(&v14, &v13, MEMORY[0x1E69E6530], v9, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v10, v11, ObjectType, v6);
}

uint64_t CatalogClient.queryCatalogWorkoutReferences(request:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x80000001B4F84F30;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 111;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66154();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v11 = sub_1B4F2E5D0();
  v12 = sub_1B4F2E654();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CBEF0], MEMORY[0x1E69CBEF8], v11, v12, ObjectType, v6);
}

uint64_t CatalogClient.enumerateCatalogWorkoutReferences(handler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F2A63C, 0, 0);
}

uint64_t sub_1B4F2A63C()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84F60;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F2A758;
  v5 = v0[3];
  v6 = v0[2];

  return sub_1B4F25D48(0, v6, v5);
}

uint64_t sub_1B4F2A758()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F2A84C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84750;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 92;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F2A938()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x61436574656C6564;
  v3._object = 0xEF2928676F6C6174;
  v4._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 62;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F2AA28()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84770;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 63;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F2AB14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001B4F84790;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 88;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F67394();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CCFF0], MEMORY[0x1E69CCFF8], ObjectType, v9);
}

uint64_t sub_1B4F2AC4C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x80000001B4F847C0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 65;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F664C4();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC2B8], MEMORY[0x1E69CC2C0], ObjectType, v9);
}

uint64_t sub_1B4F2AD84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F84720;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001B4F847F0;
  v7._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 66;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F663D4();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CC0F0], MEMORY[0x1E69CC0F8], ObjectType, v9);
}

uint64_t sub_1B4F2AEE4(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F84720;
  v5._object = 0x80000001B4F84860;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v15 = 86;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66FD4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7300, &qword_1B4F7C4F8);
  v11 = sub_1B4E2F2A0(&qword_1EB8F7308, &qword_1EB8F7300, &qword_1B4F7C4F8);
  v12 = sub_1B4F2DF28();
  return v8(&v15, a1, v9, v10, MEMORY[0x1E69CCCC0], MEMORY[0x1E69CCCC8], v11, v12, ObjectType, v6);
}

uint64_t sub_1B4F2B060()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001B4F84880;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 106;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66E94();
  return v7(&v10, v8, MEMORY[0x1E69CCBB8], MEMORY[0x1E69CCBC0], ObjectType, v5);
}

uint64_t sub_1B4F2B174()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F848B0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 110;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4F2DFDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2B2CC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x80000001B4F848E0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 90;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4F2DFDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2B424()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84910;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 112;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4F2DFDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2B57C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x80000001B4F84720;
  v8._object = 0x80000001B4F84940;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 73;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F65514();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CB3B8], MEMORY[0x1E69CB3C0], ObjectType, v9);
}

uint64_t sub_1B4F2B6FC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F849A0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 102;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4F2DFDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2B854()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84A10;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 70;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7320, &qword_1B4F7C500);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBD0, &qword_1EB8F7320, &qword_1B4F7C500);
  v10 = sub_1B4F2DFDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2B9AC()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84A40;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 71;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7350, &qword_1B4F7C518);
  v9 = sub_1B4E2F2A0(&qword_1EB8F7358, &qword_1EB8F7350, &qword_1B4F7C518);
  v10 = sub_1B4F2E1F8();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2BB04()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v4._object = 0x80000001B4F84A70;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 72;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7370, &qword_1B4F7C520);
  v9 = sub_1B4E2F2A0(&qword_1EB8F7378, &qword_1EB8F7370, &qword_1B4F7C520);
  v10 = sub_1B4F2E2AC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2BC5C()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F84AA0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 104;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66934();
  return v7(&v10, v8, MEMORY[0x1E69CC7C0], MEMORY[0x1E69CC7C8], ObjectType, v5);
}

uint64_t sub_1B4F2BD70()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000033;
  v4._object = 0x80000001B4F84AD0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 109;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66514();
  return v7(&v10, v8, MEMORY[0x1E69CC390], MEMORY[0x1E69CC398], ObjectType, v5);
}

uint64_t sub_1B4F2BE88(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B10;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 74;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65284();
  v11 = sub_1B4F66144();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CB2B8], MEMORY[0x1E69CB2C0], MEMORY[0x1E69CBEC0], MEMORY[0x1E69CBEC8], ObjectType, v7);
}

uint64_t sub_1B4F2BFC8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 91;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65E94();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB9A0], MEMORY[0x1E69CB9A8], ObjectType, v7);
}

uint64_t sub_1B4F2C0EC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B70;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 75;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65CC4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB708], MEMORY[0x1E69CB710], ObjectType, v7);
}

uint64_t sub_1B4F2C210()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84C90;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 94;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A0, &qword_1B4F7C538);
  v9 = sub_1B4F2E708();
  v10 = sub_1B4F2E78C();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2C340()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84B90;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 76;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7390, &qword_1B4F7C528);
  v9 = sub_1B4F2E360();
  v10 = sub_1B4F2E3E4();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2C470()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F84BC0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 77;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7398, &qword_1B4F7C530);
  v9 = sub_1B4F2E498();
  v10 = sub_1B4F2E51C();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2C5A0()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._object = 0x80000001B4F84720;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F84BF0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 107;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v5);
}

uint64_t sub_1B4F2C6A4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000032;
  v6._object = 0x80000001B4F84C20;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 89;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4DC5928();
  v14 = sub_1B4F2E5D0();
  v15 = sub_1B4F2E654();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4F2C818(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84C60;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 98;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66414();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4DC5928();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CC1D0], MEMORY[0x1E69CC1D8], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F2C974()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CB0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 95;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73A8, &qword_1B4F7C540);
  v9 = sub_1B4F2E840();
  v10 = sub_1B4F2E8C4();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2CAA4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84CE0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 87;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73C8, &qword_1B4F7C548);
  v9 = sub_1B4F2E978();
  v10 = sub_1B4F2E9FC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2CBD4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D00;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 96;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D0, &qword_1B4F7C550);
  v9 = sub_1B4F2EAB0();
  v10 = sub_1B4F2EB34();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2CD04()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D20;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 93;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73D8, &qword_1B4F7C558);
  v9 = sub_1B4F2EBE8();
  v10 = sub_1B4F2EC6C();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2CE34()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D40;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 97;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E0, &qword_1B4F7C560);
  v9 = sub_1B4F2ED20();
  v10 = sub_1B4F2EDA4();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2CF64()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F84720;
  v4._object = 0x80000001B4F84D60;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 78;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73E8, &qword_1B4F7C568);
  v9 = sub_1B4F2EE58();
  v10 = sub_1B4F2EEDC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F2D0E8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84B30;
  v6._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 81;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65E74();
  v11 = sub_1B4F663C4();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CB980], MEMORY[0x1E69CB988], MEMORY[0x1E69CC0E0], MEMORY[0x1E69CC0E8], ObjectType, v7);
}

uint64_t sub_1B4F2D228(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F84720;
  v5._countAndFlagsBits = 0xD000000000000031;
  v5._object = 0x80000001B4F84E10;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v15 = 105;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65964();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v11 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v12 = sub_1B4E598F4();
  return v8(&v15, a1, v9, v10, MEMORY[0x1E69CB560], MEMORY[0x1E69CB568], v11, v12, ObjectType, v6);
}

uint64_t sub_1B4F2D3A4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000030;
  v6._object = 0x80000001B4F84E50;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 82;
  v15 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F73F0, &qword_1B4F7C570);
  v11 = sub_1B4F674C4();
  v12 = sub_1B4E2F2A0(&qword_1EB8F73F8, &qword_1EB8F73F0, &qword_1B4F7C570);
  v13 = sub_1B4F2EFE4();
  return v9(&v16, &v15, v10, v11, v12, v13, MEMORY[0x1E69CD188], MEMORY[0x1E69CD190], ObjectType, v7);
}

uint64_t sub_1B4F2D524(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return CatalogClient.queryCatalogSyncAnchor()(a1);
}

uint64_t sub_1B4F2D5C0(char a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F84720;
  v6._object = 0x80000001B4F84EB0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 85;
  v10 = a1;
  return (*(v7 + 16))(&v11, &v10, MEMORY[0x1E69CC3F8], MEMORY[0x1E69CC3E8], MEMORY[0x1E69CC3F0], ObjectType, v7);
}

uint64_t sub_1B4F2D6D0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4F2D6F8, 0, 0);
}

uint64_t sub_1B4F2D6F8()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._object = 0x80000001B4F84720;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001B4F84F60;
  v2._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F2F0D8;
  v5 = v0[3];
  v6 = v0[2];

  return sub_1B4F25D48(0, v6, v5);
}

uint64_t sub_1B4F2D814(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001B4F84ED0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 100;
  v9 = *(v7 + 32);
  v10 = sub_1B4F64964();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v12 = sub_1B4F2E5D0();
  v13 = sub_1B4F2E654();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CAE50], MEMORY[0x1E69CAE58], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F2D970(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F84F00;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 103;
  v14 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v11 = sub_1B4F2E5D0();
  v12 = sub_1B4F2E654();
  return v9(&v15, &v14, MEMORY[0x1E69E6530], v10, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v11, v12, ObjectType, v7);
}

uint64_t sub_1B4F2DAC4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F84720;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x80000001B4F84F30;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 111;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66154();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v12 = sub_1B4F2E5D0();
  v13 = sub_1B4F2E654();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CBEF0], MEMORY[0x1E69CBEF8], v12, v13, ObjectType, v7);
}

void *sub_1B4F2DC20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = 9;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v15, sub_1B4F2F0DC, v7, ObjectType, &protocol witness table for XPCClient);

  v16 = a1;
  v15 = 6;
  v8 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4F2F0E4, v8, ObjectType, MEMORY[0x1E69CC3F8], &protocol witness table for XPCClient, MEMORY[0x1E69CC3E8], MEMORY[0x1E69CC3F0]);

  v16 = a1;
  v15 = 7;
  v9 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v15, sub_1B4F2F0E0, v9, ObjectType, &protocol witness table for XPCClient);

  v16 = a1;
  v15 = 8;
  v10 = swift_allocObject();
  swift_weakInit();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4DC5928();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4F2F0E8, v10, ObjectType, v11, &protocol witness table for XPCClient, v12, v13);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F2DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5D24(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F2DF28()
{
  result = qword_1EB8F7310;
  if (!qword_1EB8F7310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7300, &qword_1B4F7C4F8);
    sub_1B4F2EF9C(&qword_1EB8F7318, MEMORY[0x1E69CB428], MEMORY[0x1E69CB420]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7310);
  }

  return result;
}

unint64_t sub_1B4F2DFDC()
{
  result = qword_1EDB6DBC8;
  if (!qword_1EDB6DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7320, &qword_1B4F7C500);
    sub_1B4F2EF9C(&qword_1EDB70098, MEMORY[0x1E69CC3B0], MEMORY[0x1E69CC3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBC8);
  }

  return result;
}

unint64_t sub_1B4F2E090()
{
  result = qword_1EDB6DBE8;
  if (!qword_1EDB6DBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7328, &qword_1B4F7C508);
    sub_1B4F2EF9C(&qword_1EDB700C0, MEMORY[0x1E69CB2E0], MEMORY[0x1E69CB2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBE8);
  }

  return result;
}

unint64_t sub_1B4F2E144()
{
  result = qword_1EB8F7340;
  if (!qword_1EB8F7340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7330, &qword_1B4F7C510);
    sub_1B4F2EF9C(&qword_1EB8F7348, MEMORY[0x1E69CB668], MEMORY[0x1E69CB660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7340);
  }

  return result;
}

unint64_t sub_1B4F2E1F8()
{
  result = qword_1EB8F7360;
  if (!qword_1EB8F7360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7350, &qword_1B4F7C518);
    sub_1B4F2EF9C(&qword_1EB8F7368, MEMORY[0x1E69CC3C8], MEMORY[0x1E69CC3C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7360);
  }

  return result;
}

unint64_t sub_1B4F2E2AC()
{
  result = qword_1EB8F7380;
  if (!qword_1EB8F7380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7370, &qword_1B4F7C520);
    sub_1B4F2EF9C(&qword_1EB8F7388, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7380);
  }

  return result;
}

unint64_t sub_1B4F2E360()
{
  result = qword_1EDB70130;
  if (!qword_1EDB70130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7390, &qword_1B4F7C528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70130);
  }

  return result;
}

unint64_t sub_1B4F2E3E4()
{
  result = qword_1EDB70128;
  if (!qword_1EDB70128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7390, &qword_1B4F7C528);
    sub_1B4F2EF9C(&qword_1EDB713F8, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70128);
  }

  return result;
}

unint64_t sub_1B4F2E498()
{
  result = qword_1EDB6DB00;
  if (!qword_1EDB6DB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7398, &qword_1B4F7C530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB00);
  }

  return result;
}

unint64_t sub_1B4F2E51C()
{
  result = qword_1EDB6DAF8;
  if (!qword_1EDB6DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7398, &qword_1B4F7C530);
    sub_1B4F2EF9C(&unk_1EDB70058, MEMORY[0x1E69CC698], MEMORY[0x1E69CC690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAF8);
  }

  return result;
}

unint64_t sub_1B4F2E5D0()
{
  result = qword_1EDB71470;
  if (!qword_1EDB71470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F45F0, qword_1B4F6CF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71470);
  }

  return result;
}

unint64_t sub_1B4F2E654()
{
  result = qword_1EDB71468;
  if (!qword_1EDB71468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F45F0, qword_1B4F6CF98);
    sub_1B4F2EF9C(&qword_1EDB71F28, MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71468);
  }

  return result;
}

unint64_t sub_1B4F2E708()
{
  result = qword_1EDB6DAB8;
  if (!qword_1EDB6DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73A0, &qword_1B4F7C538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAB8);
  }

  return result;
}

unint64_t sub_1B4F2E78C()
{
  result = qword_1EDB6DAB0;
  if (!qword_1EDB6DAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73A0, &qword_1B4F7C538);
    sub_1B4F2EF9C(&qword_1EDB70008, MEMORY[0x1E69CD3F8], MEMORY[0x1E69CD3E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAB0);
  }

  return result;
}

unint64_t sub_1B4F2E840()
{
  result = qword_1EB8F73B0;
  if (!qword_1EB8F73B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73A8, &qword_1B4F7C540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F73B0);
  }

  return result;
}

unint64_t sub_1B4F2E8C4()
{
  result = qword_1EB8F73B8;
  if (!qword_1EB8F73B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73A8, &qword_1B4F7C540);
    sub_1B4F2EF9C(&qword_1EB8F73C0, MEMORY[0x1E69CC188], MEMORY[0x1E69CC178]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F73B8);
  }

  return result;
}

unint64_t sub_1B4F2E978()
{
  result = qword_1EDB6DB48;
  if (!qword_1EDB6DB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73C8, &qword_1B4F7C548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB48);
  }

  return result;
}

unint64_t sub_1B4F2E9FC()
{
  result = qword_1EDB6DB40;
  if (!qword_1EDB6DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73C8, &qword_1B4F7C548);
    sub_1B4F2EF9C(&qword_1EDB700C8, MEMORY[0x1E69CB178], MEMORY[0x1E69CB168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB40);
  }

  return result;
}

unint64_t sub_1B4F2EAB0()
{
  result = qword_1EDB6DAA8;
  if (!qword_1EDB6DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73D0, &qword_1B4F7C550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAA8);
  }

  return result;
}

unint64_t sub_1B4F2EB34()
{
  result = qword_1EDB6DAA0;
  if (!qword_1EDB6DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73D0, &qword_1B4F7C550);
    sub_1B4F2EF9C(&qword_1EDB70000, MEMORY[0x1E69CD440], MEMORY[0x1E69CD430]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAA0);
  }

  return result;
}

unint64_t sub_1B4F2EBE8()
{
  result = qword_1EDB6DB78;
  if (!qword_1EDB6DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73D8, &qword_1B4F7C558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB78);
  }

  return result;
}

unint64_t sub_1B4F2EC6C()
{
  result = qword_1EDB6DB70;
  if (!qword_1EDB6DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73D8, &qword_1B4F7C558);
    sub_1B4F2EF9C(&qword_1EDB70100, MEMORY[0x1E69CAF98], MEMORY[0x1E69CAF88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB70);
  }

  return result;
}

unint64_t sub_1B4F2ED20()
{
  result = qword_1EDB6DB68;
  if (!qword_1EDB6DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73E0, &qword_1B4F7C560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB68);
  }

  return result;
}

unint64_t sub_1B4F2EDA4()
{
  result = qword_1EDB6DB60;
  if (!qword_1EDB6DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73E0, &qword_1B4F7C560);
    sub_1B4F2EF9C(&qword_1EDB700F8, MEMORY[0x1E69CAFE8], MEMORY[0x1E69CAFD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB60);
  }

  return result;
}

unint64_t sub_1B4F2EE58()
{
  result = qword_1EDB70140;
  if (!qword_1EDB70140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73E8, &qword_1B4F7C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70140);
  }

  return result;
}

unint64_t sub_1B4F2EEDC()
{
  result = qword_1EDB70138;
  if (!qword_1EDB70138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73E8, &qword_1B4F7C568);
    sub_1B4F2EF9C(&qword_1EDB71400, MEMORY[0x1E69CB8C0], MEMORY[0x1E69CB8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70138);
  }

  return result;
}

uint64_t sub_1B4F2EF90(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1B4F2EF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4F2EFE4()
{
  result = qword_1EB8F7400;
  if (!qword_1EB8F7400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F73F0, &qword_1B4F7C570);
    sub_1B4E9C3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7400);
  }

  return result;
}

uint64_t UserNotificationCenterProtocol.addUserNotificationRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4F2F974, 0, 0);
}

uint64_t sub_1B4F2F974()
{
  if (qword_1EDB714D0 != -1)
  {
    swift_once();
  }

  v9 = v0[4];
  v1 = sub_1B4F67C54();
  v0[6] = __swift_project_value_buffer(v1, qword_1EDB714D8);
  v2._countAndFlagsBits = 0xD000000000000032;
  v2._object = 0x80000001B4F850A0;
  v3._object = 0x80000001B4F850E0;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v2, v3);
  v8 = (*(v9 + 8) + **(v9 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1B4F2FB0C;
  v5 = v0[4];
  v6 = v0[3];

  return v8(v6, v5);
}

uint64_t sub_1B4F2FB0C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4F2FC0C, 0, 0);
}

uint64_t sub_1B4F2FC0C()
{
  v44 = v0;
  v1 = v0;
  v2 = v0[8];
  if (v2 >> 62)
  {
LABEL_27:
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v41 = sub_1B4F688F4();
    v3 = v1[8];
  }

  else
  {
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v41 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[8];
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v3 + 32;
  while (v41 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x1B8C82290](v4, v1[8]);
    }

    else
    {
      if (v4 >= *(v39 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v6 + 8 * v4);
    }

    v2 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = v1;
    v9 = v1[2];
    v10 = [v7 request];
    v11 = [v10 identifier];

    v12 = sub_1B4F67F74();
    v14 = v13;

    v15 = [v9 identifier];
    v16 = sub_1B4F67F74();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
      v1 = v8;

LABEL_20:
      v26 = v1[2];

      v27 = v26;
      v28 = sub_1B4F67C34();
      v29 = sub_1B4F685E4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v1[2];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136315138;
        v33 = [v30 identifier];
        v34 = sub_1B4F67F74();
        v36 = v35;

        v37 = sub_1B4DC4F88(v34, v36, &v43);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_1B4DC2000, v28, v29, "User notification %s already delivered, not adding.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1B8C831D0](v32, -1, -1);
        MEMORY[0x1B8C831D0](v31, -1, -1);
      }

      v38 = v1[1];

      return v38();
    }

    v20 = sub_1B4F68D54();

    ++v4;
    v1 = v8;
    if (v20)
    {
      goto LABEL_20;
    }
  }

  v42 = v1[4];

  v40 = (*(v42 + 16) + **(v42 + 16));
  v21 = swift_task_alloc();
  v1[9] = v21;
  *v21 = v1;
  v21[1] = sub_1B4F30024;
  v22 = v1[4];
  v23 = v1[3];
  v24 = v1[2];

  return v40(v24, v23, v22);
}

uint64_t sub_1B4F30024()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F30158, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4F30158()
{
  v15 = v0;
  v1 = *(v0 + 16);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_1B4F67F74();
    v10 = v9;

    v11 = sub_1B4DC4F88(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Failed to add user notification %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C831D0](v6, -1, -1);
    MEMORY[0x1B8C831D0](v5, -1, -1);
  }

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall UserNotificationCenterProtocol.removeUserNotificationRequest(with:)(Swift::String with)
{
  v3 = v2;
  v4 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  if (qword_1EDB714D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB714D8);
  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x80000001B4F850A0;
  v9._object = 0x80000001B4F85100;
  v9._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4F6CF50;
  *(v10 + 32) = countAndFlagsBits;
  *(v10 + 40) = object;
  v11 = *(v3 + 24);

  v11(v10, v4, v3);
}

uint64_t sub_1B4F30414()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F74C8, &qword_1B4F7C680);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[21] = v3;
  v1[22] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B4F304E0, 0, 0);
}

uint64_t sub_1B4F304E0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1B4F30690;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F74D0, &qword_1B4F7C688);
  sub_1B4F68294();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4F307A0;
  v1[13] = &block_descriptor_9;
  [v6 getDeliveredNotificationsWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B4F30690()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_1B4F307A0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B4F31004();
  sub_1B4F681C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F74C8, &qword_1B4F7C680);
  return sub_1B4F682B4();
}

uint64_t sub_1B4F30810(uint64_t a1)
{
  v2[18] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[21] = v4;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4F308E0, 0, 0);
}

uint64_t sub_1B4F308E0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[21];
  v12 = v0[22];
  v8 = v0 + 19;
  v6 = v0[19];
  v7 = v8[1];
  v9 = v1[18];
  v1[2] = v2;
  v1[3] = sub_1B4F30A98;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4F30BC4;
  v1[13] = &block_descriptor_18;
  [v12 addNotificationRequest:v9 withCompletionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B4F30A98(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_1B4F30BC4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682B4();
  }
}

void sub_1B4F30C54(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1B4F681B4();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t dispatch thunk of UserNotificationCenterProtocol.deliveredNotifications()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4F30DCC;

  return v7(a1, a2);
}

uint64_t sub_1B4F30DCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of UserNotificationCenterProtocol.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2, a3);
}

unint64_t sub_1B4F31004()
{
  result = qword_1EB8F74D8;
  if (!qword_1EB8F74D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F74D8);
  }

  return result;
}

uint64_t sub_1B4F310EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1B4F66F94();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1B4F66FA4();
}

uint64_t sub_1B4F3116C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F66F94();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *SiriClient.__allocating_init(queue:)(void *a1)
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

void *SiriClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t SiriClient.evaluateStartWorkoutRequest(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 277;
  v5 = *(v3 + 32);
  v6 = sub_1B4F66924();
  v7 = sub_1B4F66A94();
  return v5(&v9, a1, v6, v7, MEMORY[0x1E69CC7B0], MEMORY[0x1E69CC7B8], MEMORY[0x1E69CC9B8], MEMORY[0x1E69CC9C0], ObjectType, v3);
}

uint64_t sub_1B4F314B0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 277;
  v5 = *(v3 + 32);
  v6 = sub_1B4F66924();
  v7 = sub_1B4F66A94();
  return v5(&v9, a1, v6, v7, MEMORY[0x1E69CC7B0], MEMORY[0x1E69CC7B8], MEMORY[0x1E69CC9B8], MEMORY[0x1E69CC9C0], ObjectType, v3);
}

void *EngagementClient.__allocating_init(queue:)(void *a1)
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
  sub_1B4DC9B7C();

  v8 = sub_1B4F68654();
  type metadata accessor for EventHub();
  v9 = swift_allocObject();
  v10 = sub_1B4E9E264(v8, 0, v9);
  v11 = swift_allocObject();
  v12 = sub_1B4F338F8(v6, v10, v11);

  return v12;
}

uint64_t sub_1B4F31748(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, &type metadata for EngagementBannerRulesUpdated, &protocol witness table for EngagementBannerRulesUpdated, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t EngagementClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EngagementClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t EngagementClient.dispatchEngagementRequest(json:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB71528);
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F85190;
  v7._object = 0x80000001B4F851C0;
  v7._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 123;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 32))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t EngagementClient.insertEngagementBadge(_:)(uint64_t a1)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71528);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F85190;
  v5._object = 0x80000001B4F851F0;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 125;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65AE4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB5A0], MEMORY[0x1E69CB5A8], ObjectType, v6);
}

uint64_t EngagementClient.fetchAudioLanguageEngagementSheet()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85210;
  v3._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 135;
  v6 = *(v4 + 24);
  v7 = sub_1B4F670F4();
  return v6(&v9, v7, MEMORY[0x1E69CCE00], MEMORY[0x1E69CCE08], ObjectType, v4);
}

uint64_t EngagementClient.fetchEngagementRedirectURL(_:)(uint64_t a1)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71528);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F85190;
  v5._object = 0x80000001B4F85240;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 124;
  v8 = *(v6 + 32);
  v9 = sub_1B4F64824();
  return v8(&v11, a1, v9, v9, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v6);
}

uint64_t EngagementClient.deleteEngagementBadge(_:)(uint64_t a1)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71528);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001B4F85190;
  v5._object = 0x80000001B4F85260;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 126;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65AE4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB5A0], MEMORY[0x1E69CB5A8], ObjectType, v6);
}

uint64_t EngagementClient.deleteAllEngagementBadges()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85280;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 127;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t EngagementClient.updateAudioLanguageEngagementSheetAcknowledgment(acknowledgment:)(uint64_t a1)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71528);
  v4._object = 0x80000001B4F85190;
  v5._countAndFlagsBits = 0xD000000000000041;
  v5._object = 0x80000001B4F852A0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 136;
  v8 = *(v6 + 16);
  v9 = sub_1B4F67594();
  return v8(&v11, a1, v9, MEMORY[0x1E69CD240], MEMORY[0x1E69CD248], ObjectType, v6);
}

uint64_t EngagementClient.queryAudioLanguageEngagementSheetAcknowledgment()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._object = 0x80000001B4F85190;
  v3._countAndFlagsBits = 0xD000000000000031;
  v3._object = 0x80000001B4F852F0;
  v2._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 137;
  v6 = *(v4 + 24);
  v7 = sub_1B4F67594();
  return v6(&v9, v7, MEMORY[0x1E69CD240], MEMORY[0x1E69CD248], ObjectType, v4);
}

uint64_t EngagementClient.queryEngagementBadges()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85330;
  v3._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 128;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7528, &unk_1B4F7C760);
  v8 = sub_1B4F33A6C();
  v9 = sub_1B4F33B48(&qword_1EDB6DB10, &qword_1EB8F7528, &unk_1B4F7C760, sub_1B4F33AF0);
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t EngagementClient.queryEngagementBannerRuleInfo()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85350;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 129;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66A24();
  return v6(&v9, v7, MEMORY[0x1E69CC8E8], MEMORY[0x1E69CC8F0], ObjectType, v4);
}

uint64_t EngagementClient.insertCompletedMarketingVideo(identifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB71528);
  v6._object = 0x80000001B4F85190;
  v7._countAndFlagsBits = 0xD00000000000002ALL;
  v7._object = 0x80000001B4F85370;
  v6._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 131;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t EngagementClient.queryAllCompletedMarketingVideoIdentifiers()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._object = 0x80000001B4F85190;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  v3._object = 0x80000001B4F853A0;
  v2._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 130;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v8 = sub_1B4E9C248();
  v9 = sub_1B4F33B48(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t EngagementClient.deleteAllCompletedMarketingVideos()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F853D0;
  v3._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 132;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t EngagementClient.queryIntroSheet()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85400;
  v3._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 133;
  v6 = *(v4 + 24);
  v7 = sub_1B4F64A64();
  return v6(&v9, v7, MEMORY[0x1E69CAF28], MEMORY[0x1E69CAF30], ObjectType, v4);
}

uint64_t EngagementClient.queryWhatsNewSheet()()
{
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71528);
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x80000001B4F85190;
  v3._object = 0x80000001B4F85420;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 134;
  v6 = *(v4 + 24);
  v7 = sub_1B4F65524();
  return v6(&v9, v7, MEMORY[0x1E69CB3E8], MEMORY[0x1E69CB3F0], ObjectType, v4);
}

uint64_t sub_1B4F32930(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB71528);
  v7._countAndFlagsBits = 0xD000000000000024;
  v7._object = 0x80000001B4F85190;
  v8._object = 0x80000001B4F851C0;
  v8._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 123;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 32))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F32A54()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85210;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 135;
  v7 = *(v5 + 24);
  v8 = sub_1B4F670F4();
  return v7(&v10, v8, MEMORY[0x1E69CCE00], MEMORY[0x1E69CCE08], ObjectType, v5);
}

uint64_t sub_1B4F32B68(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71528);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F85190;
  v6._object = 0x80000001B4F85240;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 124;
  v9 = *(v7 + 32);
  v10 = sub_1B4F64824();
  return v9(&v12, a1, v10, v10, MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], MEMORY[0x1E69CAE28], MEMORY[0x1E69CAE30], ObjectType, v7);
}

uint64_t sub_1B4F32C94(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71528);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F85190;
  v6._object = 0x80000001B4F851F0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 125;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65AE4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB5A0], MEMORY[0x1E69CB5A8], ObjectType, v7);
}

uint64_t sub_1B4F32DB8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71528);
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F85190;
  v6._object = 0x80000001B4F85260;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 126;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65AE4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB5A0], MEMORY[0x1E69CB5A8], ObjectType, v7);
}

uint64_t sub_1B4F32EDC()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85280;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 127;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F32FC8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71528);
  v5._object = 0x80000001B4F85190;
  v6._countAndFlagsBits = 0xD000000000000041;
  v6._object = 0x80000001B4F852A0;
  v5._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 136;
  v9 = *(v7 + 16);
  v10 = sub_1B4F67594();
  return v9(&v12, a1, v10, MEMORY[0x1E69CD240], MEMORY[0x1E69CD248], ObjectType, v7);
}

uint64_t sub_1B4F330EC()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._object = 0x80000001B4F85190;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001B4F853A0;
  v3._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 130;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4F33B48(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F33250()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._object = 0x80000001B4F85190;
  v4._countAndFlagsBits = 0xD000000000000031;
  v4._object = 0x80000001B4F852F0;
  v3._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 137;
  v7 = *(v5 + 24);
  v8 = sub_1B4F67594();
  return v7(&v10, v8, MEMORY[0x1E69CD240], MEMORY[0x1E69CD248], ObjectType, v5);
}

uint64_t sub_1B4F33364()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85330;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 128;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7528, &unk_1B4F7C760);
  v9 = sub_1B4F33A6C();
  v10 = sub_1B4F33B48(&qword_1EDB6DB10, &qword_1EB8F7528, &unk_1B4F7C760, sub_1B4F33AF0);
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F334C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB71528);
  v7._object = 0x80000001B4F85190;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x80000001B4F85370;
  v7._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 131;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

uint64_t sub_1B4F335E4()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F853D0;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 132;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F336D0()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85400;
  v4._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 133;
  v7 = *(v5 + 24);
  v8 = sub_1B4F64A64();
  return v7(&v10, v8, MEMORY[0x1E69CAF28], MEMORY[0x1E69CAF30], ObjectType, v5);
}

uint64_t sub_1B4F337E4()
{
  v1 = *v0;
  if (qword_1EDB71520 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71528);
  v3._countAndFlagsBits = 0xD000000000000024;
  v3._object = 0x80000001B4F85190;
  v4._object = 0x80000001B4F85420;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 134;
  v7 = *(v5 + 24);
  v8 = sub_1B4F65524();
  return v7(&v10, v8, MEMORY[0x1E69CB3E8], MEMORY[0x1E69CB3F0], ObjectType, v5);
}

void *sub_1B4F338F8(uint64_t a1, uint64_t a2, void *a3)
{
  a3[2] = a1;
  a3[3] = &protocol witness table for XPCClient;
  a3[4] = &protocol witness table for XPCClient;
  a3[5] = a2;
  a3[6] = &protocol witness table for EventHub;
  ObjectType = swift_getObjectType();
  v9 = a1;
  v8 = 16;
  v6 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v8, sub_1B4F33C1C, v6, ObjectType, &protocol witness table for XPCClient);

  return a3;
}

void *sub_1B4F339DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1B4DC7294(a1, a2, v15, a4, a5, a6, a7, a8);
}

unint64_t sub_1B4F33A6C()
{
  result = qword_1EDB6DB18;
  if (!qword_1EDB6DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7528, &unk_1B4F7C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB18);
  }

  return result;
}

unint64_t sub_1B4F33AF0()
{
  result = qword_1EDB700A8;
  if (!qword_1EDB700A8)
  {
    sub_1B4F65AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB700A8);
  }

  return result;
}

uint64_t sub_1B4F33B48(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ArchivedSessionFilter.onOrAfter(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v2 = *(sub_1B4F67184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4F6CF50;
  v5 = sub_1B4F64964();
  (*(*(v5 - 8) + 16))(v4 + v3, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v4);
  swift_setDeallocating();
  sub_1B4F3460C(v4 + v3);
  swift_deallocClassInstance();

  return sub_1B4F66494();
}

uint64_t sub_1B4F33D90(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v3 = *(sub_1B4F67184() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4F6CF50;
  *(v5 + v4) = a2;
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v5);
  swift_setDeallocating();
  sub_1B4F3460C(v5 + v4);
  swift_deallocClassInstance();

  return sub_1B4F66494();
}

uint64_t static ArchivedSessionFilter.between(_:)(uint64_t a1)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE8, &qword_1B4F7AF48) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v2 = *(sub_1B4F67184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4F6CF50;
  v5 = sub_1B4F64964();
  v6 = *(*(v5 - 8) + 16);
  v6(v4 + v3, a1 + v9, v5);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v4);
  swift_setDeallocating();
  sub_1B4F3460C(v4 + v3);
  swift_deallocClassInstance();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4F6CF50;
  v6(v7 + v3, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v7);
  swift_setDeallocating();
  sub_1B4F3460C(v7 + v3);
  swift_deallocClassInstance();

  return sub_1B4F66494();
}

uint64_t static ArchivedSessionFilter.between(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v3 = *(sub_1B4F67184() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4F6CF50;
  v6 = sub_1B4F64964();
  v7 = *(*(v6 - 8) + 16);
  v7(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v5);
  swift_setDeallocating();
  sub_1B4F3460C(v5 + v4);
  swift_deallocClassInstance();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4F6CF50;
  v7(v8 + v4, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C6BC(v8);
  swift_setDeallocating();
  sub_1B4F3460C(v8 + v4);
  swift_deallocClassInstance();

  return sub_1B4F66494();
}

uint64_t static ArchivedSessionFilter.workoutIdentifiers(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v2 = *(sub_1B4F67184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4F6CF50;
  *(v4 + v3) = a1;
  swift_storeEnumTagMultiPayload();

  sub_1B4E2C6BC(v4);
  swift_setDeallocating();
  sub_1B4F3460C(v4 + v3);
  swift_deallocClassInstance();

  return sub_1B4F66494();
}

uint64_t static ArchivedSessionFilter.workoutIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F6CF50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_1B4E2A75C(inited);
  swift_setDeallocating();
  sub_1B4E2A8C4(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7530, &qword_1B4F7C7B8);
  v6 = *(sub_1B4F67184() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4F6CF50;
  *(v8 + v7) = v5;
  swift_storeEnumTagMultiPayload();

  sub_1B4E2C6BC(v8);
  swift_setDeallocating();
  sub_1B4F3460C(v8 + v7);
  swift_deallocClassInstance();
  sub_1B4F66494();
}

uint64_t static ArchivedSessionFilter.+ infix(_:_:)()
{
  v0 = sub_1B4F664A4();
  v1 = sub_1B4F664A4();
  sub_1B4E45620(v1, v0);
  v2 = sub_1B4F664B4();
  v3 = sub_1B4F664B4();
  sub_1B4E45620(v3, v2);

  return sub_1B4F66494();
}

uint64_t sub_1B4F3460C(uint64_t a1)
{
  v2 = sub_1B4F67184();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = sub_1B4F64724();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64714();
  sub_1B4F646F4();
  MEMORY[0x1B8C7DF90](0x726F777472617473, 0xEC00000074756F6BLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F68, &unk_1B4F7B6E0);
  sub_1B4F646A4();
  *(swift_allocObject() + 16) = xmmword_1B4F7C7C0;
  sub_1B4F676B4();
  sub_1B4F64674();

  v19[1] = sub_1B4F677E4();
  sub_1B4F68D04();
  sub_1B4F64674();

  sub_1B4F64674();
  sub_1B4F64674();
  sub_1B4F646C4();
  sub_1B4F64704();
  sub_1B4F647D4();
  v12 = sub_1B4F678C4();
  (*(*(v12 - 8) + 8))(a1, v12);
  (*(v8 + 8))(v11, v7);
  v13 = sub_1B4F64824();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13))
  {
    sub_1B4DD2BC4(v6, &qword_1EB8F51C8, &qword_1B4F711A8);
    v15 = 1;
    v16 = v19[0];
  }

  else
  {
    v17 = v19[0];
    (*(v14 + 32))(v19[0], v6, v13);
    v15 = 0;
    v16 = v17;
  }

  return (*(v14 + 56))(v16, v15, 1, v13);
}

uint64_t sub_1B4F34A68(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_1B4F646A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7538, &qword_1B4F7C7D0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7540, &qword_1B4F7C7D8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v32 - v21;
  sub_1B4F646D4();
  v35 = v22;
  sub_1B4E21A90(v22, v18, &qword_1EB8F7540, &qword_1B4F7C7D8);
  v23 = sub_1B4F64724();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v18, 1, v23) == 1)
  {
    sub_1B4DD2BC4(v18, &qword_1EB8F7540, &qword_1B4F7C7D8);
LABEL_12:
    (*(v3 + 56))(v14, 1, 1, v2);
LABEL_16:
    sub_1B4E21A90(v14, v10, &qword_1EB8F7538, &qword_1B4F7C7D0);
    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      sub_1B4DD2BC4(v14, &qword_1EB8F7538, &qword_1B4F7C7D0);
      sub_1B4DD2BC4(v35, &qword_1EB8F7540, &qword_1B4F7C7D8);
      sub_1B4DD2BC4(v10, &qword_1EB8F7538, &qword_1B4F7C7D0);
      return 0;
    }

    else
    {
      v31 = sub_1B4F64694();
      sub_1B4DD2BC4(v14, &qword_1EB8F7538, &qword_1B4F7C7D0);
      sub_1B4DD2BC4(v35, &qword_1EB8F7540, &qword_1B4F7C7D8);
      (*(v3 + 8))(v10, v2);
      return v31;
    }
  }

  v25 = sub_1B4F646B4();
  result = (*(v24 + 8))(v18, v23);
  if (!v25)
  {
    goto LABEL_12;
  }

  v33 = v14;
  v34 = v10;
  v27 = *(v25 + 16);
  if (!v27)
  {
LABEL_11:

    v14 = v33;
    (*(v3 + 56))(v33, 1, 1, v2);
LABEL_15:
    v10 = v34;
    goto LABEL_16;
  }

  v28 = 0;
  while (v28 < *(v25 + 16))
  {
    (*(v3 + 16))(v6, v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v2);
    if (sub_1B4F64684() == v37 && v29 == v36)
    {

LABEL_14:

      v14 = v33;
      (*(v3 + 32))(v33, v6, v2);
      (*(v3 + 56))(v14, 0, 1, v2);
      goto LABEL_15;
    }

    v30 = sub_1B4F68D54();

    if (v30)
    {
      goto LABEL_14;
    }

    ++v28;
    result = (*(v3 + 8))(v6, v2);
    if (v27 == v28)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *URL.sessionActivityType.getter()
{
  v0 = sub_1B4F646A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7538, &qword_1B4F7C7D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7540, &qword_1B4F7C7D8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v55 - v17;
  sub_1B4F646D4();
  sub_1B4E21A90(v18, v14, &qword_1EB8F7540, &qword_1B4F7C7D8);
  v19 = sub_1B4F64724();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1B4DD2BC4(v14, &qword_1EB8F7540, &qword_1B4F7C7D8);
LABEL_12:
    v22 = v58;
    (*(v1 + 56))(v58, 1, 1, v0);
    goto LABEL_16;
  }

  v21 = sub_1B4F646B4();
  (*(v20 + 8))(v14, v19);
  if (!v21)
  {
    goto LABEL_12;
  }

  v56 = v18;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v18 = 0x7974697669746361;
    v59 = v1 + 16;
    while (v23 < *(v21 + 16))
    {
      (*(v1 + 16))(v4, v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v23, v0);
      if (sub_1B4F64684() == v18 && v24 == 0xEC00000065707954)
      {

LABEL_14:

        v22 = v58;
        (*(v1 + 32))(v58, v4, v0);
        (*(v1 + 56))(v22, 0, 1, v0);
        goto LABEL_15;
      }

      v25 = v18;
      v26 = sub_1B4F68D54();

      if (v26)
      {
        goto LABEL_14;
      }

      ++v23;
      (*(v1 + 8))(v4, v0);
      v18 = v25;
      if (v22 == v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

LABEL_11:

  v22 = v58;
  (*(v1 + 56))(v58, 1, 1, v0);
LABEL_15:
  v18 = v56;
LABEL_16:
  v27 = v57;
  sub_1B4E21A90(v22, v57, &qword_1EB8F7538, &qword_1B4F7C7D0);
  if ((*(v1 + 48))(v27, 1, v0) == 1)
  {
    sub_1B4DD2BC4(v22, &qword_1EB8F7538, &qword_1B4F7C7D0);
    sub_1B4DD2BC4(v18, &qword_1EB8F7540, &qword_1B4F7C7D8);
    v28 = v27;
    v29 = &qword_1EB8F7538;
    v30 = &qword_1B4F7C7D0;
LABEL_40:
    sub_1B4DD2BC4(v28, v29, v30);
    return 0;
  }

  v31 = sub_1B4F64694();
  v33 = v32;
  result = (*(v1 + 8))(v27, v0);
  if (!v33)
  {
    sub_1B4DD2BC4(v22, &qword_1EB8F7538, &qword_1B4F7C7D0);
    v29 = &qword_1EB8F7540;
    v30 = &qword_1B4F7C7D8;
    v28 = v18;
    goto LABEL_40;
  }

  v35 = HIBYTE(v33) & 0xF;
  v36 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v37 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
LABEL_93:
    sub_1B4DD2BC4(v22, &qword_1EB8F7538, &qword_1B4F7C7D0);
    sub_1B4DD2BC4(v18, &qword_1EB8F7540, &qword_1B4F7C7D8);

    return 0;
  }

  if ((v33 & 0x1000000000000000) == 0)
  {
    if ((v33 & 0x2000000000000000) != 0)
    {
      v60[0] = v31;
      v60[1] = v33 & 0xFFFFFFFFFFFFFFLL;
      if (v31 == 43)
      {
        if (v35)
        {
          if (--v35)
          {
            v39 = 0;
            v47 = v60 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                break;
              }

              v42 = __CFADD__(10 * v39, v48);
              v39 = 10 * v39 + v48;
              if (v42)
              {
                break;
              }

              ++v47;
              if (!--v35)
              {
LABEL_86:
                v50 = v18;
                goto LABEL_88;
              }
            }
          }

          goto LABEL_87;
        }

LABEL_99:
        __break(1u);
        return result;
      }

      if (v31 != 45)
      {
        if (v35)
        {
          v39 = 0;
          v51 = v60;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              break;
            }

            v42 = __CFADD__(10 * v39, v52);
            v39 = 10 * v39 + v52;
            if (v42)
            {
              break;
            }

            ++v51;
            if (!--v35)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }

      if (v35)
      {
        if (--v35)
        {
          v39 = 0;
          v43 = v60 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              break;
            }

            v42 = 10 * v39 >= v44;
            v39 = 10 * v39 - v44;
            if (!v42)
            {
              break;
            }

            ++v43;
            if (!--v35)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((v31 & 0x1000000000000000) != 0)
      {
        result = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1B4F68A34();
      }

      v38 = *result;
      if (v38 == 43)
      {
        if (v36 >= 1)
        {
          v35 = v36 - 1;
          if (v36 != 1)
          {
            if (result)
            {
              v39 = 0;
              v45 = result + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  goto LABEL_87;
                }

                if (!is_mul_ok(v39, 0xAuLL))
                {
                  goto LABEL_87;
                }

                v42 = __CFADD__(10 * v39, v46);
                v39 = 10 * v39 + v46;
                if (v42)
                {
                  goto LABEL_87;
                }

                ++v45;
                if (!--v35)
                {
                  goto LABEL_86;
                }
              }
            }

            goto LABEL_78;
          }

          goto LABEL_87;
        }

        goto LABEL_98;
      }

      if (v38 != 45)
      {
        if (v36)
        {
          if (result)
          {
            v39 = 0;
            while (1)
            {
              v49 = *result - 48;
              if (v49 > 9)
              {
                goto LABEL_87;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_87;
              }

              v42 = __CFADD__(10 * v39, v49);
              v39 = 10 * v39 + v49;
              if (v42)
              {
                goto LABEL_87;
              }

              ++result;
              if (!--v36)
              {
                v50 = v18;
                goto LABEL_79;
              }
            }
          }

          goto LABEL_78;
        }

LABEL_87:
        v50 = v18;
        v39 = 0;
        LOBYTE(v35) = 1;
LABEL_88:
        v61 = v35;
        v53 = v35;
        goto LABEL_89;
      }

      if (v36 >= 1)
      {
        v35 = v36 - 1;
        if (v36 != 1)
        {
          if (result)
          {
            v39 = 0;
            v40 = result + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_87;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_87;
              }

              v42 = 10 * v39 >= v41;
              v39 = 10 * v39 - v41;
              if (!v42)
              {
                goto LABEL_87;
              }

              ++v40;
              if (!--v35)
              {
                goto LABEL_86;
              }
            }
          }

LABEL_78:
          v50 = v18;
          v39 = 0;
LABEL_79:
          LOBYTE(v35) = 0;
          goto LABEL_88;
        }

        goto LABEL_87;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v50 = v18;
  v39 = sub_1B4F4137C(v31, v33, 10);
  v53 = v54;
LABEL_89:
  sub_1B4DD2BC4(v22, &qword_1EB8F7538, &qword_1B4F7C7D0);
  sub_1B4DD2BC4(v50, &qword_1EB8F7540, &qword_1B4F7C7D8);

  if (v53)
  {
    return 0;
  }

  else
  {
    return v39;
  }
}

void *AchievementClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
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
  v12 = swift_allocObject();
  v13 = sub_1B4F37030(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4F35944(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AchievementEnvironmentCacheUpdated(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v10 = sub_1B4F66F74();
    (*(*(v10 - 8) + 16))(v6, a1, v10);
    (*(v8 + 8))(v6, v3, &protocol witness table for AchievementEnvironmentCacheUpdated, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1B4F37444(v6);
  }

  return result;
}

uint64_t AchievementClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AchievementClient.runHistoricalEvaluation()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0x80000001B4F85470;
  v3._object = 0x80000001B4F854A0;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 297;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AchievementClient.queryTemplates()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0x80000001B4F85470;
  v3._object = 0x80000001B4F854C0;
  v3._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 298;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v8 = sub_1B4DE24F8();
  v9 = sub_1B4E594C8();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t AchievementClient.fetchSeymourAchievement(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001B4F85470;
  v7._object = 0x80000001B4F85520;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 300;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64A34();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CAE88], MEMORY[0x1E69CAE90], ObjectType, v8);
}

uint64_t AchievementClient.fetchSeymourAchievementProgress(for:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F85470;
  v5._object = 0x80000001B4F85540;
  v4._countAndFlagsBits = 0xD000000000000025;
  v5._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  v17 = 306;
  v16 = a1;
  ObjectType = swift_getObjectType();
  v15 = *(v6 + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7548, &qword_1B4F7C858);
  v9 = sub_1B4DE24F8();
  v10 = sub_1B4E594C8();
  v11 = sub_1B4F371BC();
  v12 = sub_1B4F37240(&qword_1EDB6DB80, &qword_1EB8F7548, &qword_1B4F7C858, sub_1B4F372BC);
  return v15(&v17, &v16, v7, v8, v9, v10, v11, v12, ObjectType, v6);
}

uint64_t AchievementClient.queryAchievementEnvironmentCache()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0x80000001B4F85470;
  v3._object = 0x80000001B4F85570;
  v3._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 301;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66F74();
  return v6(&v9, v7, MEMORY[0x1E69CCC60], MEMORY[0x1E69CCC68], ObjectType, v4);
}

uint64_t AchievementClient.fetchProgressUpdates(for:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v13 = 302;
  v12 = a1;
  ObjectType = swift_getObjectType();
  v11 = *(v2 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7550, &qword_1B4F7C860);
  v5 = sub_1B4DE24F8();
  v6 = sub_1B4E594C8();
  v7 = sub_1B4F37310();
  v8 = sub_1B4F37240(&qword_1EB8F7560, &qword_1EB8F7550, &qword_1B4F7C860, sub_1B4F37394);
  return v11(&v13, &v12, v3, v4, v5, v6, v7, v8, ObjectType, v2);
}

uint64_t AchievementClient.queryEligibleToPresentAwardToast(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v9 = 303;
  v8[0] = a1;
  v8[1] = a2;
  return (*(v5 + 32))(&v9, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v5);
}

uint64_t AchievementClient.fetchCurrentStreakNotification()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 304;
  return (*(v1 + 24))(&v4, MEMORY[0x1E69CD180], MEMORY[0x1E69CD170], MEMORY[0x1E69CD178], ObjectType, v1);
}

uint64_t AchievementClient.journalAchievementNotificationRecord(with:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 305;
  v5 = *(v3 + 16);
  v6 = sub_1B4F67154();
  return v5(&v8, a1, v6, MEMORY[0x1E69CCEB8], MEMORY[0x1E69CCEC0], ObjectType, v3);
}

uint64_t AchievementClient.deleteAchievementNotificationRecord(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);
  v6._object = 0x80000001B4F85470;
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x80000001B4F855A0;
  v6._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 307;
  v11[0] = a1;
  v11[1] = a2;
  return (*(v8 + 16))(&v12, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t sub_1B4F364D4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  ObjectType = swift_getObjectType();
  v9 = 303;
  v8[0] = a1;
  v8[1] = a2;
  return (*(v5 + 32))(&v9, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v5);
}

uint64_t sub_1B4F36584()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 304;
  return (*(v1 + 24))(&v4, MEMORY[0x1E69CD180], MEMORY[0x1E69CD170], MEMORY[0x1E69CD178], ObjectType, v1);
}

uint64_t sub_1B4F36608(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v13 = 302;
  v12 = a1;
  ObjectType = swift_getObjectType();
  v11 = *(v2 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7550, &qword_1B4F7C860);
  v5 = sub_1B4DE24F8();
  v6 = sub_1B4E594C8();
  v7 = sub_1B4F37310();
  v8 = sub_1B4F37240(&qword_1EB8F7560, &qword_1EB8F7550, &qword_1B4F7C860, sub_1B4F37394);
  return v11(&v13, &v12, v3, v4, v5, v6, v7, v8, ObjectType, v2);
}

uint64_t sub_1B4F3672C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._countAndFlagsBits = 0xD000000000000025;
  v7._object = 0x80000001B4F85470;
  v8._object = 0x80000001B4F85520;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 300;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F64A34();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CAE88], MEMORY[0x1E69CAE90], ObjectType, v9);
}

uint64_t sub_1B4F36864(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F85470;
  v6._object = 0x80000001B4F85540;
  v5._countAndFlagsBits = 0xD000000000000025;
  v6._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  v18 = 306;
  v17 = a1;
  ObjectType = swift_getObjectType();
  v16 = *(v7 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7548, &qword_1B4F7C858);
  v10 = sub_1B4DE24F8();
  v11 = sub_1B4E594C8();
  v12 = sub_1B4F371BC();
  v13 = sub_1B4F37240(&qword_1EDB6DB80, &qword_1EB8F7548, &qword_1B4F7C858, sub_1B4F372BC);
  return v16(&v18, &v17, v8, v9, v10, v11, v12, v13, ObjectType, v7);
}

uint64_t sub_1B4F36A04(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F85470;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001B4F854E0;
  v5._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 299;
  v14 = a1;
  v9 = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v11 = sub_1B4DE24F8();
  v12 = sub_1B4E594C8();
  return v9(&v15, &v14, v10, v11, v12, ObjectType, v7);
}

uint64_t sub_1B4F36B40()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F85470;
  v4._object = 0x80000001B4F854C0;
  v4._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 298;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v9 = sub_1B4DE24F8();
  v10 = sub_1B4E594C8();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4F36C70()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F85470;
  v4._object = 0x80000001B4F85570;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 301;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66F74();
  return v7(&v10, v8, MEMORY[0x1E69CCC60], MEMORY[0x1E69CCC68], ObjectType, v5);
}

uint64_t sub_1B4F36D84()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F85470;
  v4._object = 0x80000001B4F854A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 297;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F36E70(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 305;
  v5 = *(v3 + 16);
  v6 = sub_1B4F67154();
  return v5(&v8, a1, v6, MEMORY[0x1E69CCEB8], MEMORY[0x1E69CCEC0], ObjectType, v3);
}

uint64_t sub_1B4F36F14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB72490);
  v7._object = 0x80000001B4F85470;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001B4F855A0;
  v7._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v13 = 307;
  v12[0] = a1;
  v12[1] = a2;
  return (*(v9 + 16))(&v13, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v9);
}

void *sub_1B4F37030(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 56;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F66F74();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v10, sub_1B4F374A0, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CCC60], MEMORY[0x1E69CCC68]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F3713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC49F0(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4F371BC()
{
  result = qword_1EDB6DB88;
  if (!qword_1EDB6DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7548, &qword_1B4F7C858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB88);
  }

  return result;
}

uint64_t sub_1B4F37240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4F372BC()
{
  result = qword_1EDB70108;
  if (!qword_1EDB70108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70108);
  }

  return result;
}

unint64_t sub_1B4F37310()
{
  result = qword_1EB8F7558;
  if (!qword_1EB8F7558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F7550, &qword_1B4F7C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7558);
  }

  return result;
}

unint64_t sub_1B4F37394()
{
  result = qword_1EB8F7568;
  if (!qword_1EB8F7568)
  {
    sub_1B4F64A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7568);
  }

  return result;
}

uint64_t sub_1B4F37444(uint64_t a1)
{
  v2 = type metadata accessor for AchievementEnvironmentCacheUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CoachingEventEnded.coachingEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F652A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoachingEventEnded.init(coachingEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CoachingEventEnded(uint64_t a1)
{
  result = qword_1EB8F7570;
  if (!qword_1EB8F7570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F37A08(uint64_t a1)
{
  v36 = sub_1B4F64D24();
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
      v38 = sub_1B4F64D14();
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

uint64_t CatalogWorkout.reference()@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v2 = sub_1B4F64B24();
  v3 = *(v2 - 8);
  v149 = v2;
  v150 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v148 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1B4F65A34();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v6);
  v130 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4F647A4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v133 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1B4F67AC4();
  v128 = *(v147 - 1);
  MEMORY[0x1EEE9AC00](v147, v11);
  v146 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1B4F67954();
  v127 = *(v145 - 1);
  MEMORY[0x1EEE9AC00](v145, v13);
  v144 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1B4F64F74();
  v126 = *(v143 - 1);
  MEMORY[0x1EEE9AC00](v143, v15);
  v142 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1B4F64AC4();
  v125 = *(v141 - 1);
  MEMORY[0x1EEE9AC00](v141, v17);
  v140 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1B4F67B14();
  v19 = *(v139 - 1);
  MEMORY[0x1EEE9AC00](v139, v20);
  v138 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4F65644();
  v129 = sub_1B4F37A08(v22);

  v23 = sub_1B4F657E4();
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v135 = v1;
  if (v24)
  {
    v151 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v24, 0);
    v26 = v151;
    v28 = *(v19 + 16);
    v27 = v19 + 16;
    v137 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v124 = v23;
    v30 = v23 + v29;
    v136 = *(v27 + 56);
    v31 = (v27 - 8);
    do
    {
      v33 = v138;
      v32 = v139;
      v34 = v27;
      v137(v138, v30, v139);
      v35 = sub_1B4F67B04();
      v37 = v36;
      (*v31)(v33, v32);
      v151 = v26;
      v39 = v26[2];
      v38 = v26[3];
      if (v39 >= v38 >> 1)
      {
        sub_1B4E257A4((v38 > 1), v39 + 1, 1);
        v26 = v151;
      }

      v26[2] = v39 + 1;
      v40 = &v26[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v30 += v136;
      --v24;
      v27 = v34;
    }

    while (v24);
    v137 = v26;

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v137 = MEMORY[0x1E69E7CC0];
  }

  v41 = sub_1B4F65614();
  v42 = *(v41 + 16);
  if (v42)
  {
    v151 = v25;
    sub_1B4E257A4(0, v42, 0);
    v43 = v151;
    v44 = *(v125 + 16);
    v45 = *(v125 + 80);
    v136 = v41;
    v46 = v41 + ((v45 + 32) & ~v45);
    v138 = *(v125 + 72);
    v139 = v44;
    v47 = (v125 + 8);
    do
    {
      v49 = v140;
      v48 = v141;
      (v139)(v140, v46, v141);
      v50 = sub_1B4F64AB4();
      v52 = v51;
      (*v47)(v49, v48);
      v151 = v43;
      v54 = v43[2];
      v53 = v43[3];
      if (v54 >= v53 >> 1)
      {
        sub_1B4E257A4((v53 > 1), v54 + 1, 1);
        v43 = v151;
      }

      v43[2] = v54 + 1;
      v55 = &v43[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v46 += v138;
      --v42;
    }

    while (v42);
    v139 = v43;

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v139 = MEMORY[0x1E69E7CC0];
  }

  v56 = sub_1B4F65744();
  v57 = *(v56 + 16);
  if (v57)
  {
    v151 = v25;
    sub_1B4E257A4(0, v57, 0);
    v58 = v151;
    v59 = *(v126 + 16);
    v60 = *(v126 + 80);
    v138 = v56;
    v61 = v56 + ((v60 + 32) & ~v60);
    v140 = *(v126 + 72);
    v141 = v59;
    v62 = (v126 + 8);
    do
    {
      v64 = v142;
      v63 = v143;
      (v141)(v142, v61, v143);
      v65 = sub_1B4F64F64();
      v67 = v66;
      (*v62)(v64, v63);
      v151 = v58;
      v69 = v58[2];
      v68 = v58[3];
      if (v69 >= v68 >> 1)
      {
        sub_1B4E257A4((v68 > 1), v69 + 1, 1);
        v58 = v151;
      }

      v58[2] = v69 + 1;
      v70 = &v58[2 * v69];
      v70[4] = v65;
      v70[5] = v67;
      v61 += v140;
      --v57;
    }

    while (v57);
    v141 = v58;

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v141 = MEMORY[0x1E69E7CC0];
  }

  v71 = sub_1B4F657D4();
  v72 = *(v71 + 16);
  if (v72)
  {
    v151 = v25;
    sub_1B4E257A4(0, v72, 0);
    v73 = v151;
    v74 = *(v127 + 16);
    v75 = *(v127 + 80);
    v140 = v71;
    v76 = v71 + ((v75 + 32) & ~v75);
    v142 = *(v127 + 72);
    v143 = v74;
    v77 = (v127 + 8);
    do
    {
      v78 = v144;
      v79 = v145;
      (v143)(v144, v76, v145);
      v80 = sub_1B4F678D4();
      v82 = v81;
      (*v77)(v78, v79);
      v151 = v73;
      v84 = v73[2];
      v83 = v73[3];
      if (v84 >= v83 >> 1)
      {
        sub_1B4E257A4((v83 > 1), v84 + 1, 1);
        v73 = v151;
      }

      v73[2] = v84 + 1;
      v85 = &v73[2 * v84];
      v85[4] = v80;
      v85[5] = v82;
      v76 += v142;
      --v72;
    }

    while (v72);
    v143 = v73;

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v143 = MEMORY[0x1E69E7CC0];
  }

  v86 = sub_1B4F65604();
  v87 = *(v86 + 16);
  if (v87)
  {
    v151 = v25;
    sub_1B4E257A4(0, v87, 0);
    v88 = v151;
    v89 = *(v128 + 16);
    v90 = *(v128 + 80);
    v142 = v86;
    v91 = v86 + ((v90 + 32) & ~v90);
    v144 = *(v128 + 72);
    v145 = v89;
    v92 = (v128 + 8);
    do
    {
      v93 = v146;
      v94 = v147;
      (v145)(v146, v91, v147);
      v95 = sub_1B4F67AB4();
      v97 = v96;
      (*v92)(v93, v94);
      v151 = v88;
      v99 = v88[2];
      v98 = v88[3];
      if (v99 >= v98 >> 1)
      {
        sub_1B4E257A4((v98 > 1), v99 + 1, 1);
        v88 = v151;
      }

      v88[2] = v99 + 1;
      v100 = &v88[2 * v99];
      v100[4] = v95;
      v100[5] = v97;
      v91 += v144;
      --v87;
    }

    while (v87);

    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v101 = sub_1B4F65634();
  v102 = *(v101 + 16);
  if (v102)
  {
    v151 = v25;
    sub_1B4E257A4(0, v102, 0);
    v103 = v151;
    v104 = *(v150 + 16);
    v105 = *(v150 + 80);
    v145 = v101;
    v106 = v101 + ((v105 + 32) & ~v105);
    v146 = *(v150 + 72);
    v147 = v104;
    v150 += 16;
    v107 = (v150 - 8);
    do
    {
      v109 = v148;
      v108 = v149;
      (v147)(v148, v106, v149);
      v110 = sub_1B4F64B14();
      v112 = v111;
      (*v107)(v109, v108);
      v151 = v103;
      v114 = v103[2];
      v113 = v103[3];
      if (v114 >= v113 >> 1)
      {
        sub_1B4E257A4((v113 > 1), v114 + 1, 1);
        v103 = v151;
      }

      v103[2] = v114 + 1;
      v115 = &v103[2 * v114];
      v115[4] = v110;
      v115[5] = v112;
      v106 += v146;
      --v102;
    }

    while (v102);
  }

  sub_1B4F65684();
  v150 = v116;
  LODWORD(v149) = v117;
  sub_1B4F65654();
  sub_1B4F657A4();
  v148 = sub_1B4F65774();
  v118 = sub_1B4F655E4();
  v146 = v119;
  v147 = v118;
  v120 = sub_1B4F657F4();
  v144 = v121;
  v145 = v120;
  v122 = v130;
  sub_1B4F657C4();
  sub_1B4F65974();
  (*(v131 + 8))(v122, v132);
  sub_1B4F65734();
  sub_1B4F65754();
  return sub_1B4F667E4();
}

uint64_t MultiUserSession.applyingTimestampOffset(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E0, &qword_1B4F71248);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E8, &qword_1B4F71250);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1B4F65F04();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_1B4F65EF4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1B4F65D94();
  sub_1B4F65DA4();
  sub_1B4DD2BC4(v4, &qword_1EB8F51E0, &qword_1B4F71248);
  return sub_1B4DD2BC4(v8, &qword_1EB8F51E8, &qword_1B4F71250);
}

uint64_t sub_1B4F38B28(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E0, &qword_1B4F71248);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E8, &qword_1B4F71250);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1B4F65F04();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_1B4F65EF4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1B4F65D94();
  sub_1B4F65DA4();
  sub_1B4DD2BC4(v4, &qword_1EB8F51E0, &qword_1B4F71248);
  return sub_1B4DD2BC4(v8, &qword_1EB8F51E8, &qword_1B4F71250);
}

uint64_t sub_1B4F38CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4F7C7C0;
  *(v0 + 32) = sub_1B4F67F74();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B4F67F74();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B4F67F74();
  *(v0 + 72) = v3;
  result = sub_1B4F67F74();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1EDB6F040 = v0;
  return result;
}

uint64_t static ContactService.defaultKeys.getter()
{
  if (qword_1EDB6F038 != -1)
  {
    swift_once();
  }
}

uint64_t ContactService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B4F7C1A0;
  *(v1 + 32) = sub_1B4F67F74();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_1B4F67F74();
  *(v1 + 56) = v3;
  *(v0 + 24) = v1;
  return v0;
}

id sub_1B4F38E8C()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B4DE3FB4();
  sub_1B4EB8C54(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v2 = sub_1B4F681B4();

  v8[0] = 0;
  v3 = [v1 smu:v2 meContactWithKeysToFetch:v8 error:?];

  v4 = v8[0];
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1B4F647C4();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t ContactService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall ContactService.userFirstName()()
{
  v0 = sub_1B4F38E8C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1B4F397A0(v0);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall ContactService.firstName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B4DE3FB4();
  v4 = sub_1B4F39854(countAndFlagsBits, object);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A0, &qword_1B4F787B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4F7C950;
  v6 = *MEMORY[0x1E695C310];
  v7 = *MEMORY[0x1E695C240];
  *(v5 + 32) = *MEMORY[0x1E695C310];
  *(v5 + 40) = v7;
  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v10 = sub_1B4F681B4();

  v25[0] = 0;
  v11 = [v3 unifiedContactsMatchingPredicate:v4 keysToFetch:v10 error:v25];

  v12 = v25[0];
  if (!v11)
  {
    v22 = v25[0];
    v23 = sub_1B4F647C4();

    swift_willThrow();
LABEL_11:
    v21 = 0;
    v20 = 0;
    goto LABEL_15;
  }

  sub_1B4F3999C();
  v13 = sub_1B4F681C4();
  v14 = v12;

  if (v13 >> 62)
  {
    if (sub_1B4F688F4())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1B8C82290](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = sub_1B4F397A0(v16);
  v19 = v18;

  v20 = v19;
  v21 = v17;
LABEL_15:
  result.value._object = v20;
  result.value._countAndFlagsBits = v21;
  return result;
}

Swift::String_optional __swiftcall ContactService.lastName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B4DE3FB4();
  v4 = sub_1B4F39854(countAndFlagsBits, object);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A0, &qword_1B4F787B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4F7C960;
  v6 = *MEMORY[0x1E695C310];
  v7 = *MEMORY[0x1E695C230];
  *(v5 + 32) = *MEMORY[0x1E695C310];
  *(v5 + 40) = v7;
  v8 = *MEMORY[0x1E695C240];
  *(v5 + 48) = *MEMORY[0x1E695C240];
  v9 = v6;
  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v12 = sub_1B4F681B4();

  v28[0] = 0;
  v13 = [v3 unifiedContactsMatchingPredicate:v4 keysToFetch:v12 error:v28];

  v14 = v28[0];
  if (!v13)
  {
    v25 = v28[0];
    v26 = sub_1B4F647C4();

    swift_willThrow();
LABEL_11:
    v24 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  sub_1B4F3999C();
  v15 = sub_1B4F681C4();
  v16 = v14;

  if (v15 >> 62)
  {
    if (sub_1B4F688F4())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8C82290](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = [v18 familyName];
  v20 = sub_1B4F67F74();
  v22 = v21;

  v23 = v22;
  v24 = v20;
LABEL_15:
  result.value._object = v23;
  result.value._countAndFlagsBits = v24;
  return result;
}

uint64_t ContactService.thumbnailImageData(for:)(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B4DE3FB4();
  v5 = sub_1B4F39854(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61A0, &qword_1B4F787B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4F78770;
  v7 = *MEMORY[0x1E695C400];
  *(v6 + 32) = *MEMORY[0x1E695C400];
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v9 = sub_1B4F681B4();

  v22[0] = 0;
  v10 = [v4 unifiedContactsMatchingPredicate:v5 keysToFetch:v9 error:v22];

  v11 = v22[0];
  if (!v10)
  {
    v20 = v22[0];
    v21 = sub_1B4F647C4();

    swift_willThrow();
    return 0;
  }

  sub_1B4F3999C();
  v12 = sub_1B4F681C4();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_1B4F688F4())
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8C82290](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 thumbnailImageData];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B4F64894();

    return v18;
  }

  return 0;
}

uint64_t sub_1B4F396DC()
{
  v0 = sub_1B4F38E8C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1B4F397A0(v0);

  return v2;
}

uint64_t sub_1B4F397A0(void *a1)
{
  v2 = [a1 nickname];
  v3 = sub_1B4F67F74();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = &selRef_nickname;
  }

  else
  {
    v7 = &selRef_givenName;
  }

  v8 = [a1 *v7];
  v9 = sub_1B4F67F74();

  return v9;
}

id sub_1B4F39854(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v17 = a2;
  v11 = 64;
  v13 = 0xE100000000000000;
  sub_1B4DCAC7C();
  if (sub_1B4F68884() & 1) != 0 || (v15 = a1, v17 = a2, v11 = 0x3A6F746C69616DLL, v13 = 0xE700000000000000, (sub_1B4F68884()))
  {
    v4 = objc_opt_self();
    v5 = sub_1B4F67F64();
    v6 = [v4 predicateForContactsMatchingEmailAddress_];
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v8 = sub_1B4F67F64();
    v5 = [v7 initWithStringValue_];

    v6 = [objc_opt_self() predicateForContactsMatchingPhoneNumber_];
  }

  v9 = v6;

  return v9;
}

unint64_t sub_1B4F3999C()
{
  result = qword_1EB8F7580;
  if (!qword_1EB8F7580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F7580);
  }

  return result;
}

uint64_t AnalyticsEvent.identifier.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0xE000000000000000;
  (*(a2 + 8))(&v8);
  if (v8)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v8)
  {
    v5 = "@NSDictionary8@?0";
  }

  else
  {
    v5 = "nToken";
  }

  MEMORY[0x1B8C818C0](v4, v5 | 0x8000000000000000);

  MEMORY[0x1B8C818C0](46, 0xE100000000000000);
  v6 = (*(a2 + 16))(a1, a2);
  MEMORY[0x1B8C818C0](v6);

  return v9;
}

uint64_t CatalogModality.reference()()
{
  sub_1B4F65A24();
  sub_1B4F659A4();
  sub_1B4F659B4();
  sub_1B4F65974();
  sub_1B4F659D4();
  sub_1B4F659C4();
  sub_1B4F659E4();
  return sub_1B4F66A04();
}

unint64_t sub_1B4F39C48()
{
  result = qword_1EB8F7588;
  if (!qword_1EB8F7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F7588);
  }

  return result;
}

uint64_t sub_1B4F39C9C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1B4F67EF4();
  if (*(v2 + 16) && (sub_1B4DF4344(0xD000000000000024, 0x80000001B4F85710), (v3 & 1) != 0))
  {

    sub_1B4F647F4();
  }

  else
  {

    return sub_1B4F647F4();
  }
}

uint64_t sub_1B4F39E08(uint64_t a1)
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F39C9C();
  sub_1B4F64804();
  return (*(v2 + 8))(v5, v1);
}

uint64_t static URL.seymourJournalDirectory()()
{
  v0 = sub_1B4F64824();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  sub_1B4F39C9C();
  sub_1B4F64804();
  v9 = *(v1 + 8);
  v9(v4, v0);
  sub_1B4F64804();
  return (v9)(v8, v0);
}

uint64_t static URL.userManagedAssetsDirectory()()
{
  v0 = sub_1B4F64824();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F39C9C();
  sub_1B4F64804();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static URL.mobileLibrarySeymourAwardAssetDirectory()()
{
  v0 = sub_1B4F64824();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F39C9C();
  sub_1B4F64804();
  return (*(v1 + 8))(v4, v0);
}

void *StreamingKeyDeliveryClient.__allocating_init(queue:)(void *a1)
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

void *StreamingKeyDeliveryClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t StreamingKeyDeliveryClient.fetchCertificateContext()@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v101 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v2);
  v94 = v3;
  v95 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v108 = v83 - v6;
  v107 = sub_1B4F64964();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v7);
  v98 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v110 = v83 - v11;
  v92 = sub_1B4F67BD4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1B4F67BA4();
  v14 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v15);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4560, &qword_1B4F6CE10);
  v97 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v18);
  v105 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = v83 - v22;
  v89 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v83 - v26;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for ActivityTracer(0);
  v29 = __swift_project_value_buffer(v28, qword_1EDB6DE50);
  v30 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v112[0] = 147;
  v32 = *(v30 + 24);
  v104 = sub_1B4F664D4();
  v103 = v27;
  v32(v112, v104, MEMORY[0x1E69CC2F0], MEMORY[0x1E69CC2F8], ObjectType, v30);
  type metadata accessor for ActivityTrace();
  v33 = swift_allocObject();
  *(v33 + 16) = "StreamingKeyDeliveryClient::fetchCertificateContext";
  *(v33 + 24) = 51;
  *(v33 + 32) = 2;
  v34 = v33;
  v35 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v36 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchCertificateContext", v35, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v37 = swift_allocObject();
  *(v37 + 44) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = 0;
  *(v34 + 40) = v37;
  v102 = v34;

  sub_1B4F67BC4();
  v38 = v17;
  sub_1B4F67B84();
  v39 = v91;
  v40 = *(v91 + 16);
  v41 = v90;
  v42 = v92;
  v40(v90, v29, v92);
  type metadata accessor for Signpost(0);
  v43 = swift_allocObject();
  v44 = v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v44 = "StreamingKeyDeliveryClient::fetchCertificateContext";
  *(v44 + 8) = 51;
  *(v44 + 16) = 2;
  v45 = v17;
  v46 = v88;
  (*(v14 + 16))(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v88);
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v40((v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  (*(v39 + 8))(v41, v42);
  (*(v14 + 8))(v38, v46);
  *(v47 + 16) = 0;
  v84 = v43;
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v47;
  v48 = v102;
  v111 = v102;
  v49 = sub_1B4F67F94();
  v92 = v49;
  v51 = v50;
  sub_1B4F64944();
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = v43;
  *(v52 + 32) = v49;
  *(v52 + 40) = v51;
  v91 = v51;
  *(v52 + 48) = "StreamingKeyDeliveryClient::fetchCertificateContext";
  *(v52 + 56) = 51;
  *(v52 + 64) = 2;

  v53 = v108;
  sub_1B4F675F4();
  v54 = v97;
  v55 = *(v97 + 16);
  v88 = v97 + 16;
  v90 = v55;
  v57 = v105;
  v56 = v106;
  (v55)(v105, v103, v106);
  v87 = *(v54 + 80);
  v85 = &v89[(v87 + 16) & ~v87];
  v58 = (v87 + 16) & ~v87;
  v86 = v58;
  v59 = swift_allocObject();
  v60 = *(v54 + 32);
  v83[1] = v54 + 32;
  v89 = v60;
  (v60)(v59 + v58, v57, v56);
  v61 = v101;
  v62 = v95;
  v63 = v109;
  (*(v101 + 16))(v95, v53, v109);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v94 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_1B4F3EFA4;
  v67[1] = v59;
  v68 = v93;
  sub_1B4F675F4();
  v70 = v98;
  v69 = v99;
  v71 = v107;
  (*(v99 + 16))(v98, v110, v107);
  v72 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v73 = (v96 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v91;
  *(v74 + 16) = v92;
  *(v74 + 24) = v75;
  *(v74 + 32) = "StreamingKeyDeliveryClient::fetchCertificateContext";
  *(v74 + 40) = 51;
  *(v74 + 48) = 2;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v84;
  *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v102;
  v77 = v105;
  v76 = v106;
  (v90)(v105, v68, v106);
  v78 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  (v89)(v79 + v86, v77, v76);
  v80 = (v79 + v78);
  *v80 = sub_1B4F3EFF4;
  v80[1] = v74;

  sub_1B4F675F4();
  v81 = *(v54 + 8);
  v81(v68, v76);
  (*(v61 + 8))(v108, v109);
  (*(v69 + 8))(v110, v107);
  v81(v103, v76);
}

uint64_t StreamingKeyDeliveryClient.fetchContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66504();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 148;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F64A74();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "StreamingKeyDeliveryClient::fetchContext";
  *(v38 + 24) = 40;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchContext", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "StreamingKeyDeliveryClient::fetchContext";
  *(v48 + 8) = 40;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "StreamingKeyDeliveryClient::fetchContext";
  *(v56 + 56) = 40;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4F3F034;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "StreamingKeyDeliveryClient::fetchContext";
  *(v78 + 40) = 40;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4F3F084;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t StreamingKeyDeliveryClient.fetchPlaybackVoucher(version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66644();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 232;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F65B94();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC598], MEMORY[0x1E69CC5A0], MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v38 + 24) = 48;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchPlaybackVoucher", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v48 + 8) = 48;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v56 + 56) = 48;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4F3F0C4;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v78 + 40) = 48;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4F3F114;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t StreamingKeyDeliveryClient.queryPlaybackVoucher()@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v101 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v2);
  v94 = v3;
  v95 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v108 = v83 - v6;
  v107 = sub_1B4F64964();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v7);
  v98 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v110 = v83 - v11;
  v92 = sub_1B4F67BD4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1B4F67BA4();
  v14 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v15);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v97 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v18);
  v105 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = v83 - v22;
  v89 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v83 - v26;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for ActivityTracer(0);
  v29 = __swift_project_value_buffer(v28, qword_1EDB6DE50);
  v30 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v112[0] = 231;
  v32 = *(v30 + 24);
  v104 = sub_1B4F65B94();
  v103 = v27;
  v32(v112, v104, MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v30);
  type metadata accessor for ActivityTrace();
  v33 = swift_allocObject();
  *(v33 + 16) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v33 + 24) = 48;
  *(v33 + 32) = 2;
  v34 = v33;
  v35 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v36 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::queryPlaybackVoucher", v35, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v37 = swift_allocObject();
  *(v37 + 44) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = 0;
  *(v34 + 40) = v37;
  v102 = v34;

  sub_1B4F67BC4();
  v38 = v17;
  sub_1B4F67B84();
  v39 = v91;
  v40 = *(v91 + 16);
  v41 = v90;
  v42 = v92;
  v40(v90, v29, v92);
  type metadata accessor for Signpost(0);
  v43 = swift_allocObject();
  v44 = v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v44 = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v44 + 8) = 48;
  *(v44 + 16) = 2;
  v45 = v17;
  v46 = v88;
  (*(v14 + 16))(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v88);
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v40((v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  (*(v39 + 8))(v41, v42);
  (*(v14 + 8))(v38, v46);
  *(v47 + 16) = 0;
  v84 = v43;
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v47;
  v48 = v102;
  v111 = v102;
  v49 = sub_1B4F67F94();
  v92 = v49;
  v51 = v50;
  sub_1B4F64944();
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = v43;
  *(v52 + 32) = v49;
  *(v52 + 40) = v51;
  v91 = v51;
  *(v52 + 48) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v52 + 56) = 48;
  *(v52 + 64) = 2;

  v53 = v108;
  sub_1B4F675F4();
  v54 = v97;
  v55 = *(v97 + 16);
  v88 = v97 + 16;
  v90 = v55;
  v57 = v105;
  v56 = v106;
  (v55)(v105, v103, v106);
  v87 = *(v54 + 80);
  v85 = &v89[(v87 + 16) & ~v87];
  v58 = (v87 + 16) & ~v87;
  v86 = v58;
  v59 = swift_allocObject();
  v60 = *(v54 + 32);
  v83[1] = v54 + 32;
  v89 = v60;
  (v60)(v59 + v58, v57, v56);
  v61 = v101;
  v62 = v95;
  v63 = v109;
  (*(v101 + 16))(v95, v53, v109);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v94 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_1B4F3F54C;
  v67[1] = v59;
  v68 = v93;
  sub_1B4F675F4();
  v70 = v98;
  v69 = v99;
  v71 = v107;
  (*(v99 + 16))(v98, v110, v107);
  v72 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v73 = (v96 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v91;
  *(v74 + 16) = v92;
  *(v74 + 24) = v75;
  *(v74 + 32) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v74 + 40) = 48;
  *(v74 + 48) = 2;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v84;
  *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v102;
  v77 = v105;
  v76 = v106;
  (v90)(v105, v68, v106);
  v78 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  (v89)(v79 + v86, v77, v76);
  v80 = (v79 + v78);
  *v80 = sub_1B4F3F544;
  v80[1] = v74;

  sub_1B4F675F4();
  v81 = *(v54 + 8);
  v81(v68, v76);
  (*(v61 + 8))(v108, v109);
  (*(v69 + 8))(v110, v107);
  v81(v103, v76);
}

uint64_t StreamingKeyDeliveryClient.fetchStreamingKeyNonce(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v6);
  v97 = v7;
  v98 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v110 = v86 - v10;
  v109 = sub_1B4F64964();
  v102 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v11);
  v101 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v112 = v86 - v15;
  v93 = sub_1B4F67BD4();
  v16 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v17);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1B4F67BA4();
  v20 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v21);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v100 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v24);
  v107 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v95 = v29;
  v96 = v86 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v86 - v32;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v35 = __swift_project_value_buffer(v34, qword_1EDB6DE50);
  v36 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v114[0] = 151;
  v113[0] = a1;
  v113[1] = a2;
  (*(v36 + 32))(v114, v113, MEMORY[0x1E69E6158], MEMORY[0x1E6969080], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CAE40], MEMORY[0x1E69CAE48], ObjectType, v36);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "StreamingKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v38 + 24) = 50;
  *(v38 + 32) = 2;
  v39 = v38;
  v40 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v41 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchStreamingKeyNonce", v40, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = 0;
  *(v39 + 40) = v42;
  v105 = v39;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v106 = v33;
  v43 = v23;
  v44 = v16;
  v45 = *(v16 + 16);
  v46 = v93;
  v45(v19, v35, v93);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "StreamingKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v48 + 8) = 50;
  *(v48 + 16) = 2;
  v49 = v94;
  (*(v20 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v43, v94);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v45((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v19, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  (*(v44 + 8))(v19, v46);
  (*(v20 + 8))(v43, v49);
  *(v50 + 16) = 0;
  v87 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v50;
  v51 = v105;
  v113[0] = v105;
  v52 = sub_1B4F67F94();
  v94 = v52;
  v54 = v53;
  sub_1B4F64944();
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  *(v55 + 24) = v47;
  *(v55 + 32) = v52;
  *(v55 + 40) = v54;
  v93 = v54;
  *(v55 + 48) = "StreamingKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v55 + 56) = 50;
  *(v55 + 64) = 2;

  v56 = v110;
  sub_1B4F675F4();
  v57 = v100;
  v58 = *(v100 + 16);
  v91 = v100 + 16;
  v92 = v58;
  v59 = v107;
  v60 = v108;
  v58(v107, v106, v108);
  v90 = *(v57 + 80);
  v88 = &v95[(v90 + 16) & ~v90];
  v61 = (v90 + 16) & ~v90;
  v89 = v61;
  v62 = swift_allocObject();
  v63 = *(v57 + 32);
  v86[1] = v57 + 32;
  v95 = v63;
  (v63)(v62 + v61, v59, v60);
  v64 = v104;
  v65 = v98;
  v66 = v111;
  (*(v104 + 16))(v98, v56, v111);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = (v97 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  (*(v64 + 32))(v69 + v67, v65, v66);
  v70 = (v69 + v68);
  *v70 = sub_1B4F3F154;
  v70[1] = v62;
  v71 = v96;
  sub_1B4F675F4();
  v73 = v101;
  v72 = v102;
  v74 = v109;
  (*(v102 + 16))(v101, v112, v109);
  v75 = (*(v72 + 80) + 49) & ~*(v72 + 80);
  v76 = (v99 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v93;
  *(v77 + 16) = v94;
  *(v77 + 24) = v78;
  *(v77 + 32) = "StreamingKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v77 + 40) = 50;
  *(v77 + 48) = 2;
  (*(v72 + 32))(v77 + v75, v73, v74);
  *(v77 + v76) = v87;
  *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v105;
  v80 = v107;
  v79 = v108;
  v92(v107, v71, v108);
  v81 = (v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (v95)(v82 + v89, v80, v79);
  v83 = (v82 + v81);
  *v83 = sub_1B4F3F1A4;
  v83[1] = v77;

  sub_1B4F675F4();
  v84 = *(v57 + 8);
  v84(v71, v79);
  (*(v64 + 8))(v110, v111);
  (*(v72 + 8))(v112, v109);
  v84(v106, v79);
}

uint64_t StreamingKeyDeliveryClient.renewContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F66504();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 149;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F64A74();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "StreamingKeyDeliveryClient::renewContext";
  *(v38 + 24) = 40;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::renewContext", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "StreamingKeyDeliveryClient::renewContext";
  *(v48 + 8) = 40;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "StreamingKeyDeliveryClient::renewContext";
  *(v56 + 56) = 40;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4F3F558;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "StreamingKeyDeliveryClient::renewContext";
  *(v78 + 40) = 40;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4F3F548;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t StreamingKeyDeliveryClient.releaseContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F66504();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EDB6DE50);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 150;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "StreamingKeyDeliveryClient::releaseContext";
  *(v41 + 24) = 42;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::releaseContext", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v46 = v96;
  v94 = v31;
  v47 = *(v96 + 16);
  v48 = v95;
  v49 = v97;
  v47(v95, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "StreamingKeyDeliveryClient::releaseContext";
  *(v51 + 8) = 42;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "StreamingKeyDeliveryClient::releaseContext";
  *(v60 + 56) = 42;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v95 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4F3F344;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "StreamingKeyDeliveryClient::releaseContext";
  *(v79 + 40) = 42;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4ECC000;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}