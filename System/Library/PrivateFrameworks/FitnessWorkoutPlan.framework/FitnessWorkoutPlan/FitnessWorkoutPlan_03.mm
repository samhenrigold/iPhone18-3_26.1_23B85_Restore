unint64_t sub_1E58E3D14()
{
  result = qword_1ECFFC2B8;
  if (!qword_1ECFFC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC2B8);
  }

  return result;
}

uint64_t sub_1E58E3D68(uint64_t a1, int **a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  v2[4] = swift_task_alloc();
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v2[5] = active;
  v2[6] = *(active - 8);
  v5 = swift_task_alloc();
  v2[7] = v5;
  v2[8] = sub_1E5A2BC84();
  v2[9] = sub_1E5A2BC74();
  v8 = (*a2 + **a2);
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_1E58E3F10;

  return v8(v5);
}

uint64_t sub_1E58E3F10()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_1E5A2BC54();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_1E58E4374;
  }

  else
  {
    v5 = sub_1E58E4070;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E58E4070()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  sub_1E58E779C(v0[7], v2, type metadata accessor for ActiveWorkoutPlanWorkout);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v4 = v0;
  v4[1] = sub_1E58E4184;
  v6 = v0[4];

  return MEMORY[0x1EEE01A40](v6, v5);
}

uint64_t sub_1E58E4184()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E58E42DC, v4, v3);
}

uint64_t sub_1E58E42DC()
{
  v1 = *(v0 + 56);

  sub_1E58E7804(v1, type metadata accessor for ActiveWorkoutPlanWorkout);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E58E4374()
{
  if (qword_1ECFFB470 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1E5A2A3D4();
  __swift_project_value_buffer(v2, qword_1ED026480);
  v3 = v1;
  v4 = sub_1E5A2A3B4();
  v5 = sub_1E5A2BD64();
  MEMORY[0x1E69331F0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5897000, v4, v5, "Failed to fetch active workout plan workout: %@", v7, 0xCu);
    sub_1E58BAD14(v8, &qword_1ECFFC3A8, &qword_1E5A308B8);
    MEMORY[0x1E6933430](v8, -1, -1);
    MEMORY[0x1E6933430](v7, -1, -1);
  }

  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];

  (*(v12 + 56))(v13, 1, 1, v11);
  swift_storeEnumTagMultiPayload();
  v14 = swift_task_alloc();
  v0[15] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v14 = v0;
  v14[1] = sub_1E58E4594;
  v16 = v0[4];

  return MEMORY[0x1EEE01A40](v16, v15);
}

uint64_t sub_1E58E4594()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E58E46EC, v4, v3);
}

uint64_t sub_1E58E46EC()
{
  v1 = *(v0 + 88);

  MEMORY[0x1E69331F0](v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E58E4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5A2BC84();
  v4[3] = sub_1E5A2BC74();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E58E4890;

  return v10(a3, a4);
}

uint64_t sub_1E58E4890()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v4 = sub_1E58E4A50;
  }

  else
  {
    v4 = sub_1E58E49EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E58E49EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E58E4A50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E58E4AB4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E4BBC;

  return v6();
}

uint64_t sub_1E58E4BBC()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v4 = sub_1E58E7918;
  }

  else
  {
    v4 = sub_1E58E791C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E58E4D18(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  v1[4] = swift_task_alloc();
  sub_1E5A2BC84();
  v1[5] = sub_1E5A2BC74();
  v3 = sub_1E5A2BC54();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E58E4DE0, v3, v2);
}

uint64_t sub_1E58E4DE0()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
  *v1 = v0;
  v1[1] = sub_1E58E4EA0;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E58E4EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E58E4FF8, v4, v3);
}

uint64_t sub_1E58E4FF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E58E5064(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5A2BC84();
  v2[16] = sub_1E5A2BC74();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E51A8;

  return v6(v2 + 7);
}

uint64_t sub_1E58E51A8()
{
  v1 = *v0;

  v3 = sub_1E5A2BC54();
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E58E52EC, v3, v2);
}

uint64_t sub_1E58E52EC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5A2BC74();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1E58E54C4;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v5, v7);
}

uint64_t sub_1E58E54C4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x1EEE6DFA0](sub_1E58E55D8, v4, v5);
  }

  return result;
}

uint64_t sub_1E58E55D8()
{
  if (*(v0 + 184) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
    *v3 = v0;
    v3[1] = sub_1E58E56F4;
    v5 = *(v0 + 112);

    return MEMORY[0x1EEE01A40](v5, v4);
  }
}

uint64_t sub_1E58E56F4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E58E584C, v4, v3);
}

uint64_t sub_1E58E584C(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_1E58E54C4;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 23, v2, v4);
}

uint64_t sub_1E58E5928(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for ActiveWorkoutPlanWorkoutAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E5A2BC84();
  v2[16] = sub_1E5A2BC74();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E5A6C;

  return v6(v2 + 7);
}

uint64_t sub_1E58E5A6C()
{
  v1 = *v0;

  v3 = sub_1E5A2BC54();
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E58E5BB0, v3, v2);
}

uint64_t sub_1E58E5BB0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_1E5A2BC74();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1E58E5D88;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 23, v5, v7);
}

uint64_t sub_1E58E5D88()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x1EEE6DFA0](sub_1E58E5E9C, v4, v5);
  }

  return result;
}

uint64_t sub_1E58E5E9C()
{
  if (*(v0 + 184) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A0, &qword_1E5A308B0);
    *v3 = v0;
    v3[1] = sub_1E58E5FB8;
    v5 = *(v0 + 112);

    return MEMORY[0x1EEE01A40](v5, v4);
  }
}

uint64_t sub_1E58E5FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_1E58E7804(v2, type metadata accessor for ActiveWorkoutPlanWorkoutAction);
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E58E6110, v4, v3);
}

uint64_t sub_1E58E6110(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_1E58E5D88;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 23, v2, v4);
}

uint64_t ActiveWorkoutPlanWorkoutFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  *(a2 + *(result + 24)) = 1;
  return result;
}

uint64_t sub_1E58E6224(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState(0);
  *(a2 + *(result + 24)) = 1;
  return result;
}

char *sub_1E58E6258(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2E8, &qword_1E5A307F8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E58E635C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFC3B8, &unk_1E5A45200);
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

uint64_t sub_1E58E6450(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E5064(a1, v1 + 16);
}

uint64_t sub_1E58E6520(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E5928(a1, v1 + 16);
}

uint64_t sub_1E58E65B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E4AB4(a1, v1 + 16);
}

uint64_t sub_1E58E6650(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E58E4770(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E58E66FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58E676C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1E58E6834(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E58E3D68(a1, (v1 + 16));
}

uint64_t sub_1E58E69EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E58E6A50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E58E6A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActiveWorkoutPlanWorkoutFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActiveWorkoutPlanWorkoutFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58E6C50()
{
  result = qword_1ECFFC2E0;
  if (!qword_1ECFFC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC2E0);
  }

  return result;
}

char *sub_1E58E6CF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC350, &qword_1E5A30860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E58E6E1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC390, &unk_1E5A308A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E58E6F44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC388, &qword_1E5A30898);
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

void *sub_1E58E7078(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1E58E7278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC368, &qword_1E5A30878);
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

char *sub_1E58E73F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC320, &qword_1E5A30830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E58E757C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E58E779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58E7804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t ArchivedWorkoutPlansLocalState.init(limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = sub_1E5A2A374();
  v29 = a2;
  v30 = sub_1E5A2A314();
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = sub_1E5A2A384();
  v35 = a6;
  v36 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v37 = a7;
  v38 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v39 = a8;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v45 = a14;
  v19 = sub_1E5A2A244();
  (*(*(v19 - 8) + 56))(a9, 1, 1, v19);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  result = type metadata accessor for ArchivedWorkoutPlansLocalState(0, &v28);
  *(a9 + *(result + 116)) = a1;
  return result;
}

uint64_t sub_1E58E7B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ArchivedWorkoutPlansLocalState.section.getter@<X0>(uint64_t a2@<X8>)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A244();
  v2 = sub_1E5A2BD84();
  return (*(*(v2 - 8) + 16))(a2, v5, v2);
}

uint64_t ArchivedWorkoutPlansLocalState.section.setter(uint64_t a1, uint64_t a2)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A244();
  v2 = sub_1E5A2BD84();
  return (*(*(v2 - 8) + 40))(v5, a1, v2);
}

uint64_t sub_1E58E7F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E58E8048(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58E8090(char a1)
{
  if (a1)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

uint64_t sub_1E58E81A0(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E58E8020(v3, *v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58E824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E58E7F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58E829C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E58E9680();
  *a2 = result;
  return result;
}

uint64_t sub_1E58E82F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E58E8344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansLocalState.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v23 = a2[3];
  v4 = a2[5];
  v22 = a2[4];
  v21 = v4;
  v5 = a2[7];
  v24 = a2[6];
  v25 = v5;
  v6 = a2[9];
  v30 = a2[8];
  v29 = v6;
  v7 = a2[11];
  v28 = a2[10];
  v27 = v7;
  v26 = a2[12];
  v31 = a2[13];
  v34 = v3;
  v35 = v23;
  v36 = v22;
  v37 = v4;
  v38 = v24;
  v39 = v5;
  v40 = v30;
  v41 = v6;
  v42 = v28;
  v43 = v7;
  v44 = v26;
  v45 = v31;
  type metadata accessor for ArchivedWorkoutPlansLocalState.CodingKeys(255, &v34);
  swift_getWitnessTable();
  v8 = sub_1E5A2C0D4();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A2C224();
  v52 = 0;
  v11 = sub_1E5A2A374();
  v12 = sub_1E5A2A314();
  v13 = sub_1E5A2A384();
  v14 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v15 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v16 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v34 = v11;
  v35 = v3;
  v36 = v12;
  v37 = v23;
  v38 = v22;
  v39 = v21;
  v40 = v13;
  v41 = v24;
  v42 = v14;
  v43 = v25;
  v44 = v15;
  v45 = v30;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  v49 = v26;
  v50 = v16;
  v51 = v31;
  sub_1E5A2A244();
  swift_getWitnessTable();
  v17 = v33;
  sub_1E5A2C054();
  if (v17)
  {
    return (*(v32 + 8))(v10, v8);
  }

  v19 = v32;
  LOBYTE(v34) = 1;
  sub_1E5A2C094();
  return (*(v19 + 8))(v10, v8);
}

uint64_t ArchivedWorkoutPlansLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v47 = a5;
  v44 = a4;
  v58 = a3;
  v77 = a1;
  v39 = a9;
  v49 = a14;
  v48 = a13;
  v54 = a12;
  v46 = a11;
  v43 = a10;
  v59 = sub_1E5A2A374();
  v60 = a2;
  v45 = a2;
  v61 = sub_1E5A2A314();
  v62 = a3;
  v17 = v47;
  v63 = a4;
  v64 = v47;
  v65 = sub_1E5A2A384();
  v66 = v55;
  v67 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v68 = v56;
  v69 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v70 = v57;
  v71 = a10;
  v72 = a11;
  v73 = a12;
  v74 = a13;
  v75 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v76 = a14;
  v50 = sub_1E5A2A244();
  v52 = sub_1E5A2BD84();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v41 = &v38 - v18;
  v59 = a2;
  v60 = v58;
  v19 = v44;
  v61 = v44;
  v62 = v47;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  v66 = a10;
  v67 = a11;
  v68 = a12;
  v69 = a13;
  v70 = a14;
  type metadata accessor for ArchivedWorkoutPlansLocalState.CodingKeys(255, &v59);
  swift_getWitnessTable();
  v42 = sub_1E5A2C014();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v21 = &v38 - v20;
  v59 = v45;
  v60 = v58;
  v61 = v19;
  v62 = v17;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  v66 = a10;
  v67 = a11;
  v68 = v54;
  v22 = v50;
  v69 = a13;
  v70 = a14;
  v23 = type metadata accessor for ArchivedWorkoutPlansLocalState(0, &v59);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v38 - v26;
  (*(*(v22 - 8) + 56))(&v38 - v26, 1, 1, v22, v25);
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v58 = v21;
  v28 = v53;
  sub_1E5A2C214();
  if (v28)
  {
    v33 = v52;
    v34 = v51;
    __swift_destroy_boxed_opaque_existential_1(v77);
    return (*(v34 + 8))(v27, v33);
  }

  else
  {
    v57 = v24;
    v29 = v23;
    v30 = v40;
    LOBYTE(v59) = 0;
    swift_getWitnessTable();
    v31 = v41;
    v32 = v42;
    sub_1E5A2BF84();
    (*(v51 + 40))(v27, v31, v52);
    LOBYTE(v59) = 1;
    v35 = sub_1E5A2BFC4();
    (*(v30 + 8))(v58, v32);
    *&v27[*(v29 + 116)] = v35;
    v36 = v57;
    (*(v57 + 16))(v39, v27, v29);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return (*(v36 + 8))(v27, v29);
  }
}

BOOL static ArchivedWorkoutPlansLocalState.== infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, char *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v54 = a8;
  v53 = a7;
  v55 = a1;
  v56 = a2;
  v52 = a14;
  v51 = a13;
  v50 = sub_1E5A2A374();
  v49 = sub_1E5A2A314();
  v48 = sub_1E5A2A384();
  v57 = v50;
  v58 = a3;
  v42 = a3;
  v59 = v49;
  v60 = a4;
  v44 = a4;
  v46 = a5;
  v61 = a5;
  v62 = a6;
  v47 = a6;
  v63 = v48;
  v64 = v53;
  v65 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v66 = v54;
  v67 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v68 = a9;
  v40 = a9;
  v41 = a10;
  v69 = a10;
  v70 = a11;
  v43 = a11;
  v45 = a12;
  v71 = a12;
  v72 = a13;
  v73 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v74 = a14;
  v18 = sub_1E5A2A244();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v38 - v20;
  v21 = sub_1E5A2BD84();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v38 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = &v38 - v26;
  v29 = *(v28 + 48);
  v49 = v22;
  v30 = *(v22 + 16);
  v30(&v38 - v26, v55, v21, v25);
  (v30)(&v27[v29], v56, v21);
  v31 = *(v19 + 48);
  if (v31(v27, 1, v18) != 1)
  {
    (v30)(v50, v27, v21);
    if (v31(&v27[v29], 1, v18) != 1)
    {
      v33 = v39;
      (*(v19 + 32))(v39, &v27[v29], v18);
      swift_getWitnessTable();
      v34 = v50;
      v35 = sub_1E5A2BA74();
      v36 = *(v19 + 8);
      v36(v33, v18);
      v36(v34, v18);
      (*(v49 + 8))(v27, v21);
      if (v35)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v19 + 8))(v50, v18);
LABEL_6:
    (*(v48 + 8))(v27, TupleTypeMetadata2);
    return 0;
  }

  if (v31(&v27[v29], 1, v18) != 1)
  {
    goto LABEL_6;
  }

  (*(v49 + 8))(v27, v21);
LABEL_9:
  v57 = v42;
  v58 = v44;
  v59 = v46;
  v60 = v47;
  v61 = v53;
  v62 = v54;
  v63 = v40;
  v64 = v41;
  v65 = v43;
  v66 = v45;
  v67 = v51;
  v68 = v52;
  v37 = type metadata accessor for ArchivedWorkoutPlansLocalState(0, &v57);
  return *(v55 + *(v37 + 116)) == *(v56 + *(v37 + 116));
}

uint64_t sub_1E58E9448(uint64_t a1)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A244();
  result = sub_1E5A2BD84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E58E9688()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E58E973C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58EA3D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58E9770(uint64_t a1)
{
  v2 = sub_1E58EA11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E97AC(uint64_t a1)
{
  v2 = sub_1E58EA11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E97E8(uint64_t a1)
{
  v2 = sub_1E58EA170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9824(uint64_t a1)
{
  v2 = sub_1E58EA170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9860(uint64_t a1)
{
  v2 = sub_1E58EA314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E989C(uint64_t a1)
{
  v2 = sub_1E58EA314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E98D8(uint64_t a1)
{
  v2 = sub_1E58EA1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9914(uint64_t a1)
{
  v2 = sub_1E58EA1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9950(uint64_t a1)
{
  v2 = sub_1E58EA218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E998C(uint64_t a1)
{
  v2 = sub_1E58EA218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E99C8(uint64_t a1)
{
  v2 = sub_1E58EA26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9A04(uint64_t a1)
{
  v2 = sub_1E58EA26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58E9A40(uint64_t a1)
{
  v2 = sub_1E58EA2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58E9A7C(uint64_t a1)
{
  v2 = sub_1E58EA2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanSizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanSizeClass.encode(to:)(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4C0, &qword_1E5A30AC0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4C8, &qword_1E5A30AC8);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4D0, &qword_1E5A30AD0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4D8, &qword_1E5A30AD8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4E0, &qword_1E5A30AE0);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4E8, &qword_1E5A30AE8);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC4F0, &qword_1E5A30AF0);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EA11C();
  sub_1E5A2C224();
  v21 = (v18 + 8);
  if (v44 > 2u)
  {
    if (v44 == 3)
    {
      v48 = 3;
      sub_1E58EA218();
      v24 = v34;
      v25 = v43;
      sub_1E5A2C024();
      v27 = v35;
      v26 = v36;
    }

    else if (v44 == 4)
    {
      v49 = 4;
      sub_1E58EA1C4();
      v24 = v37;
      v25 = v43;
      sub_1E5A2C024();
      v27 = v38;
      v26 = v39;
    }

    else
    {
      v50 = 5;
      sub_1E58EA170();
      v24 = v40;
      v25 = v43;
      sub_1E5A2C024();
      v27 = v41;
      v26 = v42;
    }

    (*(v27 + 8))(v24, v26);
  }

  else if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_1E58EA2C0();
      v22 = v43;
      sub_1E5A2C024();
      (*(v30 + 8))(v14, v31);
      return (*v21)(v20, v22);
    }

    v47 = 2;
    sub_1E58EA26C();
    v25 = v43;
    sub_1E5A2C024();
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v45 = 0;
    sub_1E58EA314();
    v25 = v43;
    sub_1E5A2C024();
    (*(v29 + 8))(v17, v15);
  }

  return (*v21)(v20, v25);
}

unint64_t sub_1E58EA11C()
{
  result = qword_1ECFFC4F8;
  if (!qword_1ECFFC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC4F8);
  }

  return result;
}

unint64_t sub_1E58EA170()
{
  result = qword_1ECFFC500;
  if (!qword_1ECFFC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC500);
  }

  return result;
}

unint64_t sub_1E58EA1C4()
{
  result = qword_1ECFFC508;
  if (!qword_1ECFFC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC508);
  }

  return result;
}

unint64_t sub_1E58EA218()
{
  result = qword_1ECFFC510;
  if (!qword_1ECFFC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC510);
  }

  return result;
}

unint64_t sub_1E58EA26C()
{
  result = qword_1ECFFC518;
  if (!qword_1ECFFC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC518);
  }

  return result;
}

unint64_t sub_1E58EA2C0()
{
  result = qword_1ECFFC520;
  if (!qword_1ECFFC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC520);
  }

  return result;
}

unint64_t sub_1E58EA314()
{
  result = qword_1ECFFC528;
  if (!qword_1ECFFC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC528);
  }

  return result;
}

uint64_t sub_1E58EA380@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E58EA5D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E58EA3D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E58EA5D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5B0, &qword_1E5A31140);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5B8, &qword_1E5A31148);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5C0, &qword_1E5A31150);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5C8, &qword_1E5A31158);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5D0, &qword_1E5A31160);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5D8, &qword_1E5A31168);
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5E0, &unk_1E5A31170);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E58EA11C();
  v21 = v56;
  sub_1E5A2C214();
  if (!v21)
  {
    v22 = v15;
    v39 = v13;
    v40 = v12;
    v23 = v53;
    v24 = v54;
    v25 = v55;
    v56 = v17;
    v26 = sub_1E5A2C004();
    v27 = (2 * *(v26 + 16)) | 1;
    v58 = v26;
    v59 = v26 + 32;
    v60 = 0;
    v61 = v27;
    v28 = sub_1E58BBF34();
    v29 = v19;
    if (v28 != 6 && v60 == v61 >> 1)
    {
      v17 = v28;
      if (v28 > 2u)
      {
        if (v28 != 3)
        {
          v37 = v56;
          if (v28 == 4)
          {
            v62 = 4;
            sub_1E58EA1C4();
            sub_1E5A2BF44();
            (*(v49 + 8))(v25, v48);
          }

          else
          {
            v62 = 5;
            sub_1E58EA170();
            v38 = v52;
            sub_1E5A2BF44();
            (*(v50 + 8))(v38, v51);
          }

          (*(v37 + 8))(v29, v16);
          goto LABEL_21;
        }

        v62 = 3;
        sub_1E58EA218();
        sub_1E5A2BF44();
        v30 = v56;
        (*(v47 + 8))(v24, v44);
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v62 = 1;
          sub_1E58EA2C0();
          v23 = v40;
          sub_1E5A2BF44();
          v30 = v56;
          v32 = v42;
          v31 = v43;
        }

        else
        {
          v62 = 2;
          sub_1E58EA26C();
          sub_1E5A2BF44();
          v30 = v56;
          v32 = v45;
          v31 = v46;
        }

        (*(v32 + 8))(v23, v31);
      }

      else
      {
        v62 = 0;
        sub_1E58EA314();
        sub_1E5A2BF44();
        (*(v41 + 8))(v22, v39);
        v30 = v56;
      }

      (*(v30 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v57);
      return v17;
    }

    v33 = sub_1E5A2BE84();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v35 = &type metadata for WorkoutPlanSizeClass;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v56 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v17;
}

unint64_t sub_1E58EADC4()
{
  result = qword_1ECFFC530;
  if (!qword_1ECFFC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC530);
  }

  return result;
}

unint64_t sub_1E58EAE9C()
{
  result = qword_1ECFFC538;
  if (!qword_1ECFFC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC538);
  }

  return result;
}

unint64_t sub_1E58EAEF4()
{
  result = qword_1ECFFC540;
  if (!qword_1ECFFC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC540);
  }

  return result;
}

unint64_t sub_1E58EAF4C()
{
  result = qword_1ECFFC548;
  if (!qword_1ECFFC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC548);
  }

  return result;
}

unint64_t sub_1E58EAFA4()
{
  result = qword_1ECFFC550;
  if (!qword_1ECFFC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC550);
  }

  return result;
}

unint64_t sub_1E58EAFFC()
{
  result = qword_1ECFFC558;
  if (!qword_1ECFFC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC558);
  }

  return result;
}

unint64_t sub_1E58EB054()
{
  result = qword_1ECFFC560;
  if (!qword_1ECFFC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC560);
  }

  return result;
}

unint64_t sub_1E58EB0AC()
{
  result = qword_1ECFFC568;
  if (!qword_1ECFFC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC568);
  }

  return result;
}

unint64_t sub_1E58EB104()
{
  result = qword_1ECFFC570;
  if (!qword_1ECFFC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC570);
  }

  return result;
}

unint64_t sub_1E58EB15C()
{
  result = qword_1ECFFC578;
  if (!qword_1ECFFC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC578);
  }

  return result;
}

unint64_t sub_1E58EB1B4()
{
  result = qword_1ECFFC580;
  if (!qword_1ECFFC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC580);
  }

  return result;
}

unint64_t sub_1E58EB20C()
{
  result = qword_1ECFFC588;
  if (!qword_1ECFFC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC588);
  }

  return result;
}

unint64_t sub_1E58EB264()
{
  result = qword_1ECFFC590;
  if (!qword_1ECFFC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC590);
  }

  return result;
}

unint64_t sub_1E58EB2BC()
{
  result = qword_1ECFFC598;
  if (!qword_1ECFFC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC598);
  }

  return result;
}

unint64_t sub_1E58EB314()
{
  result = qword_1ECFFC5A0;
  if (!qword_1ECFFC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5A0);
  }

  return result;
}

unint64_t sub_1E58EB36C()
{
  result = qword_1ECFFC5A8;
  if (!qword_1ECFFC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5A8);
  }

  return result;
}

uint64_t PlanCompletionEnvironment.makeSessionSummaryDismissedStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlanCompletionEnvironment.makeSignificantTimeChangeStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PlanCompletionEnvironment.presentPlanCompletionIfNeeded.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlanCompletionEnvironment.init(makeSessionSummaryDismissedStream:makeSignificantTimeChangeStream:presentPlanCompletionIfNeeded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
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

uint64_t sub_1E58EB47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E58EB4C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t PersonalizedWorkoutPlanCandidateTreatment.areaIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.treatmentIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall PersonalizedWorkoutPlanCandidateTreatment.init(areaIdentifier:bucket:treatmentIdentifier:)(FitnessWorkoutPlan::PersonalizedWorkoutPlanCandidateTreatment *__return_ptr retstr, Swift::String areaIdentifier, Swift::Int bucket, Swift::String treatmentIdentifier)
{
  retstr->areaIdentifier = areaIdentifier;
  retstr->bucket = bucket;
  retstr->treatmentIdentifier = treatmentIdentifier;
}

unint64_t sub_1E58EB598()
{
  v1 = 0x74656B637562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961657261;
  }
}

uint64_t sub_1E58EB600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58EC124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58EB628(uint64_t a1)
{
  v2 = sub_1E58EB864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EB664(uint64_t a1)
{
  v2 = sub_1E58EB864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5E8, &qword_1E5A311E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EB864();
  sub_1E5A2C224();
  v13 = 0;
  v8 = v10[3];
  sub_1E5A2C064();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_1E5A2C094();
  v11 = 2;
  sub_1E5A2C064();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E58EB864()
{
  result = qword_1ECFFC5F0;
  if (!qword_1ECFFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC5F0);
  }

  return result;
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC5F8, &qword_1E5A311E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EB864();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_1E5A2BF94();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_1E5A2BFC4();
  v21 = 2;
  v13 = sub_1E5A2BF94();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static PersonalizedWorkoutPlanCandidateTreatment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E5A2C114();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v2);

  return sub_1E5A2BB74();
}

uint64_t PersonalizedWorkoutPlanCandidateTreatment.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v1);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58EBCCC()
{
  v1 = *(v0 + 16);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v1);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58EBD4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v2);

  return sub_1E5A2BB74();
}

uint64_t sub_1E58EBDB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](v2);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E58EBE34()
{
  result = qword_1ECFFC600;
  if (!qword_1ECFFC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC600);
  }

  return result;
}

uint64_t sub_1E58EBE88(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1E5A2C114();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E58EBF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E58EBFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E58EC020()
{
  result = qword_1ECFFC608;
  if (!qword_1ECFFC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC608);
  }

  return result;
}

unint64_t sub_1E58EC078()
{
  result = qword_1ECFFC610;
  if (!qword_1ECFFC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC610);
  }

  return result;
}

unint64_t sub_1E58EC0D0()
{
  result = qword_1ECFFC618;
  if (!qword_1ECFFC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC618);
  }

  return result;
}

uint64_t sub_1E58EC124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961657261 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A46430 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E58EC260()
{
  if (*v0)
  {
    return 0x6570704177656976;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1E58EC2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001E5A46450 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E58EC394(uint64_t a1)
{
  v2 = sub_1E58EC820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC3D0(uint64_t a1)
{
  v2 = sub_1E58EC820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58EC40C(uint64_t a1)
{
  v2 = sub_1E58EC8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC448(uint64_t a1)
{
  v2 = sub_1E58EC8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58EC484(uint64_t a1)
{
  v2 = sub_1E58EC874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58EC4C0(uint64_t a1)
{
  v2 = sub_1E58EC874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionAction.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t PlanCompletionAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC620, &qword_1E5A31420);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC628, &qword_1E5A31428);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC630, &qword_1E5A31430);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EC820();
  sub_1E5A2C224();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E58EC874();
    v14 = v18;
    sub_1E5A2C024();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E58EC8C8();
    sub_1E5A2C024();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E58EC820()
{
  result = qword_1EE2CFD38;
  if (!qword_1EE2CFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD38);
  }

  return result;
}

unint64_t sub_1E58EC874()
{
  result = qword_1EE2CFD20;
  if (!qword_1EE2CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD20);
  }

  return result;
}

unint64_t sub_1E58EC8C8()
{
  result = qword_1EE2CFD50;
  if (!qword_1EE2CFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD50);
  }

  return result;
}

uint64_t PlanCompletionAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC638, &qword_1E5A31438);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC640, &qword_1E5A31440);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC648, &unk_1E5A31448);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58EC820();
  v12 = v31;
  sub_1E5A2C214();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E5A2C004();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E58BC5B4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E5A2BE84();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
      *v22 = &type metadata for PlanCompletionAction;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E58EC874();
        sub_1E5A2BF44();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E58EC8C8();
        sub_1E5A2BF44();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1E58ECDDC()
{
  result = qword_1ECFFC650;
  if (!qword_1ECFFC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC650);
  }

  return result;
}

unint64_t sub_1E58ECEA4()
{
  result = qword_1ECFFC658;
  if (!qword_1ECFFC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC658);
  }

  return result;
}

unint64_t sub_1E58ECEFC()
{
  result = qword_1EE2CFD40;
  if (!qword_1EE2CFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD40);
  }

  return result;
}

unint64_t sub_1E58ECF54()
{
  result = qword_1EE2CFD48;
  if (!qword_1EE2CFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD48);
  }

  return result;
}

unint64_t sub_1E58ECFAC()
{
  result = qword_1EE2CFD10;
  if (!qword_1EE2CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD10);
  }

  return result;
}

unint64_t sub_1E58ED004()
{
  result = qword_1EE2CFD18;
  if (!qword_1EE2CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD18);
  }

  return result;
}

unint64_t sub_1E58ED05C()
{
  result = qword_1EE2CFD28;
  if (!qword_1EE2CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD28);
  }

  return result;
}

unint64_t sub_1E58ED0B4()
{
  result = qword_1EE2CFD30;
  if (!qword_1EE2CFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD30);
  }

  return result;
}

uint64_t ThemeSelectionView.init(store:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E58ED198(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EditItem(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = *&v11[*(v6 + 40)];

  sub_1E58F00BC(v11, type metadata accessor for EditItem);
  if (v14)
  {
    if (*(v14 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](3);
      sub_1E5A2BB74();
      v15 = sub_1E5A2C204();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = *(v14 + 48);
        while (1)
        {
          v20 = v19 + 24 * v17;
          if (*(v20 + 16) >= 3u)
          {
            v21 = *v20 == v12 && *(v20 + 8) == v13;
            if (v21 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v8, v4);
  sub_1E58F00BC(v8, type metadata accessor for EditItem);
  v22 = type metadata accessor for WorkoutPlanScheduledItem(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22) != 1)
  {
    v23 = *(v4 + 1);

    sub_1E58F00BC(v4, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v23 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](3);
      sub_1E5A2BB74();
      v24 = sub_1E5A2C204();
      v25 = -1 << *(v23 + 32);
      v26 = v24 & ~v25;
      if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        v28 = *(v23 + 48);
        while (1)
        {
          v29 = v28 + 24 * v26;
          if (*(v29 + 16) >= 3u)
          {
            v30 = *v29 == v12 && *(v29 + 8) == v13;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v26 = (v26 + 1) & v27;
          if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58C3420(v4);
  return 0;
}

uint64_t sub_1E58ED564(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v43 - v3;
  v4 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v15 = &v12[*(v4 + 36)];
  v17 = *v15;
  v16 = v15[1];

  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  if (!v16)
  {
LABEL_8:
    swift_getKeyPath();

    sub_1E5A2B934();

    v25 = *&v9[*(v4 + 32)];

    result = sub_1E58F00BC(v9, type metadata accessor for EditItem);
    if (!v25)
    {
      swift_getKeyPath();

      sub_1E5A2B934();

      v27 = v43;
      sub_1E58EFFE4(v6, v43);
      sub_1E58F00BC(v6, type metadata accessor for EditItem);
      v28 = type metadata accessor for WorkoutPlanScheduledItem(0);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        sub_1E58C3420(v27);
        return 0;
      }

      v25 = *(v27 + 8);

      result = sub_1E58F00BC(v27, type metadata accessor for WorkoutPlanScheduledItem);
    }

    v29 = 0;
    v30 = v25 + 56;
    v31 = 1 << *(v25 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v25 + 56);
    do
    {
      if (!v33)
      {
        while (1)
        {
          v34 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            return result;
          }

          if (v34 >= ((v31 + 63) >> 6))
          {
            break;
          }

          v33 = *(v30 + 8 * v34);
          ++v29;
          if (v33)
          {
            v29 = v34;
            goto LABEL_21;
          }
        }

        v24 = 0;
        if (!*(v25 + 16))
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v34 = v29;
LABEL_21:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
    }

    while (*(*(v25 + 48) + 24 * (v35 | (v34 << 6)) + 16) != 3);
    v24 = 1;
    if (!*(v25 + 16))
    {
      goto LABEL_36;
    }

LABEL_25:
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](3);
    sub_1E5A2BB74();
    v36 = sub_1E5A2C204();
    v37 = -1 << *(v25 + 32);
    v38 = v36 & ~v37;
    if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
LABEL_36:

      return v24;
    }

    v39 = ~v37;
    v40 = *(v25 + 48);
    while (1)
    {
      v41 = v40 + 24 * v38;
      if (*(v41 + 16) >= 3u)
      {
        v42 = *v41 == v13 && *(v41 + 8) == v14;
        if (v42 || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }
      }

      v38 = (v38 + 1) & v39;
      if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = v44;
  if (!*(v44 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_1E58EF508(v17, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + (v19 << 6) + 48);

  v23 = sub_1E59E8F3C(v13, v14, v22);

  if (v23)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1E58EDA74(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v11[0] = v9[0];
  v11[1] = v9[1];
  v11[2] = v9[2];
  v11[3] = v10;

  sub_1E58F011C(v11);

  v3 = sub_1E58F0D98(v10, a1);

  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1E5A206A8(v3[2], 0);
  v6 = sub_1E5A2297C(v9, (v5 + 4), v4, v3);
  v7 = *&v9[0];

  sub_1E58D26C0(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v9[0] = v5;
  sub_1E58F0170(v9);

  return *&v9[0];
}

void sub_1E58EDBDC(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ceil(*(a1 + 16) / 3.0);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9;
    *v5 = xmmword_1E5A317E0;
    (*(v3 + 104))(v5, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    sub_1E59E9100(v8, v10);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1E58EDD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *v2;
  v10 = v2[1];
  v19 = *v2;
  v20 = v10;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  if (sub_1E58ED564(&v14))
  {
    result = sub_1E5A2ABA4();
    v12 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  else
  {
    v19 = v9;
    v20 = v10;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    if (sub_1E58ED198(&v14))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v13 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v13;
    *a2 = result;
  }

  return result;
}

uint64_t ThemeSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC660, &qword_1E5A317F8);
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC668, &qword_1E5A31800);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - v6;
  v8 = type metadata accessor for EditItem(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v12 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = &v11[*(v9 + 44)];
  v16 = *v14;
  v15 = v14[1];

  sub_1E58F00BC(v11, type metadata accessor for EditItem);
  if (!v15)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v17 = v36[0];
  if (!*(v36[0] + 16))
  {

    goto LABEL_6;
  }

  v18 = sub_1E58EF508(v16, v15);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v28 = 1;
    v27 = v33;
    return (*(v5 + 56))(v27, v28, 1, v4);
  }

  v21 = *(*(v17 + 56) + (v18 << 6) + 48);

  v30[3] = v30;
  MEMORY[0x1EEE9AC00](v22);
  v30[-4] = v13;
  v30[-3] = v12;
  v30[-2] = v21;
  sub_1E58EF238(v36);
  v30[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC678, &unk_1E5A31850);
  sub_1E58EF58C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC688, &qword_1E5A31860);
  v24 = sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860, MEMORY[0x1E697BE60]);
  v34 = v23;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E58EF618();
  v25 = v32;
  sub_1E5A2B134();
  (*(v31 + 8))(v3, v25);
  v36[0] = sub_1E5A2B414();
  *&v7[*(v4 + 36)] = sub_1E5A2B634();
  v26 = v33;
  sub_1E58F0054(v7, v33, &qword_1ECFFC668, &qword_1E5A31800);
  v27 = v26;
  v28 = 0;
  return (*(v5 + 56))(v27, v28, 1, v4);
}

uint64_t sub_1E58EE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_1E5A2AAC4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC688, &qword_1E5A31860);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  sub_1E5A2AD64();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6C8, &qword_1E5A31928);
  sub_1E58CD164(&qword_1ECFFC6D0, &qword_1ECFFC6C8, &qword_1E5A31928, MEMORY[0x1E697D7A0]);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860, MEMORY[0x1E697BE60]);
  sub_1E5A2B234();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E58EE5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1E58EDA74(a3, v5);
  sub_1E58EDBDC(v6);

  sub_1E5A2A934();
  sub_1E58EFAFC();
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6D8, &unk_1E5A31930);
  sub_1E58EFB54();
  return sub_1E5A2B824();
}

uint64_t sub_1E58EE70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E58EDA74(a3, a2);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC710, &unk_1E5A31970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC718, &unk_1E5A342A0);
  sub_1E58CD164(&qword_1ECFFC720, &qword_1ECFFC710, &unk_1E5A31970, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  sub_1E58EFC30();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E58EE894(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = a1[1];
  v21 = *a1;
  v22 = v9;
  v23 = *(a1 + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a1 + 8);
  v14 = a2;
  v15 = a3;
  v16 = &v21;

  sub_1E58EFD5C(&v21, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  sub_1E58EFDB8();
  sub_1E5A2B574();
  v17 = a2;
  v18 = a3;
  v19[0] = v21;
  v19[1] = v22;
  v20 = v23;
  v8[*(v6 + 36)] = (sub_1E58ED564(v19) & 1) == 0;
  sub_1E58EFC30();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E589C034(v8);
}

uint64_t sub_1E58EEA50(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = *a3;
  v4 = *(a3 + 2);
  v5 = *(a3 + 3);
  v6 = *(a3 + 8);
  v7 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v12[40] = 1;
  *v9 = 7;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  v9[32] = 1;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = v11;
  *(v9 + 21) = v4;
  *(v9 + 22) = v5;
  *(v9 + 46) = v6;
  swift_storeEnumTagMultiPayload();
  sub_1E58EFD5C(a3, v12);
  sub_1E5A2B954();
  return sub_1E58F00BC(v9, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E58EEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v54 = a2;
  v53 = a1;
  v59 = a4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC778, &unk_1E5A319D0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = v49 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC750, &unk_1E5A31990) - 8;
  MEMORY[0x1EEE9AC00](v55);
  v60 = v49 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC740, &unk_1E5A342B0) - 8;
  MEMORY[0x1EEE9AC00](v56);
  v52 = v49 - v9;
  v64 = a1;
  v65 = v5;
  v10 = a3[1];
  v61 = *a3;
  v62 = v10;
  v63 = *(a3 + 8);
  sub_1E58EDD84(&v61, &v66);
  v49[2] = v68;
  v49[1] = __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
  v51 = a3;
  v11 = *(a3 + 3);
  *&v61 = *(a3 + 2);
  *(&v61 + 1) = v11;
  sub_1E58D1C80();

  v12 = sub_1E5A2AFD4();
  v14 = v13;
  v16 = v15;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v17 = sub_1E5A2AFA4();
  v19 = v18;
  LOBYTE(v5) = v20;

  sub_1E58B3C9C(v12, v14, v16 & 1);

  v21 = sub_1E5A2AF84();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1E58B3C9C(v17, v19, v5 & 1);

  *&v61 = v21;
  *(&v61 + 1) = v23;
  LOBYTE(v62) = v25 & 1;
  *(&v62 + 1) = v27;
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v28 = v50;
  sub_1E5A2B274();
  sub_1E58B3C9C(v21, v23, v25 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v66);
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v29 = v60;
  (*(v57 + 32))(v60, v28, v58);
  v30 = (v29 + *(v55 + 44));
  v31 = v71;
  v30[4] = v70;
  v30[5] = v31;
  v30[6] = v72;
  v32 = v67;
  *v30 = v66;
  v30[1] = v32;
  v33 = v69;
  v30[2] = v68;
  v30[3] = v33;
  v58 = sub_1E5A2B7E4();
  v35 = v34;
  v36 = v52;
  v37 = &v52[*(v56 + 44)];
  sub_1E58EF12C(v53, v54, v51, &v61);
  v38 = v61;
  LOBYTE(v21) = BYTE8(v61);
  v39 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1E5A2A9B4();
  v42 = *(*(v41 - 8) + 104);
  v42(v39, v40, v41);
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v37 = v38;
  v37[8] = v21;
  v43 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v43 = v58;
  v43[1] = v35;
  v44 = v36;
  sub_1E58F0054(v60, v36, &qword_1ECFFC750, &unk_1E5A31990);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC728, &unk_1E5A31980);
  v46 = v59;
  v47 = v59 + *(v45 + 36);
  v42(v47, v40, v41);
  *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v44, v46, &qword_1ECFFC740, &unk_1E5A342B0);
}

uint64_t sub_1E58EF12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v11 = a2;
  v5 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v5;
  v9 = *(a3 + 32);
  if (sub_1E58ED198(v8))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED026498;
    LOBYTE(v11) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED0264A8;
    LOBYTE(v11) = 1;
  }

  result = sub_1E5A2AA74();
  v7 = BYTE8(v8[0]);
  *a4 = *&v8[0];
  *(a4 + 8) = v7;
  return result;
}

void sub_1E58EF238(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  LOBYTE(v4) = v10 & 1;
  v13 = sub_1E5A2ADC4();
  sub_1E5A2A424();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 128) = v24;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = v15;
  *(a1 + 168) = v16;
  *(a1 + 176) = v17;
  *(a1 + 184) = 0;
}

unint64_t sub_1E58EF458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  MEMORY[0x1E6932DE0](a2);
  MEMORY[0x1E6932DE0](a3);
  MEMORY[0x1E6932DE0](a4);
  v8 = sub_1E5A2C204();

  return sub_1E58EF938(a1, a2, a3, a4, v8);
}

unint64_t sub_1E58EF508(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v4 = sub_1E5A2C204();

  return sub_1E58EF9BC(a1, a2, v4);
}

unint64_t sub_1E58EF58C()
{
  result = qword_1ECFFC680;
  if (!qword_1ECFFC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC670, &unk_1E5A37DC0);
    sub_1E58B1D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC680);
  }

  return result;
}

unint64_t sub_1E58EF618()
{
  result = qword_1ECFFC698;
  if (!qword_1ECFFC698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC660, &qword_1E5A317F8);
    sub_1E58EF58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC688, &qword_1E5A31860);
    sub_1E58CD164(&qword_1ECFFC690, &qword_1ECFFC688, &qword_1E5A31860, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC698);
  }

  return result;
}

unint64_t sub_1E58EF754()
{
  result = qword_1ECFFC6A0;
  if (!qword_1ECFFC6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6A8, &qword_1E5A318F8);
    sub_1E58EF7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6A0);
  }

  return result;
}

unint64_t sub_1E58EF7D8()
{
  result = qword_1ECFFC6B0;
  if (!qword_1ECFFC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC668, &qword_1E5A31800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC660, &qword_1E5A317F8);
    sub_1E58EF618();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6B0);
  }

  return result;
}

unint64_t sub_1E58EF8CC(uint64_t a1)
{
  v1 = a1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  v2 = sub_1E5A2C204();

  return sub_1E58EFA74(v1, v2);
}

unint64_t sub_1E58EF938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = (*(v5 + 48) + 32 * result);
      v11 = *v10;
      v12 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      if (v11 == a1 && v12 == a2 && v14 == a3 && v13 == a4)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E58EF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E5A2C114())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E58EFA74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E58EFAFC()
{
  result = qword_1EE2CFAF0;
  if (!qword_1EE2CFAF0)
  {
    sub_1E5A2AB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFAF0);
  }

  return result;
}

unint64_t sub_1E58EFB54()
{
  result = qword_1ECFFC6E0;
  if (!qword_1ECFFC6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6D8, &unk_1E5A31930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58EFC30();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6E0);
  }

  return result;
}

unint64_t sub_1E58EFC30()
{
  result = qword_1ECFFC6F0;
  if (!qword_1ECFFC6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC6E8, &unk_1E5A34260);
    sub_1E58CD164(&qword_1ECFFC6F8, &qword_1ECFFC700, &qword_1E5A31940, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC6F0);
  }

  return result;
}

unint64_t sub_1E58EFCE8()
{
  result = qword_1ECFFC708;
  if (!qword_1ECFFC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC708);
  }

  return result;
}

unint64_t sub_1E58EFDB8()
{
  result = qword_1ECFFC730;
  if (!qword_1ECFFC730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC728, &unk_1E5A31980);
    sub_1E58EFE70();
    sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC730);
  }

  return result;
}

unint64_t sub_1E58EFE70()
{
  result = qword_1ECFFC738;
  if (!qword_1ECFFC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC740, &unk_1E5A342B0);
    sub_1E58EFF28();
    sub_1E58CD164(&qword_1ECFFC758, &qword_1ECFFC760, &qword_1E5A342C0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC738);
  }

  return result;
}

unint64_t sub_1E58EFF28()
{
  result = qword_1ECFFC748;
  if (!qword_1ECFFC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC750, &unk_1E5A31990);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC748);
  }

  return result;
}

uint64_t sub_1E58EFFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58F0054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E58F00BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E58F0170(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A2267C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1E5A2C0E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 12);
          if (v13 >= *(v12 + 2))
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *(v12 + 5);
          v18 = *(v12 - 8);
          *(v12 + 1) = *(v12 - 24);
          *(v12 + 2) = v18;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 1) = v16;
          *v12 = v17;
          *(v12 + 2) = v13;
          v12 -= 40;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E5A2BC24();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1E58F02CC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E58F02CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E5A21290(v7);
      v7 = result;
    }

    v88 = (v7 + 16);
    v89 = *(v7 + 16);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = (v7 + 16 * v89);
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1E58F089C((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_114;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_115;
        }

        *v90 = v91;
        v90[1] = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_116;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v95 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 32);
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 32);
      v12 = v8 + 2;
      v13 = (v10 + 72);
      while (v5 != v12)
      {
        v14 = *v13;
        v15 = v13[10];
        v13 += 10;
        ++v12;
        if (v9 < v11 == v15 >= v14)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v16 = 40 * v6 - 16;
        v17 = 40 * v8 + 32;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v28 + v17);
            v21 = *(v28 + v17 - 32);
            v22 = (v28 + v16);
            v23 = *(v20 - 2);
            v24 = *(v20 - 1);
            v25 = *v20;
            v26 = v22[1];
            v27 = *(v22 - 1);
            *(v20 - 2) = *(v22 - 3);
            *(v20 - 1) = v27;
            *v20 = v26;
            *(v22 - 3) = v21;
            *(v22 - 1) = v23;
            *v22 = v24;
            *(v22 + 2) = v25;
          }

          ++v19;
          v16 -= 40;
          v17 += 40;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v41 = *(v7 + 16);
    v40 = *(v7 + 24);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1E58E6258((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v42;
    v43 = v7 + 32;
    v44 = (v7 + 32 + 16 * v41);
    *v44 = v8;
    v44[1] = v6;
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v7 + 32);
          v47 = *(v7 + 40);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = (v7 + 16 * v42);
          v64 = *v62;
          v63 = v62[1];
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = (v43 + 16 * v45);
          v70 = *v68;
          v69 = v68[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v72 = (v7 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = (v43 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v83 = (v43 + 16 * (v45 - 1));
        v84 = *v83;
        v85 = (v43 + 16 * v45);
        v86 = v85[1];
        sub_1E58F089C((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v97);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v45 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *(v7 + 16);
        if (v45 >= v87)
        {
          goto LABEL_101;
        }

        v42 = v87 - 1;
        result = memmove((v43 + 16 * v45), v85 + 2, 16 * (v87 - 1 - v45));
        *(v7 + 16) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_3;
        }
      }

      v50 = v43 + 16 * v42;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = (v7 + 16 * v42);
      v59 = *v57;
      v58 = v57[1];
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = (v43 + 16 * v45);
        v81 = *v79;
        v80 = v79[1];
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v95;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 72);
    if (v34 >= *(v33 + 32))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v33 + 40);
    v36 = *(v33 + 16);
    *(v33 + 40) = *v33;
    v37 = *(v33 + 56);
    v38 = *(v33 + 64);
    *(v33 + 56) = v36;
    *(v33 + 72) = *(v33 + 32);
    *v33 = v35;
    *(v33 + 16) = v37;
    *(v33 + 24) = v38;
    *(v33 + 32) = v34;
    v33 -= 40;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E58F089C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 8) < *(v4 + 8))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v13 - 2) < *(v6 - 2))
      {
        v23 = v6 - 40;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 40, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 40;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 24);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 40;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

unint64_t *sub_1E58F0AC8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E58F0B64(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_1E58F0B64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 40 * v26);
      v15 = *v14;
      v16 = v14[1];
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v17 = sub_1E5A2C204();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E0514(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E58F0D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v40 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v42 = a2 + 56;
    v38 = v5;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (*(a2 + 16))
      {
        v20 = *(v5 + 48);
        v39 = v19;
        v21 = (v20 + 40 * v19);
        v3 = *v21;
        v22 = v21[1];
        v23 = v21[3];
        sub_1E5A2C1B4();

        v41 = v23;

        sub_1E5A2BB74();
        v24 = sub_1E5A2C204();
        v25 = a2;
        v26 = -1 << *(a2 + 32);
        v9 = v24 & ~v26;
        if ((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(v25 + 48) + 16 * v9);
            v29 = *v28 == v3 && v28[1] == v22;
            if (v29 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          v30 = __OFADD__(v40++, 1);
          a2 = v25;
          v5 = v38;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_1E59E0514(v37, v36, v40, v5);

            return v31;
          }
        }

        else
        {
LABEL_6:

          a2 = v25;
          v5 = v38;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v34 = sub_1E58F0AC8(v33, v8, v5, a2);

  MEMORY[0x1E6933430](v33, -1, -1);

  return v34;
}

uint64_t sub_1E58F117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58F1200(uint64_t a1)
{
  v2 = sub_1E58F13C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F123C(uint64_t a1)
{
  v2 = sub_1E58F13C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlanCompletionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC790, &qword_1E5A31A10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F13C4();
  sub_1E5A2C224();
  v10 = v7;
  sub_1E58F1418();
  sub_1E5A2C0B4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E58F13C4()
{
  result = qword_1ECFFC798;
  if (!qword_1ECFFC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC798);
  }

  return result;
}

unint64_t sub_1E58F1418()
{
  result = qword_1ECFFC7A0;
  if (!qword_1ECFFC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7A0);
  }

  return result;
}

uint64_t PlanCompletionState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7A8, &qword_1E5A31A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F13C4();
  sub_1E5A2C214();
  if (!v2)
  {
    sub_1E58F15D8();
    sub_1E5A2BFE4();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E58F15D8()
{
  result = qword_1ECFFC7B0;
  if (!qword_1ECFFC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7B0);
  }

  return result;
}

unint64_t sub_1E58F1688()
{
  result = qword_1ECFFC7B8;
  if (!qword_1ECFFC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7B8);
  }

  return result;
}

unint64_t sub_1E58F16E0()
{
  result = qword_1ECFFC7C0;
  if (!qword_1ECFFC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7C0);
  }

  return result;
}

unint64_t sub_1E58F1738()
{
  result = qword_1ECFFC7C8;
  if (!qword_1ECFFC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7C8);
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.filterProperties.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanScheduledItem(uint64_t a1)
{
  result = qword_1ECFFC830;
  if (!qword_1ECFFC830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.identifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanScheduledItem(0) + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WorkoutPlanScheduledItem.modalityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlanScheduledItem(0) + 28));

  return v1;
}

uint64_t WorkoutPlanScheduledItem.modalityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WorkoutPlanScheduledItem(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WorkoutPlanScheduledItem.init(identifier:modalityIdentifier:duration:filterProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v13 = *(v12 + 24);
  v14 = sub_1E5A29E74();
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  v16 = &a6[*(v12 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  *a6 = a4;
  *(a6 + 1) = a5;
  return result;
}

unint64_t sub_1E58F1A9C()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1E58F1B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58F2F5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58F1B5C(uint64_t a1)
{
  v2 = sub_1E58F1F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F1B98(uint64_t a1)
{
  v2 = sub_1E58F1F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s18FitnessWorkoutPlan0bC13ScheduledItemV10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanScheduledItem(0) + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E58F1C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E5A29E74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t WorkoutPlanScheduledItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7D0, &unk_1E5A31BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F1F34();
  sub_1E5A2C224();
  v12 = 0;
  sub_1E5A2C094();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    sub_1E58F2438(&qword_1ECFFC7E8, sub_1E58F1F88, MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
    type metadata accessor for WorkoutPlanScheduledItem(0);
    v10[14] = 2;
    sub_1E5A29E74();
    sub_1E58F2B48(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    v10[13] = 3;
    sub_1E5A2C064();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E58F1F34()
{
  result = qword_1ECFFC7D8;
  if (!qword_1ECFFC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7D8);
  }

  return result;
}

unint64_t sub_1E58F1F88()
{
  result = qword_1ECFFC7F0;
  if (!qword_1ECFFC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC7F0);
  }

  return result;
}

uint64_t WorkoutPlanScheduledItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_1E5A29E74();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC800, &qword_1E5A31C00);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v21 - v5;
  v7 = type metadata accessor for WorkoutPlanScheduledItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F1F34();
  v10 = v29;
  sub_1E5A2C214();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v4;
  v29 = a1;
  v13 = v26;
  v12 = v27;
  v34 = 0;
  *v9 = sub_1E5A2BFC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
  v33 = 1;
  sub_1E58F2438(&qword_1ECFFC808, sub_1E58F24B0, MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  v9[1] = v30;
  v32 = 2;
  sub_1E58F2B48(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1E5A2BFE4();
  v23 = v7;
  (*(v25 + 32))(v9 + *(v7 + 24), v11, v12);
  v31 = 3;
  v14 = v28;
  v15 = sub_1E5A2BF94();
  v22 = v16;
  v17 = v15;
  (*(v13 + 8))(v6, v14);
  v18 = v22;
  v19 = (v9 + *(v23 + 28));
  *v19 = v17;
  v19[1] = v18;
  sub_1E58F2504(v9, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1E58F2568(v9);
}

uint64_t sub_1E58F2438(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58F24B0()
{
  result = qword_1ECFFC810;
  if (!qword_1ECFFC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC810);
  }

  return result;
}

uint64_t sub_1E58F2504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58F2568(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutPlanScheduledItem.hash(into:)(__int128 *a1)
{
  MEMORY[0x1E6932DE0](*v1);
  sub_1E58B87B8(a1, v1[1]);
  type metadata accessor for WorkoutPlanScheduledItem(0);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanScheduledItem.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v0);
  sub_1E58B87B8(v2, v0[1]);
  type metadata accessor for WorkoutPlanScheduledItem(0);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F279C(uint64_t a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v1);
  sub_1E58B87B8(v3, v1[1]);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E58F2868(__int128 *a1, uint64_t a2)
{
  MEMORY[0x1E6932DE0](*v2);
  sub_1E58B87B8(a1, v2[1]);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();

  return sub_1E5A2BB74();
}

uint64_t sub_1E58F2930(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](*v2);
  sub_1E58B87B8(v4, v2[1]);
  sub_1E5A29E74();
  sub_1E58F2B48(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC13ScheduledItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_1E58B4B48(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t sub_1E58F2B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E58F2BB8(uint64_t a1)
{
  sub_1E58F2C54(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E58F2C54(uint64_t a1)
{
  if (!qword_1ECFFC840)
  {
    sub_1E58F2CB0();
    v1 = sub_1E5A2BD24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFC840);
    }
  }
}

unint64_t sub_1E58F2CB0()
{
  result = qword_1ECFFC848;
  if (!qword_1ECFFC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanScheduledItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanScheduledItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58F2E58()
{
  result = qword_1ECFFC850;
  if (!qword_1ECFFC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC850);
  }

  return result;
}

unint64_t sub_1E58F2EB0()
{
  result = qword_1ECFFC858;
  if (!qword_1ECFFC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC858);
  }

  return result;
}

unint64_t sub_1E58F2F08()
{
  result = qword_1ECFFC860;
  if (!qword_1ECFFC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC860);
  }

  return result;
}

uint64_t sub_1E58F2F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A46470 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t WorkoutPlanCreationFilterItem.identifier.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 40);
  if ((v3 - 2) < 6 || v3 == 0)
  {
    sub_1E58BACE0(v2, v1, *(v0 + 16), *(v0 + 24), *(v0 + 32), v3);
    return v2;
  }

  else if (v3 == 1)
  {
  }

  else
  {
    v6 = *v0;
    v7 = 0x7053747369747261;
    v8 = 0x576D6172676F7270;
    if (v6 != 6)
    {
      v8 = 0x6967736B6E616874;
    }

    v9 = 0x7261655977656ELL;
    if (v6 != 4)
    {
      v9 = 0x6564697270;
    }

    if (*v0 <= 5u)
    {
      v8 = v9;
    }

    v10 = 0x796164696C6F68;
    if (v6 != 2)
    {
      v10 = 0x77654E72616E756CLL;
    }

    if (*v0)
    {
      v7 = 0x6565776F6C6C6168;
    }

    if (*v0 > 1u)
    {
      v7 = v10;
    }

    if (*v0 <= 3u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  return v1;
}

uint64_t sub_1E58F3278(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E58F33AC(uint64_t a1)
{
  v2 = sub_1E58F4754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F33E8(uint64_t a1)
{
  v2 = sub_1E58F4754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F342C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58F6E78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58F3460(uint64_t a1)
{
  v2 = sub_1E58F43B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F349C(uint64_t a1)
{
  v2 = sub_1E58F43B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F34D8(uint64_t a1)
{
  v2 = sub_1E58F46AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3514(uint64_t a1)
{
  v2 = sub_1E58F46AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3550(uint64_t a1)
{
  v2 = sub_1E58F4658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F358C(uint64_t a1)
{
  v2 = sub_1E58F4658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F35C8(uint64_t a1)
{
  v2 = sub_1E58F4604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3604(uint64_t a1)
{
  v2 = sub_1E58F4604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3640(uint64_t a1)
{
  v2 = sub_1E58F45B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F367C(uint64_t a1)
{
  v2 = sub_1E58F45B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F36B8(uint64_t a1)
{
  v2 = sub_1E58F455C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F36F4(uint64_t a1)
{
  v2 = sub_1E58F455C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F3730(uint64_t a1)
{
  v2 = sub_1E58F4508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F376C(uint64_t a1)
{
  v2 = sub_1E58F4508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F37A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E58F3838(uint64_t a1)
{
  v2 = sub_1E58F44B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F3874(uint64_t a1)
{
  v2 = sub_1E58F44B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F38B0(uint64_t a1)
{
  v2 = sub_1E58F440C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F38EC(uint64_t a1)
{
  v2 = sub_1E58F440C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationFilterItem.encode(to:)(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC868, &qword_1E5A31E50);
  v35[5] = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v35 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC870, &qword_1E5A31E58);
  v35[4] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v35 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC878, &qword_1E5A31E60);
  v35[3] = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC880, &qword_1E5A31E68);
  v35[2] = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v35 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC888, &qword_1E5A31E70);
  v35[1] = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v35 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC890, &qword_1E5A31E78);
  v39 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v35 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC898, &qword_1E5A31E80);
  v37 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v35 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8A0, &qword_1E5A31E88);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8A8, &qword_1E5A31E90);
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC8B0, &qword_1E5A31E98);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v16 = v35 - v15;
  v17 = v1[1];
  v58 = *v1;
  v55 = v17;
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[4];
  v21 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F43B8();
  v57 = v16;
  sub_1E5A2C224();
  if (v21 <= 3)
  {
    v28 = v51;
    v27 = v52;
    v29 = v53;
    v30 = v54;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        LOBYTE(v60) = 2;
        sub_1E58F4658();
        v31 = v59;
        v32 = v57;
        sub_1E5A2C024();
        sub_1E5A2C064();
        (*(v37 + 8))(v28, v27);
        return (*(v56 + 8))(v32, v31);
      }

      LOBYTE(v60) = 3;
      sub_1E58F4604();
      v24 = v59;
      v22 = v57;
      sub_1E5A2C024();
      sub_1E5A2C064();
      (*(v39 + 8))(v29, v30);
    }

    else if (v21)
    {
      LOBYTE(v60) = 1;
      sub_1E58F46AC();
      v24 = v59;
      v22 = v57;
      sub_1E5A2C024();
      v60 = v58;
      v61 = v55;
      v62 = v18;
      v63 = v19;
      v64 = v20;
      sub_1E58F4700();
      v34 = v38;
      sub_1E5A2C0B4();
      (*(v40 + 8))(v11, v34);
    }

    else
    {
      LOBYTE(v60) = 0;
      sub_1E58F4754();
      v24 = v59;
      v22 = v57;
      sub_1E5A2C024();
      sub_1E5A2C064();
      (*(v36 + 8))(v14, v12);
    }
  }

  else
  {
    if (v21 <= 5)
    {
      v22 = v57;
      if (v21 == 4)
      {
        LOBYTE(v60) = 4;
        sub_1E58F45B0();
        v23 = v41;
        v24 = v59;
        sub_1E5A2C024();
        v25 = v42;
        sub_1E5A2C064();
        v26 = &v63;
      }

      else
      {
        LOBYTE(v60) = 5;
        sub_1E58F455C();
        v23 = v43;
        v24 = v59;
        sub_1E5A2C024();
        v25 = v44;
        sub_1E5A2C064();
        v26 = &v64;
      }
    }

    else
    {
      v22 = v57;
      if (v21 == 6)
      {
        LOBYTE(v60) = 6;
        sub_1E58F4508();
        v23 = v45;
        v24 = v59;
        sub_1E5A2C024();
        v25 = v46;
        sub_1E5A2C064();
        v26 = &v65;
      }

      else if (v21 == 7)
      {
        LOBYTE(v60) = 7;
        sub_1E58F44B4();
        v23 = v47;
        v24 = v59;
        sub_1E5A2C024();
        v25 = v48;
        sub_1E5A2C064();
        v26 = &v66;
      }

      else
      {
        LOBYTE(v60) = 8;
        sub_1E58F440C();
        v23 = v49;
        v24 = v59;
        sub_1E5A2C024();
        LOBYTE(v60) = v58;
        sub_1E58F4460();
        v25 = v50;
        sub_1E5A2C0B4();
        v26 = &v67;
      }
    }

    (*(*(v26 - 32) + 8))(v23, v25);
  }

  return (*(v56 + 8))(v22, v24);
}

unint64_t sub_1E58F43B8()
{
  result = qword_1ECFFC8B8;
  if (!qword_1ECFFC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8B8);
  }

  return result;
}

unint64_t sub_1E58F440C()
{
  result = qword_1ECFFC8C0;
  if (!qword_1ECFFC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8C0);
  }

  return result;
}

unint64_t sub_1E58F4460()
{
  result = qword_1ECFFC8C8;
  if (!qword_1ECFFC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8C8);
  }

  return result;
}

unint64_t sub_1E58F44B4()
{
  result = qword_1ECFFC8D0;
  if (!qword_1ECFFC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8D0);
  }

  return result;
}

unint64_t sub_1E58F4508()
{
  result = qword_1ECFFC8D8;
  if (!qword_1ECFFC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8D8);
  }

  return result;
}

unint64_t sub_1E58F455C()
{
  result = qword_1ECFFC8E0;
  if (!qword_1ECFFC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8E0);
  }

  return result;
}

unint64_t sub_1E58F45B0()
{
  result = qword_1ECFFC8E8;
  if (!qword_1ECFFC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8E8);
  }

  return result;
}

unint64_t sub_1E58F4604()
{
  result = qword_1ECFFC8F0;
  if (!qword_1ECFFC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8F0);
  }

  return result;
}

unint64_t sub_1E58F4658()
{
  result = qword_1ECFFC8F8;
  if (!qword_1ECFFC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC8F8);
  }

  return result;
}

unint64_t sub_1E58F46AC()
{
  result = qword_1ECFFC900;
  if (!qword_1ECFFC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC900);
  }

  return result;
}

unint64_t sub_1E58F4700()
{
  result = qword_1ECFFC908;
  if (!qword_1ECFFC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC908);
  }

  return result;
}

unint64_t sub_1E58F4754()
{
  result = qword_1ECFFC910;
  if (!qword_1ECFFC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC910);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilterItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC918, &qword_1E5A31EA0);
  v4 = *(v3 - 8);
  v117 = v3;
  v118 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v97[-v5];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC920, &qword_1E5A31EA8);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v120 = &v97[-v6];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC928, &qword_1E5A31EB0);
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v125 = &v97[-v7];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC930, &qword_1E5A31EB8);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v124 = &v97[-v8];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC938, &qword_1E5A31EC0);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v123 = &v97[-v9];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC940, &qword_1E5A31EC8);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v119 = &v97[-v10];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC948, &qword_1E5A31ED0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v122 = &v97[-v11];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC950, &qword_1E5A31ED8);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v13 = &v97[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC958, &qword_1E5A31EE0);
  v102 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC960, &unk_1E5A31EE8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v97[-v19];
  v21 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E58F43B8();
  v22 = v136;
  sub_1E5A2C214();
  v136 = v22;
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v16;
  v99 = v14;
  v100 = v13;
  v24 = v122;
  v25 = v123;
  v27 = v124;
  v26 = v125;
  v101 = v18;
  v28 = v126;
  v29 = sub_1E5A2C004();
  v30 = (2 * *(v29 + 16)) | 1;
  v132 = v29;
  v133 = v29 + 32;
  v134 = 0;
  v135 = v30;
  v31 = sub_1E58BC5AC();
  if (v31 == 9 || v134 != v135 >> 1)
  {
    v40 = sub_1E5A2BE84();
    v41 = v20;
    v42 = swift_allocError();
    v43 = v17;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v45 = &type metadata for WorkoutPlanCreationFilterItem;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v40 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v40);
    v136 = v42;
    swift_willThrow();
    (*(v101 + 8))(v41, v43);
    goto LABEL_12;
  }

  v98 = v31;
  if (v31 <= 3u)
  {
    if (v31 > 1u)
    {
      if (v31 == 2)
      {
        LOBYTE(v128) = 2;
        sub_1E58F4658();
        v57 = v136;
        sub_1E5A2BF44();
        v136 = v57;
        if (!v57)
        {
          v58 = v106;
          v59 = sub_1E5A2BF94();
          v136 = 0;
          v84 = v59;
          v86 = v85;
          (*(v105 + 8))(v24, v58);
          (*(v101 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v87 = v86;
LABEL_50:
          v88 = v84;
          v89 = 0;
          v90 = 0uLL;
          v46 = v127;
          v73 = v28;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v128) = 3;
        sub_1E58F4604();
        v60 = v119;
        v72 = v136;
        sub_1E5A2BF44();
        v136 = v72;
        if (!v72)
        {
          v62 = v108;
          v63 = sub_1E5A2BF94();
          v136 = 0;
          v65 = &v136;
          goto LABEL_25;
        }
      }
    }

    else if (v31)
    {
      LOBYTE(v128) = 1;
      sub_1E58F46AC();
      v69 = v100;
      v70 = v136;
      sub_1E5A2BF44();
      v71 = v17;
      v136 = v70;
      if (!v70)
      {
        v73 = v28;
        v32 = v20;
        v33 = v71;
        sub_1E58F56BC();
        v79 = v104;
        v80 = v136;
        sub_1E5A2BFE4();
        v81 = v101;
        v136 = v80;
        if (!v80)
        {
          (*(v103 + 8))(v69, v79);
          (*(v81 + 8))(v32, v33);
          swift_unknownObjectRelease();
          v88 = v128;
          v87 = v129;
          v89 = v130;
          v90 = v131;
LABEL_48:
          v46 = v127;
LABEL_51:
          *v73 = v88;
          *(v73 + 8) = v87;
          *(v73 + 16) = v89;
          *(v73 + 24) = v90;
          *(v73 + 40) = v98;
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        (*(v103 + 8))(v69, v79);
        goto LABEL_42;
      }
    }

    else
    {
      LOBYTE(v128) = 0;
      sub_1E58F4754();
      v48 = v23;
      v49 = v136;
      sub_1E5A2BF44();
      v136 = v49;
      if (!v49)
      {
        v50 = v99;
        v51 = sub_1E5A2BF94();
        v136 = 0;
        v92 = v51;
        v52 = v48;
        v53 = v20;
        v54 = v17;
        v56 = v55;
        (*(v102 + 8))(v52, v50);
        (*(v101 + 8))(v53, v54);
LABEL_45:
        swift_unknownObjectRelease();
        v87 = v56;
        v73 = v28;
        v88 = v92;
        v89 = 0;
LABEL_47:
        v90 = 0uLL;
        goto LABEL_48;
      }
    }

LABEL_29:
    (*(v101 + 8))(v20, v17);
    goto LABEL_12;
  }

  if (v31 <= 5u)
  {
    if (v31 == 4)
    {
      LOBYTE(v128) = 4;
      sub_1E58F45B0();
      v60 = v25;
      v61 = v136;
      sub_1E5A2BF44();
      v136 = v61;
      if (!v61)
      {
        v62 = v110;
        v63 = sub_1E5A2BF94();
        v136 = 0;
        v65 = &v137;
LABEL_25:
        v66 = *(*(v65 - 32) + 8);
        v84 = v63;
        v67 = v60;
LABEL_49:
        v94 = v20;
        v95 = v17;
        v96 = v64;
        v66(v67, v62);
        (*(v101 + 8))(v94, v95);
        swift_unknownObjectRelease();
        v87 = v96;
        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(v128) = 5;
      sub_1E58F455C();
      v76 = v136;
      sub_1E5A2BF44();
      v136 = v76;
      if (!v76)
      {
        v62 = v111;
        v77 = sub_1E5A2BF94();
        v136 = 0;
        v66 = *(v112 + 8);
        v84 = v77;
        v67 = v27;
        goto LABEL_49;
      }
    }

    goto LABEL_29;
  }

  v32 = v20;
  v33 = v17;
  if (v31 == 6)
  {
    LOBYTE(v128) = 6;
    sub_1E58F4508();
    v35 = v32;
    v68 = v136;
    sub_1E5A2BF44();
    v136 = v68;
    if (!v68)
    {
      v37 = v113;
      v78 = sub_1E5A2BF94();
      v136 = 0;
      v91 = *(v114 + 8);
      v92 = v78;
      v93 = v26;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v31 != 7)
  {
    v73 = v28;
    LOBYTE(v128) = 8;
    sub_1E58F440C();
    v74 = v121;
    v75 = v136;
    sub_1E5A2BF44();
    v136 = v75;
    if (v75)
    {
      (*(v101 + 8))(v32, v33);
      goto LABEL_12;
    }

    sub_1E58F5668();
    v82 = v117;
    v83 = v136;
    sub_1E5A2BFE4();
    v81 = v101;
    v136 = v83;
    if (!v83)
    {
      (*(v118 + 8))(v74, v82);
      (*(v81 + 8))(v32, v33);
      swift_unknownObjectRelease();
      v87 = 0;
      v89 = 0;
      v88 = v128;
      goto LABEL_47;
    }

    (*(v118 + 8))(v74, v82);
LABEL_42:
    (*(v81 + 8))(v32, v33);
    goto LABEL_12;
  }

  LOBYTE(v128) = 7;
  sub_1E58F44B4();
  v34 = v120;
  v35 = v32;
  v36 = v136;
  sub_1E5A2BF44();
  v136 = v36;
  if (!v36)
  {
    v37 = v115;
    v38 = sub_1E5A2BF94();
    v136 = 0;
    v91 = *(v116 + 8);
    v92 = v38;
    v93 = v34;
LABEL_44:
    v56 = v39;
    v91(v93, v37);
    (*(v101 + 8))(v32, v33);
    goto LABEL_45;
  }

LABEL_27:
  (*(v101 + 8))(v35, v33);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v46 = v127;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t sub_1E58F5668()
{
  result = qword_1ECFFC968;
  if (!qword_1ECFFC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC968);
  }

  return result;
}

unint64_t sub_1E58F56BC()
{
  result = qword_1ECFFC970;
  if (!qword_1ECFFC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC970);
  }

  return result;
}

uint64_t WorkoutPlanCreationFilterItem.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3 <= 3)
  {
    if (*(v1 + 40) > 1u)
    {
      if (v3 == 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      if (*(v1 + 40))
      {
        MEMORY[0x1E6932DE0](1);
        return WorkoutPlanDuration.hash(into:)(a1);
      }

      v4 = 0;
    }

    goto LABEL_20;
  }

  if (*(v1 + 40) <= 5u)
  {
    if (v3 == 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

LABEL_20:
    MEMORY[0x1E6932DE0](v4);

    return sub_1E5A2BB74();
  }

  if (v3 == 6)
  {
    v4 = 6;
    goto LABEL_20;
  }

  if (v3 == 7)
  {
    v4 = 7;
    goto LABEL_20;
  }

  MEMORY[0x1E6932DE0](8);
  sub_1E5A2BB74();
}

uint64_t WorkoutPlanCreationFilterItem.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)(v5);
  return sub_1E5A2C204();
}

uint64_t sub_1E58F5A2C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)(v5);
  return sub_1E5A2C204();
}

uint64_t sub_1E58F5A8C(uint64_t a1)
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v39[0] = *a1;
  v39[1] = v2;
  v39[2] = v4;
  v39[3] = v5;
  v39[4] = v6;
  v40 = v7;
  v41 = v9;
  v42 = v8;
  v43 = v11;
  v44 = v10;
  v45 = v12;
  v46 = v13;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v13 == 2)
        {
          v22 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_1E58BACE0(v3, v2, v11, v10, v12, 2u);
            v15 = v3;
            v16 = v2;
            v17 = v4;
            v18 = v5;
            v19 = v22;
            v20 = 2;
            goto LABEL_42;
          }

          v36 = sub_1E5A2C114();
          sub_1E58BACE0(v9, v8, v11, v10, v12, 2u);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = v5;
          v33 = v22;
          v34 = 2;
          goto LABEL_54;
        }
      }

      else if (v13 == 3)
      {
        v26 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_1E58BACE0(v3, v2, v11, v10, v12, 3u);
          v15 = v3;
          v16 = v2;
          v17 = v4;
          v18 = v5;
          v19 = v26;
          v20 = 3;
          goto LABEL_42;
        }

        v36 = sub_1E5A2C114();
        sub_1E58BACE0(v9, v8, v11, v10, v12, 3u);
        v29 = v3;
        v30 = v2;
        v31 = v4;
        v32 = v5;
        v33 = v26;
        v34 = 3;
        goto LABEL_54;
      }
    }

    else
    {
      if (!v7)
      {
        if (!v13)
        {
          v21 = v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_1E58BACE0(v3, v2, v11, v10, v12, 0);
            v15 = v3;
            v16 = v2;
            v17 = v4;
            v18 = v5;
            v19 = v21;
            v20 = 0;
            goto LABEL_42;
          }

          v36 = sub_1E5A2C114();
          sub_1E58BACE0(v9, v8, v11, v10, v12, 0);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = v5;
          v33 = v21;
          v34 = 0;
LABEL_54:
          sub_1E58BACE0(v29, v30, v31, v32, v33, v34);
          sub_1E58F7160(v39);
          return v36 & 1;
        }

        goto LABEL_43;
      }

      if (v13 == 1)
      {
        v38[0] = v3;
        v38[1] = v2;
        v38[2] = v4;
        v38[3] = v5;
        v38[4] = v6;
        v37[0] = v9;
        v37[1] = v8;
        v37[2] = v11;
        v37[3] = v10;
        v37[4] = v12;
        v35 = v6;
        v25 = _s18FitnessWorkoutPlan0bC8DurationV2eeoiySbAC_ACtFZ_0(v38, v37);
        sub_1E58BACE0(v9, v8, v11, v10, v12, 1u);
        sub_1E58BACE0(v3, v2, v4, v5, v35, 1u);
        goto LABEL_37;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (v13 == 4)
      {
        v23 = v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_1E58BACE0(v3, v2, v11, v10, v12, 4u);
          v15 = v3;
          v16 = v2;
          v17 = v4;
          v18 = v5;
          v19 = v23;
          v20 = 4;
          goto LABEL_42;
        }

        v36 = sub_1E5A2C114();
        sub_1E58BACE0(v9, v8, v11, v10, v12, 4u);
        v29 = v3;
        v30 = v2;
        v31 = v4;
        v32 = v5;
        v33 = v23;
        v34 = 4;
        goto LABEL_54;
      }
    }

    else if (v13 == 5)
    {
      v27 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 5u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v27;
        v20 = 5;
        goto LABEL_42;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 5u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v27;
      v34 = 5;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 6)
  {
    if (v13 == 6)
    {
      v24 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 6u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v24;
        v20 = 6;
        goto LABEL_42;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 6u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v24;
      v34 = 6;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 7)
  {
    if (v13 == 7)
    {
      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1E58BACE0(v3, v2, v11, v10, v12, 7u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v14;
        v20 = 7;
LABEL_42:
        sub_1E58BACE0(v15, v16, v17, v18, v19, v20);
        sub_1E58F7160(v39);
        v25 = 1;
        return v25 & 1;
      }

      v36 = sub_1E5A2C114();
      sub_1E58BACE0(v9, v8, v11, v10, v12, 7u);
      v29 = v3;
      v30 = v2;
      v31 = v4;
      v32 = v5;
      v33 = v14;
      v34 = 7;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v13 != 8)
  {
LABEL_44:
    sub_1E58BACE0(v9, v8, v11, v10, v12, v13);
    sub_1E58F7160(v39);
    v25 = 0;
    return v25 & 1;
  }

  v25 = sub_1E59E1534(v3, v9);
LABEL_37:
  sub_1E58F7160(v39);
  return v25 & 1;
}

unint64_t sub_1E58F6114()
{
  result = qword_1ECFFC978;
  if (!qword_1ECFFC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC978);
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

uint64_t sub_1E58F6188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58F61C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_1E58F6210(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPlanCreationFilterItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCreationFilterItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E58F642C()
{
  result = qword_1ECFFC980;
  if (!qword_1ECFFC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC980);
  }

  return result;
}

unint64_t sub_1E58F6484()
{
  result = qword_1ECFFC988;
  if (!qword_1ECFFC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC988);
  }

  return result;
}

unint64_t sub_1E58F64DC()
{
  result = qword_1ECFFC990;
  if (!qword_1ECFFC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC990);
  }

  return result;
}

unint64_t sub_1E58F6534()
{
  result = qword_1ECFFC998;
  if (!qword_1ECFFC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC998);
  }

  return result;
}

unint64_t sub_1E58F658C()
{
  result = qword_1ECFFC9A0;
  if (!qword_1ECFFC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9A0);
  }

  return result;
}

unint64_t sub_1E58F65E4()
{
  result = qword_1ECFFC9A8;
  if (!qword_1ECFFC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9A8);
  }

  return result;
}

unint64_t sub_1E58F663C()
{
  result = qword_1ECFFC9B0;
  if (!qword_1ECFFC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9B0);
  }

  return result;
}

unint64_t sub_1E58F6694()
{
  result = qword_1ECFFC9B8;
  if (!qword_1ECFFC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9B8);
  }

  return result;
}

unint64_t sub_1E58F66EC()
{
  result = qword_1ECFFC9C0;
  if (!qword_1ECFFC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9C0);
  }

  return result;
}

unint64_t sub_1E58F6744()
{
  result = qword_1ECFFC9C8;
  if (!qword_1ECFFC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9C8);
  }

  return result;
}

unint64_t sub_1E58F679C()
{
  result = qword_1ECFFC9D0;
  if (!qword_1ECFFC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9D0);
  }

  return result;
}

unint64_t sub_1E58F67F4()
{
  result = qword_1ECFFC9D8;
  if (!qword_1ECFFC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9D8);
  }

  return result;
}

unint64_t sub_1E58F684C()
{
  result = qword_1ECFFC9E0;
  if (!qword_1ECFFC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9E0);
  }

  return result;
}

unint64_t sub_1E58F68A4()
{
  result = qword_1ECFFC9E8;
  if (!qword_1ECFFC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9E8);
  }

  return result;
}

unint64_t sub_1E58F68FC()
{
  result = qword_1ECFFC9F0;
  if (!qword_1ECFFC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9F0);
  }

  return result;
}

unint64_t sub_1E58F6954()
{
  result = qword_1ECFFC9F8;
  if (!qword_1ECFFC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFC9F8);
  }

  return result;
}

unint64_t sub_1E58F69AC()
{
  result = qword_1ECFFCA00;
  if (!qword_1ECFFCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA00);
  }

  return result;
}

unint64_t sub_1E58F6A04()
{
  result = qword_1ECFFCA08;
  if (!qword_1ECFFCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA08);
  }

  return result;
}

unint64_t sub_1E58F6A5C()
{
  result = qword_1ECFFCA10;
  if (!qword_1ECFFCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA10);
  }

  return result;
}

unint64_t sub_1E58F6AB4()
{
  result = qword_1ECFFCA18;
  if (!qword_1ECFFCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA18);
  }

  return result;
}

unint64_t sub_1E58F6B0C()
{
  result = qword_1ECFFCA20;
  if (!qword_1ECFFCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA20);
  }

  return result;
}

unint64_t sub_1E58F6B64()
{
  result = qword_1ECFFCA28;
  if (!qword_1ECFFCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA28);
  }

  return result;
}

unint64_t sub_1E58F6BBC()
{
  result = qword_1ECFFCA30;
  if (!qword_1ECFFCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA30);
  }

  return result;
}

unint64_t sub_1E58F6C14()
{
  result = qword_1ECFFCA38;
  if (!qword_1ECFFCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA38);
  }

  return result;
}

unint64_t sub_1E58F6C6C()
{
  result = qword_1ECFFCA40;
  if (!qword_1ECFFCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA40);
  }

  return result;
}

unint64_t sub_1E58F6CC4()
{
  result = qword_1ECFFCA48;
  if (!qword_1ECFFCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA48);
  }

  return result;
}

unint64_t sub_1E58F6D1C()
{
  result = qword_1ECFFCA50;
  if (!qword_1ECFFCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA50);
  }

  return result;
}

unint64_t sub_1E58F6D74()
{
  result = qword_1ECFFCA58;
  if (!qword_1ECFFCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA58);
  }

  return result;
}

unint64_t sub_1E58F6DCC()
{
  result = qword_1ECFFCA60;
  if (!qword_1ECFFCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA60);
  }

  return result;
}

unint64_t sub_1E58F6E24()
{
  result = qword_1ECFFCA68;
  if (!qword_1ECFFCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA68);
  }

  return result;
}

uint64_t sub_1E58F6E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1E58F7160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB620, &qword_1E5A2CDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static NSBundle.workoutPlans.getter()
{
  type metadata accessor for WorkoutPlansBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

unint64_t sub_1E58F7268()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4164694477656976;
  }
}

uint64_t sub_1E58F72DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58F7A84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58F7304(uint64_t a1)
{
  v2 = sub_1E58F78D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F7340(uint64_t a1)
{
  v2 = sub_1E58F78D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F737C(uint64_t a1)
{
  v2 = sub_1E58F797C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F73B8(uint64_t a1)
{
  v2 = sub_1E58F797C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F73F4(uint64_t a1)
{
  v2 = sub_1E58F7928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F7430(uint64_t a1)
{
  v2 = sub_1E58F7928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58F746C(uint64_t a1)
{
  v2 = sub_1E58F79D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F74A8(uint64_t a1)
{
  v2 = sub_1E58F79D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t CreateWorkoutPlanButtonAction.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA70, &qword_1E5A32C80);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA78, &qword_1E5A32C88);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA80, &qword_1E5A32C90);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCA88, &qword_1E5A32C98);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F78D4();
  sub_1E5A2C224();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E58F797C();
      sub_1E5A2C024();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E58F7928();
      v16 = v22;
      sub_1E5A2C024();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E58F79D0();
    sub_1E5A2C024();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E58F78D4()
{
  result = qword_1ECFFCA90;
  if (!qword_1ECFFCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA90);
  }

  return result;
}

unint64_t sub_1E58F7928()
{
  result = qword_1ECFFCA98;
  if (!qword_1ECFFCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCA98);
  }

  return result;
}

unint64_t sub_1E58F797C()
{
  result = qword_1ECFFCAA0;
  if (!qword_1ECFFCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAA0);
  }

  return result;
}

unint64_t sub_1E58F79D0()
{
  result = qword_1ECFFCAA8;
  if (!qword_1ECFFCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAA8);
  }

  return result;
}

uint64_t sub_1E58F7A3C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E58F7BB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E58F7A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4164694477656976 && a2 == 0xED00007261657070;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A464C0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A46410 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E58F7BB4(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB00, &qword_1E5A330E8);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB08, &qword_1E5A330F0);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB10, &qword_1E5A330F8);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB18, &unk_1E5A33100);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E58F78D4();
  v13 = v34;
  sub_1E5A2C214();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5A2C004();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E58BC5A8();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E58F797C();
          sub_1E5A2BF44();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E58F7928();
        v24 = v11;
        sub_1E5A2BF44();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E58F79D0();
        v24 = v11;
        sub_1E5A2BF44();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5A2BE84();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v22 = &type metadata for CreateWorkoutPlanButtonAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E58F8128()
{
  result = qword_1ECFFCAB0;
  if (!qword_1ECFFCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAB0);
  }

  return result;
}

unint64_t sub_1E58F81D0()
{
  result = qword_1ECFFCAB8;
  if (!qword_1ECFFCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAB8);
  }

  return result;
}

unint64_t sub_1E58F8228()
{
  result = qword_1ECFFCAC0;
  if (!qword_1ECFFCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAC0);
  }

  return result;
}

unint64_t sub_1E58F8280()
{
  result = qword_1ECFFCAC8;
  if (!qword_1ECFFCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAC8);
  }

  return result;
}

unint64_t sub_1E58F82D8()
{
  result = qword_1ECFFCAD0;
  if (!qword_1ECFFCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAD0);
  }

  return result;
}

unint64_t sub_1E58F8330()
{
  result = qword_1ECFFCAD8;
  if (!qword_1ECFFCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAD8);
  }

  return result;
}

unint64_t sub_1E58F8388()
{
  result = qword_1ECFFCAE0;
  if (!qword_1ECFFCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAE0);
  }

  return result;
}

unint64_t sub_1E58F83E0()
{
  result = qword_1ECFFCAE8;
  if (!qword_1ECFFCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAE8);
  }

  return result;
}

unint64_t sub_1E58F8438()
{
  result = qword_1ECFFCAF0;
  if (!qword_1ECFFCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAF0);
  }

  return result;
}

unint64_t sub_1E58F8490()
{
  result = qword_1ECFFCAF8;
  if (!qword_1ECFFCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCAF8);
  }

  return result;
}

uint64_t WorkoutPlan.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A29E34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlan.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutPlan(uint64_t a1)
{
  result = qword_1ECFFCBC8;
  if (!qword_1ECFFCBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlan.items.getter()
{
  type metadata accessor for WorkoutPlan(0);
}

__n128 WorkoutPlan.startDate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlan(0) + 28));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

uint64_t WorkoutPlan.templateIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 36);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlan.init(dateCreated:identifier:items:startDate:state:templateIdentifier:variation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v21 = *a4;
  v13 = *(a4 + 2);
  v14 = sub_1E5A29E34();
  (*(*(v14 - 8) + 32))(a8, a1, v14);
  v15 = type metadata accessor for WorkoutPlan(0);
  v16 = v15[5];
  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 32);
  v18(a8 + v16, a2, v17);
  *(a8 + v15[6]) = a3;
  v19 = a8 + v15[7];
  *v19 = v21;
  *(v19 + 16) = v13;
  *(a8 + v15[8]) = a5;
  result = (v18)(a8 + v15[9], a6, v17);
  *(a8 + v15[10]) = a7;
  return result;
}

unint64_t sub_1E58F8890()
{
  v1 = *v0;
  v2 = 0x6165724365746164;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x6F69746169726176;
  }

  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x736D657469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E58F897C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58FA9C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58F89A4(uint64_t a1)
{
  v2 = sub_1E58F8D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58F89E0(uint64_t a1)
{
  v2 = sub_1E58F8D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB20, &qword_1E5A33110);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F8D90();
  sub_1E5A2C224();
  LOBYTE(v13) = 0;
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCB30, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutPlan(0);
    LOBYTE(v13) = 1;
    sub_1E5A29E74();
    sub_1E58FA6AC(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    *&v13 = *(v3 + v9[6]);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F8DE4();
    sub_1E5A2C0B4();
    v10 = (v3 + v9[7]);
    v11 = *(v10 + 2);
    v13 = *v10;
    v14 = v11;
    v15 = 3;
    sub_1E58C2AE8();
    sub_1E5A2C0B4();
    LOBYTE(v13) = *(v3 + v9[8]);
    v15 = 4;
    sub_1E58F8F48();
    sub_1E5A2C0B4();
    LOBYTE(v13) = 5;
    sub_1E5A2C0B4();
    LOBYTE(v13) = *(v3 + v9[10]);
    v15 = 6;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E58F8D90()
{
  result = qword_1ECFFCB28;
  if (!qword_1ECFFCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB28);
  }

  return result;
}

unint64_t sub_1E58F8DE4()
{
  result = qword_1ECFFCB40;
  if (!qword_1ECFFCB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F8EA0();
    sub_1E58F97CC(&qword_1ECFFCB50, sub_1E58F8EF4, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB40);
  }

  return result;
}

unint64_t sub_1E58F8EA0()
{
  result = qword_1ECFFCB48;
  if (!qword_1ECFFCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB48);
  }

  return result;
}

unint64_t sub_1E58F8EF4()
{
  result = qword_1ECFFCB60;
  if (!qword_1ECFFCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB60);
  }

  return result;
}

unint64_t sub_1E58F8F48()
{
  result = qword_1ECFFCB68;
  if (!qword_1ECFFCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB68);
  }

  return result;
}

unint64_t sub_1E58F8F9C()
{
  result = qword_1ECFFCB70;
  if (!qword_1ECFFCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB70);
  }

  return result;
}

uint64_t WorkoutPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E5A29E74();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1E5A29E34();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB78, &qword_1E5A33128);
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v33 - v10;
  v12 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58F8D90();
  v44 = v11;
  v15 = v46;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v12;
  v16 = v14;
  v17 = v39;
  v18 = v40;
  v19 = v41;
  LOBYTE(v47) = 0;
  sub_1E58FA6AC(&qword_1ECFFCB80, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1E5A2BFE4();
  v20 = v8;
  v21 = *(v17 + 32);
  v22 = v16;
  v23 = v43;
  v43 = v20;
  v21(v16, v23);
  LOBYTE(v47) = 1;
  v24 = v7;
  v25 = v19;
  v26 = sub_1E58FA6AC(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1E5A2BFE4();
  v35 = v26;
  v27 = v24;
  v28 = *(v18 + 32);
  v28(v22 + v46[5], v27, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCB38, &qword_1E5A33118);
  v49 = 2;
  sub_1E58F96BC();
  v36 = 0;
  sub_1E5A2BFE4();
  v34 = v28;
  v29 = v46;
  *(v22 + v46[6]) = v47;
  v49 = 3;
  sub_1E58C75CC();
  sub_1E5A2BFE4();
  v30 = v48;
  v31 = v22 + v29[7];
  *v31 = v47;
  *(v31 + 16) = v30;
  v49 = 4;
  sub_1E58F9898();
  sub_1E5A2BFE4();
  *(v22 + v29[8]) = v47;
  LOBYTE(v47) = 5;
  sub_1E5A2BFE4();
  v34(v22 + v29[9], v38, v25);
  v49 = 6;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  (*(v42 + 8))(v44, v45);
  *(v22 + v29[10]) = v47;
  sub_1E58FAC24(v22, v37, type metadata accessor for WorkoutPlan);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58FAC8C(v22, type metadata accessor for WorkoutPlan);
}

unint64_t sub_1E58F96BC()
{
  result = qword_1ECFFCB88;
  if (!qword_1ECFFCB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB38, &qword_1E5A33118);
    sub_1E58F9778();
    sub_1E58F97CC(&qword_1ECFFCB98, sub_1E58F9844, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB88);
  }

  return result;
}

unint64_t sub_1E58F9778()
{
  result = qword_1ECFFCB90;
  if (!qword_1ECFFCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCB90);
  }

  return result;
}

uint64_t sub_1E58F97CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCB58, &qword_1E5A33120);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E58F9844()
{
  result = qword_1ECFFCBA0;
  if (!qword_1ECFFCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBA0);
  }

  return result;
}

unint64_t sub_1E58F9898()
{
  result = qword_1ECFFCBA8;
  if (!qword_1ECFFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBA8);
  }

  return result;
}

unint64_t sub_1E58F98EC()
{
  result = qword_1ECFFCBB0;
  if (!qword_1ECFFCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFCBB0);
  }

  return result;
}

uint64_t WorkoutPlan.hash(into:)(uint64_t a1)
{
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E5A2BA44();
  v3 = type metadata accessor for WorkoutPlan(0);
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(a1, *(v1 + v3[6]));
  v4 = (v1 + v3[7]);
  v5 = v4[1];
  v6 = v4[2];
  MEMORY[0x1E6932DE0](*v4);
  MEMORY[0x1E6932DE0](v5);
  MEMORY[0x1E6932DE0](v6);
  MEMORY[0x1E6932DE0](*(v1 + v3[8]));
  sub_1E5A2BA44();
  return MEMORY[0x1E6932DE0](*(v1 + v3[10]));
}

uint64_t WorkoutPlan.hashValue.getter()
{
  sub_1E5A2C1B4();
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E5A2BA44();
  v1 = type metadata accessor for WorkoutPlan(0);
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(v6, *(v0 + v1[6]));
  v2 = (v0 + v1[7]);
  v3 = v2[1];
  v4 = v2[2];
  MEMORY[0x1E6932DE0](*v2);
  MEMORY[0x1E6932DE0](v3);
  MEMORY[0x1E6932DE0](v4);
  MEMORY[0x1E6932DE0](*(v0 + v1[8]));
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v0 + v1[10]));
  return sub_1E5A2C204();
}

uint64_t sub_1E58F9C60(uint64_t a1, int *a2)
{
  sub_1E5A2C1B4();
  sub_1E5A29E34();
  sub_1E58FA6AC(&qword_1ECFFCBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E5A2BA44();
  sub_1E5A29E74();
  sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E58FA21C(v8, *(v2 + a2[6]));
  v4 = (v2 + a2[7]);
  v5 = v4[1];
  v6 = v4[2];
  MEMORY[0x1E6932DE0](*v4);
  MEMORY[0x1E6932DE0](v5);
  MEMORY[0x1E6932DE0](v6);
  MEMORY[0x1E6932DE0](*(v2 + a2[8]));
  sub_1E5A2BA44();
  MEMORY[0x1E6932DE0](*(v2 + a2[10]));
  return sub_1E5A2C204();
}

uint64_t sub_1E58F9DDC(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = a2;

  v12 = 0;
  v13 = 0;
  v30 = v10;
  v31 = v6;
  while (v9)
  {
LABEL_10:
    v35 = v9;
    v15 = (*(v33 + 48) + 32 * (__clz(__rbit64(v9)) | (v13 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = v15[3];

    if (!v20)
    {
LABEL_15:

      return MEMORY[0x1E6932DE0](v12);
    }

    v34 = v12;
    v21 = *(v32 + 48);
    v37[2] = *(v32 + 32);
    v37[3] = v21;
    v38 = *(v32 + 64);
    v22 = *(v32 + 16);
    v37[0] = *v32;
    v37[1] = v22;
    v23 = v20;
    MEMORY[0x1E6932DE0](v17);
    MEMORY[0x1E6932DE0](v16);
    MEMORY[0x1E6932DE0](v18);
    MEMORY[0x1E6932DE0](v19);
    MEMORY[0x1E6932DE0](*(v23 + 16));
    v36 = v23;
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v36 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v26 = *(v28 + 72);
      do
      {
        sub_1E58FAC24(v25, v5, type metadata accessor for WorkoutPlanScheduledItem);
        MEMORY[0x1E6932DE0](*v5);
        sub_1E58B87B8(v37, v5[1]);
        sub_1E5A29E74();
        sub_1E58FA6AC(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1E5A2BA44();
        sub_1E5A2BB74();
        sub_1E58FAC8C(v5, type metadata accessor for WorkoutPlanScheduledItem);
        v25 += v26;
        --v24;
      }

      while (v24);
    }

    v9 = (v35 - 1) & v35;

    result = sub_1E5A2C204();
    v12 = result ^ v34;
    v10 = v30;
    v6 = v31;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58FA0B0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E6932DE0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1E5A2BB74();

        sub_1E5A2BB74();

        result = sub_1E5A2C204();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}