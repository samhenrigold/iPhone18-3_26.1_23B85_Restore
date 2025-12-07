uint64_t sub_1C3EF5E84@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F120, &unk_1C4038440);
  a1[4] = sub_1C3EF7C38();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C4030870();
}

uint64_t sub_1C3EF5EF0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0E0, &qword_1C4038408);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0E8, &qword_1C4038410);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F078, &qword_1C40383D0);
  v16 = *(v15 - 8);
  v26 = v15;
  v27 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200, MEMORY[0x1E6968DA8]);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v12 + 8))(v14, v11);
  type metadata accessor for RecentCall(0);
  sub_1C4030870();
  swift_getKeyPath();
  sub_1C3EF7BF0(&qword_1EC08F0F0, &qword_1EC08F0E0, &qword_1C4038408, MEMORY[0x1E6968D20]);
  sub_1C40307A0();

  (*(v4 + 8))(v6, v3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F0F8, &qword_1C4038438);
  v20 = v28;
  *(v28 + 24) = v19;
  v20[4] = sub_1C3EF7A00(&qword_1EC08F100, &qword_1EC08F0F8, &qword_1C4038438, sub_1C3EF7A84);
  __swift_allocate_boxed_opaque_existential_1(v20);
  v21 = MEMORY[0x1E6968D58];
  sub_1C3EF7BF0(&qword_1EC08F0C0, &qword_1EC08F078, &qword_1C40383D0, MEMORY[0x1E6968D58]);
  sub_1C3EF7BF0(&qword_1EC08F118, &qword_1EC08F0E8, &qword_1C4038410, v21);
  sub_1C3EF7D70(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v22 = v26;
  v23 = v29;
  sub_1C4030790();
  (*(v30 + 8))(v10, v23);
  return (*(v27 + 8))(v18, v22);
}

void sub_1C3EF63AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v37 = a2;
  v42[2] = a2;
  sub_1C3F1A3AC(v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C4030F00();
  v15 = sub_1C4030E60();
  (*(v10 + 8))(v12, v9);
  if (v3)
  {
    return;
  }

  v39 = v14;
  v40 = a1;
  v16 = v38;
  v17 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = 0;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_19:
    v22 = v16;

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4030D10();
    __swift_project_value_buffer(v23, qword_1EC0B0CE0);
    v24 = v37;
    sub_1C3EE61B4(v37);
    v25 = sub_1C4030CF0();
    v26 = sub_1C40315C0();
    sub_1C3EE6238(v24);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v37;
      v29 = v27;
      v30 = swift_slowAlloc();
      v41 = v28;
      v42[0] = v30;
      *v29 = 136315138;
      sub_1C3EE61B4(v28);
      v31 = CallPredicate.description.getter();
      v33 = v32;
      sub_1C3EE6238(v41);
      v34 = sub_1C3EEFC68(v31, v33, v42);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C3E90000, v25, v26, "No matching calls found for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1C6934650](v30, -1, -1);
      MEMORY[0x1C6934650](v29, -1, -1);
    }

    *v22 = 0;
    return;
  }

LABEL_18:
  v18 = sub_1C40317E0();
  v36 = 0;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_4:
  v37 = v17;
  v19 = 0;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6933590](v19, v15);
    }

    else
    {
      if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    v20 = v19 + 1;
    v16 = v40;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_1C4030E70();

    ++v19;
  }

  while (v20 != v18);
  if (v37)
  {
    v21 = sub_1C40317E0();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v38 = v21;
}

void sub_1C3EF6810(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F038, &qword_1C4038248);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F040, &unk_1C4038250);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v31[2] = a2;
  sub_1C3F1A3AC(v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C4030F00();
  v12 = sub_1C4030E60();
  (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    if (v12 >> 62)
    {
      goto LABEL_15;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      while (1)
      {
        a2 = 0;
        v27 = v12 & 0xFFFFFFFFFFFFFF8;
        v28 = v12 & 0xC000000000000001;
        while (v28)
        {
          v14 = MEMORY[0x1C6933590](a2, v12);
          v15 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return;
          }

LABEL_8:
          v31[0] = v14;
          KeyPath = swift_getKeyPath();
          v29 = &v26;
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v26 - 2) = v14;
          *(&v26 - 8) = 1;
          sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
          sub_1C4030A90();

          ++a2;
          if (v15 == v13)
          {
            goto LABEL_13;
          }
        }

        if (a2 < *(v27 + 16))
        {
          break;
        }

        __break(1u);
LABEL_15:
        v13 = sub_1C40317E0();
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v14 = *(v12 + 8 * a2 + 32);

      v15 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_16:

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4030D10();
    __swift_project_value_buffer(v17, qword_1EC0B0CE0);
    sub_1C3EE61B4(a2);
    v18 = sub_1C4030CF0();
    v19 = sub_1C40315C0();
    sub_1C3EE6238(a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = a2;
      v31[0] = v21;
      *v20 = 136315138;
      sub_1C3EE61B4(a2);
      v22 = CallPredicate.description.getter();
      v24 = v23;
      sub_1C3EE6238(v30);
      v25 = sub_1C3EEFC68(v22, v24, v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C3E90000, v18, v19, "No matching calls found for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6934650](v21, -1, -1);
      MEMORY[0x1C6934650](v20, -1, -1);
    }
  }
}

uint64_t sub_1C3EF6CFC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F068, &unk_1C40383C0);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F070, &unk_1C403C200);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F078, &qword_1C40383D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  sub_1C3EF7BF0(&qword_1EC08F080, &qword_1EC08F070, &unk_1C403C200, MEMORY[0x1E6968DA8]);
  sub_1C4030880();
  swift_getKeyPath();
  sub_1C40307A0();

  (*(v9 + 8))(v11, v8);
  sub_1C40309F0();
  sub_1C4030870();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F088, &qword_1C4038400);
  a3[4] = sub_1C3EF7A00(&qword_1EC08F090, &qword_1EC08F088, &qword_1C4038400, sub_1C3EF7860);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1C3EF7BF0(&qword_1EC08F0C0, &qword_1EC08F078, &qword_1C40383D0, MEMORY[0x1E6968D58]);
  sub_1C3EF7BF0(&qword_1EC08F0C8, &qword_1EC08F068, &unk_1C40383C0, MEMORY[0x1E6968D20]);
  sub_1C3EF7D70(&qword_1EC08F0D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v16 = v19;
  sub_1C4030790();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1C3EF70F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C4030F90();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3EF71FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
  sub_1C4030A90();
}

uint64_t sub_1C3EF72D4@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C4030F90();

  *a3 = v5;
  return result;
}

uint64_t sub_1C3EF73FC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
  sub_1C4030A90();
}

uint64_t sub_1C3EF74C4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F058, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532C4);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3EF7D70(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
  sub_1C3EF79AC();
  sub_1C4030F90();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3EF761C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3EF7684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C3EF77B0()
{
  result = qword_1EC08F098;
  if (!qword_1EC08F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F078, &qword_1C40383D0);
    sub_1C3EF7BF0(&qword_1EC08F0A0, &qword_1EC08F070, &unk_1C403C200, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F098);
  }

  return result;
}

unint64_t sub_1C3EF7860()
{
  result = qword_1EC08F0A8;
  if (!qword_1EC08F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F068, &unk_1C40383C0);
    v1 = MEMORY[0x1E69695A8];
    sub_1C3EF7D70(&qword_1EC08F0B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1C3EF7D70(&qword_1EC08F0B8, v1, MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F0A8);
  }

  return result;
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

unint64_t sub_1C3EF79AC()
{
  result = qword_1EC08F0D8;
  if (!qword_1EC08F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F0D8);
  }

  return result;
}

uint64_t sub_1C3EF7A00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1C3EF77B0();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3EF7A84()
{
  result = qword_1EC08F108;
  if (!qword_1EC08F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F0E8, &qword_1C4038410);
    sub_1C3EF7B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F108);
  }

  return result;
}

unint64_t sub_1C3EF7B08()
{
  result = qword_1EC08F110;
  if (!qword_1EC08F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F0E0, &qword_1C4038408);
    sub_1C3EF7D70(&qword_1EC08ED78, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    sub_1C3EF7D70(&qword_1EC08ED90, type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F110);
  }

  return result;
}

uint64_t sub_1C3EF7BF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1C3EF7C38()
{
  result = qword_1EC08F128;
  if (!qword_1EC08F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F120, &unk_1C4038440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F128);
  }

  return result;
}

uint64_t sub_1C3EF7CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3EE4204;

  return sub_1C3EF225C(a1, v4, v5, v6);
}

uint64_t sub_1C3EF7D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3EF7DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F138, &qword_1C4038468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3EF7E84()
{
  type metadata accessor for CallHistoryDataSourceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC08F150 = v0;
  return result;
}

uint64_t static CallHistoryDataSourceActor.shared.getter()
{
  if (qword_1EC08EAB0 != -1)
  {
    swift_once();
  }
}

uint64_t CallHistoryDataSourceActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C3EF7F88(uint64_t a1, uint64_t a2)
{
  result = qword_1EC08F158;
  if (!qword_1EC08F158)
  {
    type metadata accessor for CallHistoryDataSourceActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F158);
  }

  return result;
}

uint64_t sub_1C3EF8000()
{
  if (qword_1EC08EAB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C3EF805C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CallHistoryDataSourceActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.saveCalls(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.getCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.updateCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.deleteCalls(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EEB800;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryDataSourceProtocol.markAsRead(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE4204;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CallHistoryModifying.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C3EE7A84;

  return v9(a1, a2, a3);
}

uint64_t sub_1C3EF8778()
{
  v2 = sub_1C4030FE0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C4030FF0();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C4030910();
  v69 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v54[-v14];
  v15 = type metadata accessor for ContainerProvider.State(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54[-v18];
  v20 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608) + 28);
  sub_1C3EFA68C(v20 + v63, v19);
  os_unfair_lock_unlock(v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v19;
  }

  sub_1C3EFA630(v19);
  result = sub_1C3EF9718();
  if (!v1)
  {
    v58 = v4;
    v22 = v7;
    v23 = v68;
    v25 = v69 + 16;
    v24 = *(v69 + 16);
    v62 = v22;
    v24(v68, v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL);
    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4030D10();
    __swift_project_value_buffer(v26, qword_1EC0B0CE0);
    v59 = v24;
    v60 = v25;
    (v24)(v13, v23, v62);
    v27 = sub_1C4030CF0();
    v28 = sub_1C40315D0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56 = v29;
      v57 = swift_slowAlloc();
      v70 = v57;
      *v29 = 136315138;
      sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v55 = v28;
      v30 = v62;
      v31 = sub_1C4031BB0();
      v33 = v32;
      v61 = *(v69 + 8);
      v61(v13, v30);
      v34 = sub_1C3EEFC68(v31, v33, &v70);
      v23 = v68;

      v35 = v56;
      *(v56 + 1) = v34;
      v36 = v35;
      _os_log_impl(&dword_1C3E90000, v27, v55, "Loading database at %s", v35, 0xCu);
      v37 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1C6934650](v37, -1, -1);
      MEMORY[0x1C6934650](v36, -1, -1);
    }

    else
    {

      v30 = v62;
      v61 = *(v69 + 8);
      v61(v13, v62);
    }

    v59(v10, v23, v30);
    sub_1C4030FD0();
    v38 = v65;
    sub_1C4031000();
    v62 = sub_1C4030EF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C40385C0;
    v40 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    v41 = sub_1C3EFA6F0(&qword_1EC08F028, type metadata accessor for CallHistorySchemaV39.ManagedRecentCall, &unk_1C40532E0);
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    v42 = type metadata accessor for CallHistorySchemaV39.ManagedHandle(0);
    v43 = sub_1C3EFA6F0(&qword_1EC08F1C0, type metadata accessor for CallHistorySchemaV39.ManagedHandle, &unk_1C405317C);
    *(v39 + 48) = v42;
    *(v39 + 56) = v43;
    v44 = type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem(0);
    v45 = sub_1C3EFA6F0(&qword_1EC08F1C8, type metadata accessor for CallHistorySchemaV39.ManagedEmergencyMediaItem, &unk_1C4053050);
    *(v39 + 64) = v44;
    *(v39 + 72) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1D0, &unk_1C4038620);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1C40385D0;
    v47 = v67;
    *(v46 + 56) = v67;
    *(v46 + 64) = sub_1C3EFA6F0(&qword_1EC08F1D8, MEMORY[0x1E697BC88], MEMORY[0x1E697BC80]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    v49 = v66;
    (*(v66 + 16))(boxed_opaque_existential_1, v38, v47);
    v50 = sub_1C4030EE0();
    v51 = v64;
    *v64 = v50;
    v52 = v50;
    swift_storeEnumTagMultiPayload();

    os_unfair_lock_lock(v20);
    v53 = v63;
    sub_1C3EFA630(v20 + v63);
    sub_1C3EFA68C(v51, v20 + v53);
    os_unfair_lock_unlock(v20);
    sub_1C3EFA630(v51);
    (*(v49 + 8))(v38, v67);
    v61(v68, v30);
    return v52;
  }

  return result;
}

uint64_t sub_1C3EF8F08(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v78 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v76 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - v12;
  v14 = sub_1C4030910();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v67 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v71 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - v22;
  v24 = type metadata accessor for ContainerProvider.State(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v3 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  v73 = v28;
  swift_storeEnumTagMultiPayload();
  *v27 = 0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  v29 = *(v72 + 28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F200, &qword_1C4038640);
  bzero(v27 + v29, *(*(v30 - 8) + 64));
  v74 = v26;
  sub_1C3EFA7E0(v26, v27 + v29);
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v31 = sub_1C4030D10();
  __swift_project_value_buffer(v31, qword_1EC0B0CE0);
  v32 = *(v15 + 16);
  v81 = a1;
  v82 = v32;
  v83 = v15 + 16;
  v32(v23, a1, v14);
  v80 = a2;
  sub_1C3EFA844(a2, v13);
  v33 = sub_1C4030CF0();
  v34 = sub_1C40315D0();
  v35 = os_log_type_enabled(v33, v34);
  v79 = v15;
  if (v35)
  {
    v68 = v34;
    v69 = v4;
    v36 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v84 = v67;
    *v36 = 136315394;
    sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v37 = sub_1C4031BB0();
    v39 = v38;
    v40 = v23;
    v41 = *(v15 + 8);
    v41(v40, v14);
    v42 = sub_1C3EEFC68(v37, v39, &v84);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    v43 = v76;
    sub_1C3EFA844(v13, v76);
    if ((*(v15 + 48))(v43, 1, v14) == 1)
    {
      sub_1C3EED388(v43, &qword_1EC08F130, &qword_1C4038450);
      v44 = 0xE300000000000000;
      v45 = 7104878;
    }

    else
    {
      v47 = v71;
      (*(v15 + 32))(v71, v43, v14);
      v82(v70, v47, v14);
      v45 = sub_1C4031230();
      v44 = v48;
      v41(v47, v14);
    }

    v4 = v69;
    sub_1C3EED388(v13, &qword_1EC08F130, &qword_1C4038450);
    v49 = sub_1C3EEFC68(v45, v44, &v84);

    *(v36 + 14) = v49;
    _os_log_impl(&dword_1C3E90000, v33, v68, "Initializing ContainerProvider with database URL %s and legacy database URL %s", v36, 0x16u);
    v50 = v67;
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v50, -1, -1);
    MEMORY[0x1C6934650](v36, -1, -1);
  }

  else
  {

    sub_1C3EED388(v13, &qword_1EC08F130, &qword_1C4038450);
    v46 = v23;
    v41 = *(v15 + 8);
    v41(v46, v14);
  }

  v51 = v78;
  v52 = v81;
  v82((v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL), v81, v14);
  v53 = v80;
  if (v51)
  {
    v54 = v51;
  }

  else
  {
    v54 = [objc_opt_self() standardUserDefaults];
  }

  *(v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_userDefaults) = v54;
  v55 = v51;
  v56 = sub_1C4031190();
  v57 = [v54 BOOLForKey_];

  if (v57)
  {

    sub_1C3EED388(v53, &qword_1EC08F130, &qword_1C4038450);
    v41(v52, v14);
  }

  else
  {
    v58 = v77;
    sub_1C3EFA844(v53, v77);
    v59 = v79;
    if ((*(v79 + 6))(v58, 1, v14) == 1)
    {

      sub_1C3EED388(v53, &qword_1EC08F130, &qword_1C4038450);
      v41(v52, v14);
      sub_1C3EED388(v58, &qword_1EC08F130, &qword_1C4038450);
    }

    else
    {
      v60 = *(v59 + 4);
      v79 = v41;
      v61 = v75;
      v60(v75, v58, v14);
      v62 = v74;
      v82(v74, v61, v14);
      swift_storeEnumTagMultiPayload();
      v63 = (v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
      os_unfair_lock_lock((v4 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
      v64 = *(v72 + 28);
      sub_1C3EFA630(v63 + v64);
      sub_1C3EFA68C(v62, v63 + v64);
      os_unfair_lock_unlock(v63);

      sub_1C3EED388(v53, &qword_1EC08F130, &qword_1C4038450);
      v65 = v79;
      v79(v52, v14);
      sub_1C3EFA630(v62);
      v65(v61, v14);
    }
  }

  return v4;
}

uint64_t sub_1C3EF9718()
{
  v2 = sub_1C4030FE0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContainerProvider.State(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v74 - v8;
  v10 = sub_1C4030910();
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v74 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_userDefaults);
  v85 = "CallHistory.storedata";
  v18 = sub_1C4031190();
  v86 = v17;
  LOBYTE(v17) = [v17 BOOLForKey_];

  if (v17)
  {
    swift_storeEnumTagMultiPayload();
    v19 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
    os_unfair_lock_lock(v19);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608) + 28);
    sub_1C3EFA630(v19 + v20);
    sub_1C3EFA68C(v7, v19 + v20);
    os_unfair_lock_unlock(v19);
    v21 = v7;
    return sub_1C3EFA630(v21);
  }

  v22 = (v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  sub_1C3EFA68C(v22 + *(v23 + 28), v9);
  os_unfair_lock_unlock(v22);
  if (swift_getEnumCaseMultiPayload())
  {
    v21 = v9;
    return sub_1C3EFA630(v21);
  }

  v25 = v88;
  (*(v89 + 32))(v16, v9, v88);
  v26 = OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL;
  sub_1C3F485A0(v16, v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL);
  if (v1)
  {
    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v60 = sub_1C4030D10();
    __swift_project_value_buffer(v60, qword_1EC0B0CE0);
    v61 = v1;
    v62 = sub_1C4030CF0();
    v63 = sub_1C40315D0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      v66 = v1;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v67;
      *v65 = v67;
      _os_log_impl(&dword_1C3E90000, v62, v63, "Legacy migration task failed: %@", v64, 0xCu);
      sub_1C3EED388(v65, &qword_1EC08EED8, &qword_1C4037F08);
      MEMORY[0x1C6934650](v65, -1, -1);
      MEMORY[0x1C6934650](v64, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v27 = [objc_allocWithZone(type metadata accessor for MigrationEncryptionTransformer()) init];
    v28 = objc_opt_self();
    if (qword_1EC08EB60 != -1)
    {
      v73 = v28;
      swift_once();
      v28 = v73;
    }

    [v28 setValueTransformer:v27 forName:qword_1EC0B0CA8];

    v29 = sub_1C3F47594();
    v83 = v26;
    v84 = v0;
    v30 = v29;
    sub_1C3F47674();
    v32 = v31;

    if (qword_1EC08EB78 != -1)
    {
      swift_once();
    }

    v33 = sub_1C4030D10();
    v81 = __swift_project_value_buffer(v33, qword_1EC0B0CE0);
    v34 = sub_1C4030CF0();
    v35 = sub_1C40315D0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v82 = v32;
      v37 = v36;
      v80 = swift_slowAlloc();
      v90 = v80;
      *v37 = 136315138;
      v38 = sub_1C4031D50();
      v40 = sub_1C3EEFC68(v38, v39, &v90);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_1C3E90000, v34, v35, "Got schema version %s", v37, 0xCu);
      v41 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1C6934650](v41, -1, -1);
      MEMORY[0x1C6934650](v37, -1, -1);
    }

    v78 = sub_1C40310F0();
    v82 = sub_1C4031010();

    v42 = v84;

    v43 = v42;
    v44 = sub_1C4030CF0();
    v45 = sub_1C40315D0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v90 = v80;
      *v46 = 136315138;
      sub_1C3EFA6F0(&qword_1EC08F1E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      LODWORD(v79) = v45;
      v47 = v88;
      v48 = sub_1C4031BB0();
      v43 = v84;
      v50 = sub_1C3EEFC68(v48, v49, &v90);

      *(v46 + 4) = v50;
      v51 = v47;
      _os_log_impl(&dword_1C3E90000, v44, v79, "Loading container at %s", v46, 0xCu);
      v52 = v80;
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1C6934650](v52, -1, -1);
      MEMORY[0x1C6934650](v46, -1, -1);
    }

    else
    {

      v51 = v88;
    }

    v80 = sub_1C4030EF0();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1E8, &unk_1C4038630);
    v54 = *(sub_1C4030FF0() - 8);
    v55 = *(v54 + 80);
    v77 = *(v54 + 72);
    v79 = v53;
    v56 = swift_allocObject();
    v75 = xmmword_1C40385D0;
    *(v56 + 16) = xmmword_1C40385D0;
    v57 = v89 + 16;
    v76 = *(v89 + 16);
    v76(v14, v43 + v83, v51);
    sub_1C4030FD0();
    sub_1C4031000();
    v58 = sub_1C4030ED0();
    v74[2] = v57;
    v74[3] = v55;
    sub_1C4030EA0();
    swift_allocObject();

    v59 = sub_1C4030EB0();
    sub_1C4030E50();
    v74[0] = v59;
    v74[1] = v58;
    v68 = sub_1C4030CF0();
    v69 = sub_1C40315D0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90 = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_1C3EEFC68(0xD000000000000014, 0x80000001C4056C00, &v90);
      _os_log_impl(&dword_1C3E90000, v68, v69, "Performing migration to schema version %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1C6934650](v71, -1, -1);
      MEMORY[0x1C6934650](v70, -1, -1);
    }

    sub_1C3EFA738();
    sub_1C4031010();

    sub_1C3EFA78C();
    *(swift_allocObject() + 16) = v75;
    v25 = v88;
    v76(v14, v84 + v83, v88);

    sub_1C4030FD0();
    sub_1C4031000();
    sub_1C4030ED0();

    v72 = sub_1C4031190();
    [v86 setBool:1 forKey:v72];
  }

  return (*(v89 + 8))(v16, v25);
}

uint64_t sub_1C3EFA220()
{
  v1 = OBJC_IVAR____TtC11CallHistory17ContainerProvider_databaseURL;
  v2 = sub_1C4030910();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC11CallHistory17ContainerProvider__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F188, &qword_1C4038608);
  sub_1C3EFA630(v3 + *(v4 + 28));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void sub_1C3EFA320(uint64_t a1)
{
  sub_1C4030910();
  if (v1 <= 0x3F)
  {
    sub_1C3EFA3F8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C3EFA3F8(uint64_t a1)
{
  if (!qword_1EC08F180)
  {
    type metadata accessor for ContainerProvider.State(255);
    v1 = sub_1C4030AE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC08F180);
    }
  }
}

void sub_1C3EFA4C0(uint64_t a1)
{
  sub_1C3EFA580(319, &qword_1EC08F1A0, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1C3EFA580(319, &qword_1EC08F1A8, MEMORY[0x1E697BBC0]);
    if (v2 <= 0x3F)
    {
      sub_1C3EFA5CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C3EFA580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3EFA5CC()
{
  result = qword_1EC08F1B0;
  if (!qword_1EC08F1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC08F1B0);
  }

  return result;
}

uint64_t sub_1C3EFA630(uint64_t a1)
{
  v2 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3EFA68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C3EFA738()
{
  result = qword_1EC08F1F0;
  if (!qword_1EC08F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F1F0);
  }

  return result;
}

unint64_t sub_1C3EFA78C()
{
  result = qword_1EC08F1F8;
  if (!qword_1EC08F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F1F8);
  }

  return result;
}

uint64_t sub_1C3EFA7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerProvider.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F130, &qword_1C4038450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3EFA8B4(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall(0);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v19 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v23 = a1 + 56;
    result = sub_1C4031770();
    v7 = result;
    v8 = 0;
    v24 = *(a1 + 36);
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v23 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = v21;
      sub_1C3F035F4(*(a1 + 48) + *(v22 + 72) * v7, v21, type metadata accessor for RecentCall);
      RecentCall.chRecentCall.getter();
      sub_1C3F03460(v11, type metadata accessor for RecentCall);
      sub_1C4031920();
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v12 = *(v23 + 8 * v10);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v20 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1C3E97CDC(v7, v24, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v7, v24, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_1C3EFAB80(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall(0);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C40309F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C3EF02C0(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_1C4031770();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_1C3F035F4(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for RecentCall);
    (*v36)(v8, v19, v5);
    sub_1C3F03460(v19, type metadata accessor for RecentCall);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C3EF02C0((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1C3E97CDC(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1C3E97CDC(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t CHManager.saveCalls(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFB014, 0, 0);
}

uint64_t sub_1C3EFB014()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v1[19];
  sub_1C3EFA8B4(v1[18]);
  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  v8 = sub_1C40313E0();
  v1[23] = v8;

  v1[2] = v1;
  v1[3] = sub_1C3EFB1F8;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFB344;
  v1[13] = &block_descriptor;
  [v7 addArrayToCallHistory:v8 withCompletion:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C3EFB1F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3EFB2D8, 0, 0);
}

uint64_t sub_1C3EFB2D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C3EFB344(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  return sub_1C4031480();
}

void *CHManager.getCalls(with:coalescingStrategy:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_1C40309F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = type metadata accessor for RecentCall(0);
  v41 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v36 - v15;
  v50 = *(a1 + *(type metadata accessor for CallFetchRequest(0) + 20));
  v16 = sub_1C3F1AFD8();
  v17 = [v2 callsWithPredicate:v16 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];

  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  v18 = sub_1C40313F0();

  if (v18 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C40317E0())
  {
    v20 = 0;
    v46 = v18 & 0xFFFFFFFFFFFFFF8;
    v47 = v18 & 0xC000000000000001;
    v44 = (v8 + 48);
    v38 = (v8 + 16);
    v39 = (v8 + 32);
    v37 = (v8 + 8);
    v49 = MEMORY[0x1E69E7CC0];
    v45 = i;
    while (1)
    {
      if (v47)
      {
        v22 = MEMORY[0x1C6933590](v20, v18);
      }

      else
      {
        if (v20 >= *(v46 + 16))
        {
          goto LABEL_18;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v8 = v18;
      v25 = v6;
      v26 = v7;
      v27 = [v22 uniqueId];
      sub_1C40311C0();

      v7 = v26;
      v6 = v25;
      sub_1C4030990();

      if ((*v44)(v25, 1, v7) == 1)
      {

        sub_1C3EED388(v25, &qword_1EC08F218, &qword_1C4041840);
        v21 = v45;
      }

      else
      {
        v28 = v42;
        (*v39)(v42, v25, v7);
        v29 = v43;
        (*v38)(v43, v28, v7);
        v30 = v40;
        RecentCall.init(_:uniqueID:)(v23, v29, v40);
        (*v37)(v28, v7);
        sub_1C3F034C0(v30, v48, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1C3F00038(0, v49[2] + 1, 1, v49, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v18 = v8;
        v32 = v49[2];
        v31 = v49[3];
        v21 = v45;
        if (v32 >= v31 >> 1)
        {
          v49 = sub_1C3F00038((v31 > 1), v32 + 1, 1, v49, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v33 = v48;
        v34 = v49;
        v49[2] = v32 + 1;
        sub_1C3F034C0(v33, v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, type metadata accessor for RecentCall);
      }

      ++v20;
      if (v24 == v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v49;
}

uint64_t CHManager.getCallsStream(fetchRequest:pageSize:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1C40314E0();
}

uint64_t sub_1C3EFBA34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for CallFetchRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_1C40314B0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  sub_1C3F035F4(a2, v9, type metadata accessor for CallFetchRequest);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v11 + 32))(v22 + v19, v14, v10);
  sub_1C3F034C0(v9, v22 + v20, type metadata accessor for CallFetchRequest);
  v23 = v27;
  *(v22 + v21) = v26;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v24 = v23;
  sub_1C3EEDDDC(0, 0, v17, &unk_1C4038738, v22);
}

uint64_t sub_1C3EFBD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A0, &qword_1C403D880);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  v7[11] = swift_task_alloc();
  v9 = sub_1C40309F0();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = *(type metadata accessor for RecentCall(0) - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFBEE0, 0, 0);
}

void sub_1C3EFBEE0()
{
  v49 = v0[16];
  v1 = v0[13];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4038660;
  type metadata accessor for CallFetchRequest(0);
  *(v3 + 32) = sub_1C3F1AFD8();
  sub_1C3F03800(0, &qword_1EC08F2B0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2B8, &qword_1C4038740);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C40385D0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C3F03848();
  *(v4 + 32) = 0x695F657571696E75;
  *(v4 + 40) = 0xE900000000000064;
  *(v3 + 40) = sub_1C40315A0();
  v5 = sub_1C40313E0();

  v44 = [objc_opt_self() andPredicateWithSubpredicates_];

  v6 = 0;
  v51 = (v1 + 48);
  v47 = (v1 + 16);
  v48 = (v1 + 32);
  v7 = (v1 + 8);
  v8 = v0;
  v46 = v7;
  v43 = (v2 + 8);
  v50 = v0;
  while (1)
  {
    if ((v6 * v8[6]) >> 64 != (v6 * v8[6]) >> 63)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v9 = [v8[7] callsWithPredicate:v44 limit:? offset:? batchSize:?];
    sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
    v10 = sub_1C40313F0();

    if (v10 >> 62)
    {
      v11 = sub_1C40317E0();
      if (!v11)
      {
LABEL_28:

        v35 = 0;
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v45 = v6;
    v12 = 0;
    v55 = v10 & 0xC000000000000001;
    v56 = 0;
    v54 = v10 & 0xFFFFFFFFFFFFFF8;
    v13 = MEMORY[0x1E69E7CC0];
    v52 = v11;
    v53 = v10;
    do
    {
      if (v55)
      {
        v15 = MEMORY[0x1C6933590](v12, v10);
      }

      else
      {
        if (v12 >= *(v54 + 16))
        {
          goto LABEL_38;
        }

        v15 = *(v10 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v18 = v8[11];
      v19 = v8[12];
      v20 = [v15 uniqueId];
      sub_1C40311C0();
      v21 = v8;

      sub_1C4030990();

      if ((*v51)(v18, 1, v19) == 1)
      {
        v22 = v8[11];

        sub_1C3EED388(v22, &qword_1EC08F218, &qword_1C4041840);
        if (__OFADD__(v56, 1))
        {
          goto LABEL_39;
        }

        ++v56;
        v23 = v52;
        v10 = v53;
      }

      else
      {
        v25 = v8[17];
        v24 = v8[18];
        v27 = v8[14];
        v26 = v8[15];
        v28 = v21[12];
        (*v48)(v21[15], v21[11], v28);
        (*v47)(v27, v26, v28);
        RecentCall.init(_:uniqueID:)(v16, v27, v25);
        (*v46)(v26, v28);
        sub_1C3F034C0(v25, v24, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1C3F00038(0, v13[2] + 1, 1, v13, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v23 = v52;
        v10 = v53;
        v30 = v13[2];
        v29 = v13[3];
        v8 = v50;
        if (v30 >= v29 >> 1)
        {
          v13 = sub_1C3F00038((v29 > 1), v30 + 1, 1, v13, &qword_1EC08EC00, &qword_1C4036A48, type metadata accessor for RecentCall);
        }

        v14 = v50[18];
        v13[2] = v30 + 1;
        sub_1C3F034C0(v14, v13 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v30, type metadata accessor for RecentCall);
      }

      ++v12;
    }

    while (v17 != v23);

    v6 = v45;
    if (v56 > 0)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v31 = sub_1C4030D10();
      __swift_project_value_buffer(v31, qword_1EC0B0CF8);
      v32 = sub_1C4030CF0();
      v33 = sub_1C40315D0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        v35 = v56;
        *(v34 + 4) = v56;
        _os_log_impl(&dword_1C3E90000, v32, v33, "Found %ld calls with invalid uniqueID, skipping them.", v34, 0xCu);
        MEMORY[0x1C6934650](v34, -1, -1);

        goto LABEL_29;
      }
    }

    v35 = v56;
LABEL_29:
    v36 = v8[10];
    v37 = v8[8];
    v38 = v8;
    v39 = v8[6];
    v38[2] = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860);
    sub_1C40314C0();
    (*v43)(v36, v37);
    v40 = v13[2];

    if (__OFSUB__(v39, v35))
    {
      goto LABEL_41;
    }

    if (v40 != v39 - v35)
    {
      break;
    }

    v41 = __OFADD__(v6++, 1);
    v8 = v50;
    if (v41)
    {
      goto LABEL_42;
    }
  }

  v50[3] = 0;
  sub_1C40314D0();

  v42 = v50[1];

  v42();
}

id CHManager.getCallCount(with:)()
{
  v1 = v0;
  type metadata accessor for CallFetchRequest(0);
  v2 = sub_1C3F1AFD8();
  v3 = [v1 callCountWithPredicate_];

  return v3;
}

uint64_t CHManager.updateCalls(with:)(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v4 = sub_1C40309F0();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v5 = type metadata accessor for RecentCall(0);
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = type metadata accessor for CallFetchRequest(0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3EFC890, 0, 0);
}

uint64_t sub_1C3EFC890()
{
  v217 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[36];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C3EFAB80(v3);
  sub_1C40309E0();
  *(v1 + *(v2 + 20)) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1C40311C0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v210[55];
  v11 = v210[56];
  v12 = (v10 + *(v210[54] + 24));
  *v12 = v7;
  v12[1] = v9;
  sub_1C3F034C0(v10, v11, type metadata accessor for CallFetchRequest);
  v13 = CHManager.getCalls(with:coalescingStrategy:)(v11);
  v204 = v210[47];
  v14 = v210[42];
  v15 = v210[36];
  v16 = v15 + 56;
  v17 = -1;
  v18 = -1 << *(v15 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 56);
  v20 = (63 - v18) >> 6;
  v200 = (v14 + 16);
  v201 = v13;
  v196 = v210[42];
  v197 = (v14 + 8);

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v211 = v15 + 56;
  v207 = v20;
  v205 = v15;
  while (1)
  {
    v209 = v23;
    if (!v19)
    {
      break;
    }

    v24 = v22;
LABEL_14:
    v25 = v210[52];
    v26 = v210[53];
    v27 = v210[45];
    v28 = v210[41];
    v29 = *(v204 + 72);
    sub_1C3F035F4(*(v15 + 48) + v29 * (__clz(__rbit64(v19)) | (v24 << 6)), v26, type metadata accessor for RecentCall);
    v30 = *v200;
    (*v200)(v27, v26, v28);
    sub_1C3F035F4(v26, v25, type metadata accessor for RecentCall);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v216[0] = v209;
    v21 = sub_1C3F3C7F8(v27);
    v33 = v209[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_130;
    }

    v37 = v32;
    if (v209[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v21;
        sub_1C3F02634();
        v21 = v46;
        v209 = v216[0];
      }
    }

    else
    {
      v38 = v210[45];
      sub_1C3F0124C(v36, isUniquelyReferenced_nonNull_native);
      v209 = v216[0];
      v21 = sub_1C3F3C7F8(v38);
      if ((v37 & 1) != (v39 & 1))
      {
LABEL_120:

        return sub_1C4031C30();
      }
    }

    v19 &= v19 - 1;
    v40 = v210[52];
    v213 = v210[53];
    v41 = v210[45];
    v42 = v210[41];
    if (v37)
    {
      v23 = v209;
      sub_1C3F02960(v40, v209[7] + v21 * v29);
      (*v197)(v41, v42);
      v21 = sub_1C3F03460(v213, type metadata accessor for RecentCall);
      v22 = v24;
    }

    else
    {
      v23 = v209;
      v209[(v21 >> 6) + 8] |= 1 << v21;
      v43 = v21;
      v30(v209[6] + *(v196 + 72) * v21, v41, v42);
      sub_1C3F034C0(v40, v209[7] + v43 * v29, type metadata accessor for RecentCall);
      (*(v196 + 8))(v41, v42);
      v21 = sub_1C3F03460(v213, type metadata accessor for RecentCall);
      v44 = v209[2];
      v35 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v35)
      {
        goto LABEL_132;
      }

      v209[2] = v45;
      v22 = v24;
      v15 = v205;
    }

    v16 = v211;
    v20 = v207;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
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
      return MEMORY[0x1EEE6DEC8](v21);
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  v47 = v210;

  v21 = v201;
  v199 = v201[2];
  if (v199)
  {
    v48 = 0;
    v49 = 0;
    v202 = v210[46];
    v198 = v201 + ((*(v210[47] + 80) + 32) & ~*(v210[47] + 80));
    v193 = v210[42];
    v195 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v49 >= *(v21 + 16))
      {
        goto LABEL_129;
      }

      v57 = *(v204 + 72);
      v208 = v49;
      sub_1C3F035F4(&v198[v57 * v49], v47[51], type metadata accessor for RecentCall);
      v212 = v48;
      if (!v23[2] || (v58 = sub_1C3F3C7F8(v47[51]), (v59 & 1) == 0))
      {
        if (qword_1EC08EB80 != -1)
        {
          swift_once();
        }

        v74 = v47[51];
        v75 = v47[48];
        v76 = sub_1C4030D10();
        __swift_project_value_buffer(v76, qword_1EC0B0CF8);
        sub_1C3F035F4(v74, v75, type metadata accessor for RecentCall);
        v77 = sub_1C4030CF0();
        v78 = sub_1C40315D0();
        v79 = os_log_type_enabled(v77, v78);
        v80 = v47[51];
        v81 = v47[48];
        if (v79)
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v216[0] = v51;
          *v50 = 136446210;
          sub_1C3F035B0(&qword_1EC08F230, MEMORY[0x1E69695E0]);
          v52 = sub_1C4031BB0();
          v54 = v53;
          sub_1C3F03460(v81, type metadata accessor for RecentCall);
          v55 = sub_1C3EEFC68(v52, v54, v216);
          v47 = v210;

          *(v50 + 4) = v55;
          _os_log_impl(&dword_1C3E90000, v77, v78, "Failed to find call update for uniqueID %{public}s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1C6934650](v51, -1, -1);
          MEMORY[0x1C6934650](v50, -1, -1);
        }

        else
        {

          sub_1C3F03460(v81, type metadata accessor for RecentCall);
        }

        v56 = v80;
        goto LABEL_27;
      }

      v61 = v47[50];
      v60 = v47[51];
      v62 = v47[49];
      sub_1C3F035F4(v23[7] + v58 * v57, v62, type metadata accessor for RecentCall);
      sub_1C3F034C0(v62, v61, type metadata accessor for RecentCall);
      v63 = v202[24];
      v64 = *(v61 + v63);
      if (*(v60 + v63) != v64)
      {
        break;
      }

LABEL_50:
      v91 = v47[50];
      v92 = v47[51];
      sub_1C40309A0();
      v93 = v202[9];
      v94 = *(v91 + v93);
      if (v94 != *(v92 + v93))
      {
        v95 = v47[37];
        v96 = sub_1C4031190();
        v97 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        [v95 updateBytesOfDataUsedFor:v96 with:v97];
      }

      v99 = v47[50];
      v98 = v47[51];
      v100 = v202[18];
      v101 = *(v99 + v100);
      if (v101 != *(v98 + v100))
      {
        v102 = v47[37];
        v103 = sub_1C4031190();
        v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        [v102 updateMessageStatusFor:v103 with:v104];

        v99 = v47[50];
        v98 = v47[51];
      }

      v105 = v202[28];
      if (*(v99 + v105) == *(v98 + v105))
      {
      }

      else
      {
        v194 = sub_1C4031190();

        v106 = *(v99 + v105);
        if (qword_1EC08EB00 != -1)
        {
          swift_once();
        }

        v107 = *(qword_1EC0B0C50 + 16);
        if (v107)
        {
          v192 = v106;
          v216[0] = MEMORY[0x1E69E7CC0];
          v203 = v107;
          v206 = qword_1EC0B0C50;
          sub_1C3EF0290(0, v107, 0);
          v108 = v216[0];
          v109 = v206 + 64;
          v21 = sub_1C4031770();
          v110 = v203;
          v111 = v206;
          v112 = v21;
          v113 = 0;
          while ((v112 & 0x8000000000000000) == 0 && v112 < 1 << *(v111 + 32))
          {
            v115 = v112 >> 6;
            if ((*(v109 + 8 * (v112 >> 6)) & (1 << v112)) == 0)
            {
              goto LABEL_124;
            }

            v116 = *(*(v111 + 48) + 8 * v112);
            v117 = *(*(v111 + 56) + v112);
            v118 = *(v111 + 36);
            v216[0] = v108;
            v120 = *(v108 + 16);
            v119 = *(v108 + 24);
            if (v120 >= v119 >> 1)
            {
              v130 = v118;
              v21 = sub_1C3EF0290((v119 > 1), v120 + 1, 1);
              v118 = v130;
              v110 = v203;
              v111 = v206;
              v108 = v216[0];
            }

            *(v108 + 16) = v120 + 1;
            v121 = v108;
            v122 = v108 + 16 * v120;
            *(v122 + 32) = v117;
            *(v122 + 40) = v116;
            v114 = 1 << *(v111 + 32);
            if (v112 >= v114)
            {
              goto LABEL_125;
            }

            v109 = v206 + 64;
            v123 = *(v206 + 64 + 8 * v115);
            if ((v123 & (1 << v112)) == 0)
            {
              goto LABEL_126;
            }

            if (v118 != *(v111 + 36))
            {
              goto LABEL_127;
            }

            v124 = v123 & (-2 << (v112 & 0x3F));
            if (v124)
            {
              v114 = __clz(__rbit64(v124)) | v112 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v125 = v115 << 6;
              v126 = (v206 + 72 + 8 * v115);
              v127 = v115 + 1;
              while (v127 < (v114 + 63) >> 6)
              {
                v129 = *v126++;
                v128 = v129;
                v125 += 64;
                ++v127;
                if (v129)
                {
                  v21 = sub_1C3E97CDC(v112, v118, 0);
                  v110 = v203;
                  v111 = v206;
                  v114 = __clz(__rbit64(v128)) + v125;
                  goto LABEL_60;
                }
              }

              v21 = sub_1C3E97CDC(v112, v118, 0);
              v110 = v203;
              v111 = v206;
            }

LABEL_60:
            ++v113;
            v112 = v114;
            v108 = v121;
            if (v113 == v110)
            {
              v47 = v210;
              v106 = v192;
              goto LABEL_78;
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
          goto LABEL_128;
        }

        v108 = MEMORY[0x1E69E7CC0];
LABEL_78:
        if (*(v108 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
          v131 = sub_1C4031A10();
        }

        else
        {
          v131 = MEMORY[0x1E69E7CC8];
        }

        v216[0] = v131;
        sub_1C3F02D14(v108, 1u, v216);
        v132 = v216[0];
        if (*(v216[0] + 16) && (v133 = sub_1C3F3C788(v106), (v134 & 1) != 0))
        {
          v135 = *(*(v132 + 56) + 8 * v133);
        }

        else
        {
          v135 = 0;
        }

        v136 = v47[37];

        [v136 updateAutoAnsweredReasonFor:v194 with:v135];
      }

      v137 = v47[51];
      sub_1C3F03460(v47[50], type metadata accessor for RecentCall);
      v56 = v137;
LABEL_27:
      sub_1C3F03460(v56, type metadata accessor for RecentCall);
      v23 = v209;
      v49 = v208 + 1;
      v21 = v201;
      v48 = v212;
      if (v208 + 1 == v199)
      {

        v138 = v195;
        goto LABEL_91;
      }
    }

    (*v200)(v47[44], v47[50], v47[41]);
    sub_1C3F029C4(v212, 0);
    v65 = v195;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v216[0] = v195;
    v68 = sub_1C3F3C78C(v64);
    v69 = *(v195 + 16);
    v70 = (v67 & 1) == 0;
    v21 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_131;
    }

    v71 = v67;
    if (*(v195 + 24) < v21)
    {
      sub_1C3F00FBC(v21, v66);
      v72 = v216[0];
      v21 = sub_1C3F3C78C(v64);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_120;
      }

      v68 = v21;
      v65 = v72;
      if (v71)
      {
        goto LABEL_45;
      }

LABEL_43:
      v65[(v68 >> 6) + 8] |= 1 << v68;
      *(v65[6] + v68) = v64;
      *(v65[7] + 8 * v68) = MEMORY[0x1E69E7CC0];
      v82 = v65[2];
      v35 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v35)
      {
        goto LABEL_133;
      }

      v65[2] = v83;
      goto LABEL_45;
    }

    if (v66)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v21 = sub_1C3F024D8();
      v65 = v216[0];
      if ((v71 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    v195 = v65;
    v84 = v65[7];
    v85 = *(v84 + 8 * v68);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + 8 * v68) = v85;
    if ((v86 & 1) == 0)
    {
      v85 = sub_1C3F00038(0, v85[2] + 1, 1, v85, &qword_1EC08EF68, &unk_1C4038150, MEMORY[0x1E69695A8]);
      *(v84 + 8 * v68) = v85;
    }

    v88 = v85[2];
    v87 = v85[3];
    if (v88 >= v87 >> 1)
    {
      v85 = sub_1C3F00038((v87 > 1), v88 + 1, 1, v85, &qword_1EC08EF68, &unk_1C4038150, MEMORY[0x1E69695A8]);
      *(v84 + 8 * v68) = v85;
    }

    v89 = v47[44];
    v90 = v47[41];
    v85[2] = v88 + 1;
    (*(v193 + 32))(v85 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v196 + 72) * v88, v89, v90);
    v212 = sub_1C3EFE5E4;
    goto LABEL_50;
  }

  v48 = 0;
  v138 = MEMORY[0x1E69E7CC8];
LABEL_91:

  v47[57] = v48;
  v47[58] = v138;
  if (!*(v138 + 16))
  {
    goto LABEL_110;
  }

  v139 = sub_1C3F3C78C(1);
  if (v140)
  {
    v141 = *(*(v138 + 56) + 8 * v139);
    v142 = *(v141 + 16);
    v143 = MEMORY[0x1E69E7CC0];
    if (v142)
    {
      v144 = v210[42];
      v216[0] = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v142, 0);
      v143 = v216[0];
      v145 = v141 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v146 = *(v196 + 72);
      v147 = *(v196 + 16);
      do
      {
        v148 = v210[43];
        v149 = v210[41];
        v147(v148, v145, v149);
        v150 = sub_1C40309A0();
        v152 = v151;
        (*v197)(v148, v149);
        v216[0] = v143;
        v154 = *(v143 + 16);
        v153 = *(v143 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_1C3EF0270((v153 > 1), v154 + 1, 1);
          v143 = v216[0];
        }

        *(v143 + 16) = v154 + 1;
        v155 = v143 + 16 * v154;
        *(v155 + 32) = v150;
        *(v155 + 40) = v152;
        v145 += v146;
        --v142;
      }

      while (v142);
    }

    if (*(v143 + 16))
    {
      v156 = v210 + 10;
      v157 = v210[39];
      v158 = v210[40];
      v159 = v210[38];
      v214 = v210[37];
      v160 = objc_opt_self();
      v161 = sub_1C40313E0();

      v162 = [v160 predicateForCallsWithAnyUniqueIDs_];
      v210[59] = v162;

      v210[10] = v210;
      v210[15] = v210 + 35;
      v210[11] = sub_1C3EFDEA0;
      swift_continuation_init();
      v210[33] = v159;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v210 + 30);
      sub_1C4031460();
      (*(v157 + 32))(boxed_opaque_existential_1, v158, v159);
      v210[26] = MEMORY[0x1E69E9820];
      v210[27] = 1107296256;
      v210[28] = sub_1C3EFE5F4;
      v210[29] = &block_descriptor_7;
      [v214 setRead:1 forCallsWithPredicate:v162 completion:v210 + 26];
      (*(v157 + 8))(boxed_opaque_existential_1, v159);
LABEL_116:
      v21 = v156;

      return MEMORY[0x1EEE6DEC8](v21);
    }

    v47 = v210;
  }

  if (*(v47[58] + 16) && (v164 = sub_1C3F3C78C(0), (v165 & 1) != 0))
  {
    v166 = *(*(v47[58] + 56) + 8 * v164);
    v167 = *(v166 + 16);
    v168 = MEMORY[0x1E69E7CC0];
    if (v167)
    {
      v169 = v210[42];
      v216[0] = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v167, 0);
      v168 = v216[0];
      v170 = v166 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      v171 = *(v169 + 72);
      v172 = *(v169 + 16);
      do
      {
        v174 = v210[42];
        v173 = v210[43];
        v175 = v210[41];
        v172(v173, v170, v175);
        v176 = sub_1C40309A0();
        v178 = v177;
        (*(v174 + 8))(v173, v175);
        v216[0] = v168;
        v180 = *(v168 + 16);
        v179 = *(v168 + 24);
        if (v180 >= v179 >> 1)
        {
          sub_1C3EF0270((v179 > 1), v180 + 1, 1);
          v168 = v216[0];
        }

        *(v168 + 16) = v180 + 1;
        v181 = v168 + 16 * v180;
        *(v181 + 32) = v176;
        *(v181 + 40) = v178;
        v170 += v171;
        --v167;
      }

      while (v167);
    }

    v47 = v210;
    if (*(v168 + 16))
    {
      v156 = v210 + 2;
      v185 = v210[39];
      v186 = v210[40];
      v187 = v210[38];
      v215 = v210[37];
      v188 = objc_opt_self();
      v189 = sub_1C40313E0();

      v190 = [v188 predicateForCallsWithAnyUniqueIDs_];
      v210[60] = v190;

      v210[2] = v210;
      v210[7] = v210 + 34;
      v210[3] = sub_1C3EFE3D0;
      swift_continuation_init();
      v210[25] = v187;
      v191 = __swift_allocate_boxed_opaque_existential_1(v210 + 22);
      sub_1C4031460();
      (*(v185 + 32))(v191, v186, v187);
      v210[18] = MEMORY[0x1E69E9820];
      v210[19] = 1107296256;
      v210[20] = sub_1C3EFE5F4;
      v210[21] = &block_descriptor_4;
      [v215 setRead:0 forCallsWithPredicate:v190 completion:v210 + 18];
      (*(v185 + 8))(v191, v187);
      goto LABEL_116;
    }

    v182 = v210[57];
    sub_1C3F03460(v210[56], type metadata accessor for CallFetchRequest);
  }

  else
  {
LABEL_110:
    v182 = v47[57];
    sub_1C3F03460(v47[56], type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v182, 0);

  v183 = v47[1];

  return v183();
}

uint64_t sub_1C3EFDEA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3EFDF80, 0, 0);
}

uint64_t sub_1C3EFDF80()
{
  if (*(*(v0 + 464) + 16) && (v1 = sub_1C3F3C78C(0), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 464) + 56) + 8 * v1);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = *(v0 + 336);
      v30 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v4, 0);
      v5 = v30;
      v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v28 = *(v6 + 72);
      v8 = *(v6 + 16);
      do
      {
        v10 = *(v0 + 336);
        v9 = *(v0 + 344);
        v11 = *(v0 + 328);
        v8(v9, v7, v11);
        v12 = sub_1C40309A0();
        v14 = v13;
        (*(v10 + 8))(v9, v11);
        v16 = *(v30 + 16);
        v15 = *(v30 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C3EF0270((v15 > 1), v16 + 1, 1);
        }

        *(v30 + 16) = v16 + 1;
        v17 = v30 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v7 += v28;
        --v4;
      }

      while (v4);
    }

    if (*(v5 + 16))
    {
      v22 = *(v0 + 312);
      v21 = *(v0 + 320);
      v23 = *(v0 + 304);
      v29 = *(v0 + 296);
      v24 = objc_opt_self();
      v25 = sub_1C40313E0();

      v26 = [v24 predicateForCallsWithAnyUniqueIDs_];
      *(v0 + 480) = v26;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_1C3EFE3D0;
      swift_continuation_init();
      *(v0 + 200) = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      sub_1C4031460();
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v23);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C3EFE5F4;
      *(v0 + 168) = &block_descriptor_4;
      [v29 setRead:0 forCallsWithPredicate:v26 completion:v0 + 144];
      (*(v22 + 8))(boxed_opaque_existential_1, v23);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v18 = *(v0 + 456);
    sub_1C3F03460(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  else
  {
    v18 = *(v0 + 456);
    sub_1C3F03460(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v18, 0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C3EFE3D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3EFE4B0, 0, 0);
}

uint64_t sub_1C3EFE4B0()
{
  v1 = v0[60];
  v2 = v0[57];
  sub_1C3F03460(v0[56], type metadata accessor for CallFetchRequest);

  sub_1C3F029C4(v2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C3EFE5F4(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  return sub_1C4031480();
}

uint64_t CHManager.deleteCalls(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3EFE674, 0, 0);
}

uint64_t sub_1C3EFE674()
{
  v20 = v0;
  if (qword_1EC08EB80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1C4030D10();
  __swift_project_value_buffer(v2, qword_1EC0B0CF8);
  sub_1C3EE61B4(v1);
  v3 = sub_1C4030CF0();
  v4 = sub_1C40315D0();
  sub_1C3EE6238(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C3EEFC68(0xD000000000000012, 0x80000001C4056AA0, &v18);
    *(v6 + 12) = 2080;
    v19 = v5;
    sub_1C3EE61B4(v5);
    v8 = CallPredicate.description.getter();
    v10 = v9;
    sub_1C3EE6238(v19);
    v11 = sub_1C3EEFC68(v8, v10, &v18);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1C3E90000, v3, v4, "%{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6934650](v7, -1, -1);
    MEMORY[0x1C6934650](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = swift_task_alloc();
  v0[5] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = sub_1C3EFE90C;
  v16 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001C4056AA0, sub_1C3F0308C, v14, v16);
}

uint64_t sub_1C3EFE90C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1C3EFEA28;
  }

  else
  {

    v2 = sub_1C3EE4C44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C3EFEA28()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C3EFEA8C(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1C3F03528;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3EFEFE0;
  aBlock[3] = &block_descriptor_27;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  sub_1C3EE61B4(a3);

  [v13 execute_];
  _Block_release(v12);
}

void sub_1C3EFEC58(void *a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 syncManager];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v27[0] = a2;
  v5 = sub_1C3F1AFD8();
  v26 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 withTransaction:1 error:&v26];
  swift_unknownObjectRelease();

  v7 = v26;
  v8 = qword_1EC08EB80;
  if (v26)
  {
    v9 = v26;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4030D10();
    __swift_project_value_buffer(v10, qword_1EC0B0CF8);
    v11 = v9;
    v12 = sub_1C4030CF0();
    v13 = sub_1C40315C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v7;
      v16 = v11;
      _os_log_impl(&dword_1C3E90000, v12, v13, "Could not delete calls; operation failed with error %{public}@", v14, 0xCu);
      sub_1C3EED388(v15, &qword_1EC08EED8, &qword_1C4037F08);
      MEMORY[0x1C6934650](v15, -1, -1);
      MEMORY[0x1C6934650](v14, -1, -1);
    }

    v27[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
    sub_1C4031470();
  }

  else
  {
    if (qword_1EC08EB80 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4030D10();
    __swift_project_value_buffer(v17, qword_1EC0B0CF8);
    sub_1C3EE61B4(a2);
    v18 = sub_1C4030CF0();
    v19 = sub_1C40315B0();
    sub_1C3EE6238(a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = a2;
      v27[0] = v21;
      *v20 = 134349314;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2080;
      sub_1C3EE61B4(a2);
      v22 = CallPredicate.description.getter();
      v24 = v23;
      sub_1C3EE6238(v26);
      v25 = sub_1C3EEFC68(v22, v24, v27);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1C3E90000, v18, v19, "Deleted %{public}ld calls matching predicate %s", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6934650](v21, -1, -1);
      MEMORY[0x1C6934650](v20, -1, -1);
    }

    v27[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
    sub_1C4031480();
  }
}

uint64_t sub_1C3EFEFE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CHManager.getDatabaseSize(temporary:)(Swift::Bool temporary)
{
  v3 = v2;
  v4 = v1;
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C4030770();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4030910();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v14 = [objc_opt_self() getDBLocationIsSandboxed:1 isTemporary:temporary error:&v40];
  sub_1C40308E0();

  if (!v40)
  {
    v39 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F240, &qword_1C40386A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C40385D0;
    v27 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v28 = v27;
    sub_1C3F0326C(inited);
    swift_setDeallocating();
    sub_1C3F03460(inited + 32, type metadata accessor for URLResourceKey);
    v29 = v13;
    sub_1C40308B0();
    if (v2)
    {
      (*(v11 + 8))(v13, v39);

      return v29;
    }

    v31 = sub_1C4030760();
    if (v32)
    {
      if (qword_1EC08EB80 != -1)
      {
        swift_once();
      }

      v33 = sub_1C4030D10();
      __swift_project_value_buffer(v33, qword_1EC0B0CF8);
      v34 = sub_1C4030CF0();
      v35 = sub_1C40315C0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        MEMORY[0x1C6934650](v36, -1, -1);
      }

      v29 = 0;
    }

    else
    {
      v29 = v31;
    }

    v10 = v39;
    (*(v7 + 8))(v9, v6);
LABEL_20:
    (*(v11 + 8))(v13, v10);
    return v29;
  }

  if (qword_1EC08EB80 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4030D10();
  __swift_project_value_buffer(v15, qword_1EC0B0CF8);
  v16 = sub_1C4030CF0();
  v17 = sub_1C40315C0();
  if (!os_log_type_enabled(v16, v17))
  {

LABEL_10:
    v29 = v4;
    v30 = sub_1C3F03094();
    if (!v3)
    {
      v29 = v30;
    }

    goto LABEL_20;
  }

  v37 = v4;
  v38 = v2;
  v39 = v10;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v41[0] = v19;
  *v18 = 136315138;
  swift_beginAccess();
  result = getDBLErrorCodeAsString(v40);
  if (result)
  {
    v21 = result;
    v22 = sub_1C40311C0();
    v24 = v23;

    v25 = sub_1C3EEFC68(v22, v24, v41);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1C3E90000, v16, v17, "Failed to get database size; operation failed with error: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1C6934650](v19, -1, -1);
    MEMORY[0x1C6934650](v18, -1, -1);

    v3 = v38;
    v10 = v39;
    v4 = v37;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t CHManager.markCallsAsRead(with:)(uint64_t *a1)
{
  v2[19] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C3EFF60C, 0, 0);
}

uint64_t sub_1C3EFF60C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[19];
  v9 = v1[23];
  v6 = sub_1C3F1AFD8();
  v1[24] = v6;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C3EFF7CC;
  swift_continuation_init();
  v1[17] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFE5F4;
  v1[13] = &block_descriptor_12;
  [v5 setRead:1 forCallsWithPredicate:v6 completion:{v1 + 10, v9}];
  (*(v4 + 8))(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C3EFF7CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3EFF8AC, 0, 0);
}

uint64_t sub_1C3EFF8AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C3EFF91C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CHManager.saveCalls(_:)(a1);
}

uint64_t sub_1C3EFF9D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F220, &qword_1C4038680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v9 = *v2;
  v12 = a1;
  v13 = a2;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EE28, &qword_1C403D780);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1C40314E0();
}

id sub_1C3EFFB14()
{
  v1 = *v0;
  type metadata accessor for CallFetchRequest(0);
  v2 = sub_1C3F1AFD8();
  v3 = [v1 callCountWithPredicate_];

  return v3;
}

uint64_t sub_1C3EFFB90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE4204;

  return CHManager.updateCalls(with:)(a1);
}

uint64_t sub_1C3EFFC28(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EEB060;

  return CHManager.deleteCalls(with:)(a1);
}

uint64_t sub_1C3EFFCE4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return CHManager.markCallsAsRead(with:)(a1);
}

char *sub_1C3EFFD7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F250, &qword_1C40386F0);
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

char *sub_1C3EFFEDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F268, &qword_1C4038708);
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

void *sub_1C3F00038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1C3F00214(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1C3F00234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C3F00264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CoalescingManager.Group(0);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F258, &qword_1C40386F8);
  v47 = v4;
  result = sub_1C4031A00();
  v12 = v10;
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v45 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v47)
      {
        sub_1C3F034C0(v28, v9, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1C3F034C0(v29 + v31 * v26, v48, type metadata accessor for CoalescingManager.Group);
      }

      else
      {
        sub_1C3F035F4(v28, v9, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v46 + 72);
        sub_1C3F035F4(v32 + v31 * v26, v48, type metadata accessor for CoalescingManager.Group);
      }

      sub_1C4031C70();
      v33 = v30;
      sub_1C4025638(v49);
      result = sub_1C4031CC0();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1C3F034C0(v33, *(v13 + 48) + v27 * v21, type metadata accessor for CoalescingManager.RecentsStrategyKey);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      result = sub_1C3F034C0(v48, v22, type metadata accessor for CoalescingManager.Group);
      ++*(v13 + 16);
      v12 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_1C3F006B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CoalescingManager.Group(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F260, &qword_1C4038700);
  v37 = v4;
  result = sub_1C4031A00();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1C3F034C0(v25, v7, type metadata accessor for CoalescingManager.Group);
      }

      else
      {
        sub_1C3F035F4(v25, v7, type metadata accessor for CoalescingManager.Group);
      }

      result = sub_1C4031C60();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1C3F034C0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CoalescingManager.Group);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C3F00A00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
  v37 = v4;
  result = sub_1C4031A00();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 40 * v21;
      v40 = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 32);
      v38 = *(v24 + 24);
      v39 = *(v24 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1C4031C70();
      sub_1C4031280();
      result = sub_1C4031CC0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v40;
      *(v17 + 8) = v39;
      *(v17 + 16) = v25;
      *(v17 + 24) = v38;
      *(v17 + 32) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C3F00CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
  v36 = v4;
  result = sub_1C4031A00();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1C4031C70();
      sub_1C4031280();
      result = sub_1C4031CC0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C3F00FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F280, &qword_1C4038720);
  v30 = v4;
  result = sub_1C4031A00();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1C4031C70();
      sub_1C4031C90();
      result = sub_1C4031CC0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C3F0124C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RecentCall(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C40309F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F288, &qword_1C4038728);
  v43 = v4;
  result = sub_1C4031A00();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1C3F034C0(v27 + v28 * v24, v47, type metadata accessor for RecentCall);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1C3F035F4(v29 + v28 * v24, v47, type metadata accessor for RecentCall);
      }

      sub_1C3F035B0(&qword_1EC08F290, MEMORY[0x1E69695B8]);
      result = sub_1C4031130();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1C3F034C0(v47, *(v12 + 56) + v28 * v20, type metadata accessor for RecentCall);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1C3F01700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C4031A00();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 4 * v21);
      sub_1C4031C70();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 4 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_31;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_31:
  *v5 = v9;
  return result;
}

uint64_t sub_1C3F01A04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C4031A00();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      sub_1C4031C70();
      sub_1C4031CA0();
      result = sub_1C4031CC0();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_31;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_31:
  *v5 = v9;
  return result;
}

void *sub_1C3F01C90()
{
  v1 = v0;
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoalescingManager.RecentsStrategyKey(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F258, &qword_1C40386F8);
  v8 = *v0;
  v9 = sub_1C40319F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1C3F035F4(*(v8 + 48) + v24, v7, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        v25 = *(v29 + 72) * v23;
        sub_1C3F035F4(*(v8 + 56) + v25, v4, type metadata accessor for CoalescingManager.Group);
        sub_1C3F034C0(v7, *(v10 + 48) + v24, type metadata accessor for CoalescingManager.RecentsStrategyKey);
        result = sub_1C3F034C0(v4, *(v10 + 56) + v25, type metadata accessor for CoalescingManager.Group);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1C3F01F7C()
{
  v1 = v0;
  v2 = type metadata accessor for CoalescingManager.Group(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F260, &qword_1C4038700);
  v5 = *v0;
  v6 = sub_1C40319F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1C3F035F4(*(v5 + 56) + v22, v4, type metadata accessor for CoalescingManager.Group);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_1C3F034C0(v4, *(v7 + 56) + v22, type metadata accessor for CoalescingManager.Group);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1C3F021B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
  v2 = *v0;
  v3 = sub_1C40319F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v27 = *(v22 + 24);
        v26 = *(v22 + 32);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v27;
        *(v29 + 32) = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C3F02350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
  v2 = *v0;
  v3 = sub_1C40319F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C3F024D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F280, &qword_1C4038720);
  v2 = *v0;
  v3 = sub_1C40319F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1C3F02634()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCall(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C40309F0();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F288, &qword_1C4038728);
  v5 = *v0;
  v6 = sub_1C40319F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1C3F035F4(*(v5 + 56) + v26, v35, type metadata accessor for RecentCall);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1C3F034C0(v25, *(v27 + 56) + v26, type metadata accessor for RecentCall);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1C3F02960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCall(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F029C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C3F029FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C40319F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 4 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 4 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C3F02BC4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C40319F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1C3F02D14(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_1C3F3C788(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01A04(v15, v6 & 1, &qword_1EC08F238, &unk_1C4038DE0);
    v10 = sub_1C3F3C788(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1C3F02BC4(&qword_1EC08F238, &unk_1C4038DE0);
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C40318C0();
    MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
    sub_1C40319C0();
    MEMORY[0x1C6932F70](39, 0xE100000000000000);
    sub_1C40319D0();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v7 = a1 + 56;
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v16 = *v7;
      v6 = *(v7 - 8);
      v24 = *a3;
      v25 = sub_1C3F3C788(v6);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v30 = v26;
      if (v24[3] < v29)
      {
        sub_1C3F01A04(v29, 1, &qword_1EC08F238, &unk_1C4038DE0);
        v25 = sub_1C3F3C788(v6);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v30)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v32[6] + v25) = v6;
      *(v32[7] + 8 * v25) = v16;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v34;
      v7 += 16;
      if (v4 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

int64_t sub_1C3F03094()
{
  v1 = v0;
  v2 = type metadata accessor for CallFetchRequest(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  sub_1C40309E0();
  *&v5[*(v2 + 20)] = 0xF000000000000000;
  v8 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = sub_1C40311C0();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v5[*(v2 + 24)];
  *v13 = v10;
  v13[1] = v12;
  sub_1C3F034C0(v5, v7, type metadata accessor for CallFetchRequest);
  v19[1] = *&v7[*(v2 + 20)];
  v14 = sub_1C3F1AFD8();
  v15 = [v1 callCountWithPredicate_];

  sub_1C3F03460(v7, type metadata accessor for CallFetchRequest);
  sub_1C3F03800(0, &qword_1EC08F210, off_1E81DB518);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  InstanceSize = class_getInstanceSize(ObjCClassFromMetadata);
  result = InstanceSize * v15;
  if ((InstanceSize * v15) >> 64 != (InstanceSize * v15) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F0326C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F270, &qword_1C4038710);
    v3 = sub_1C4031890();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1C40311C0();
      sub_1C4031C70();
      v27 = v7;
      sub_1C4031280();
      v8 = sub_1C4031CC0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1C40311C0();
        v18 = v17;
        if (v16 == sub_1C40311C0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1C4031BF0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C3F03460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3F034C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C3F03528()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F278, &qword_1C4038718);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1C3EFEC58(v1, v2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3F035B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C40309F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F035F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3F0365C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F298, &unk_1C403D860) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CallFetchRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1C3EE4204;

  return sub_1C3EFBD0C(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_1C3F03800(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1C3F03848()
{
  result = qword_1EC08F2C0;
  if (!qword_1EC08F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F2C0);
  }

  return result;
}

uint64_t sub_1C3F038BC(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall(0);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v19 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C4031950();
    v23 = a1 + 56;
    result = sub_1C4031770();
    v7 = result;
    v8 = 0;
    v24 = *(a1 + 36);
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v23 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = v21;
      sub_1C3EF033C(*(a1 + 48) + *(v22 + 72) * v7, v21);
      RecentCall.chRecentCall.getter();
      sub_1C3EF1564(v11, type metadata accessor for RecentCall);
      sub_1C4031920();
      sub_1C4031960();
      sub_1C4031970();
      result = sub_1C4031930();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v12 = *(v23 + 8 * v10);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v20 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1C3E97CDC(v7, v24, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_1C3E97CDC(v7, v24, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_1C3F03B74(uint64_t a1)
{
  v3 = type metadata accessor for RecentCall(0);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C40309F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C3EF02C0(0, v9, 0);
  v10 = v42;
  v11 = a1 + 56;
  result = sub_1C4031770();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 64;
  v32 = v9;
  v33 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_1C3EF033C(*(a1 + 48) + *(v39 + 72) * v14, v38);
    (*v36)(v8, v19, v5);
    sub_1C3EF1564(v19, type metadata accessor for RecentCall);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C3EF02C0((v21 > 1), v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1C3E97CDC(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1C3E97CDC(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1C3F03F28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF30, &qword_1C4038050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4030D10();
  __swift_project_value_buffer(v5, qword_1EC0B0CE0);
  v6 = sub_1C4030CF0();
  v7 = sub_1C40315D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1C3EEFC68(0x4E66497075746573, 0xEF29286465646565, &v15);
    _os_log_impl(&dword_1C3E90000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C6934650](v9, -1, -1);
    MEMORY[0x1C6934650](v8, -1, -1);
  }

  v10 = [objc_allocWithZone(CHFeatureFlags) init];
  v11 = [v10 isDefaultDialerEnabled];

  if (v11)
  {
    v12 = sub_1C40314B0();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;

    sub_1C3EEDDDC(0, 0, v4, &unk_1C4038838, v13);
  }
}

uint64_t sub_1C3F04194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F138, &qword_1C4038468);
  v4[7] = swift_task_alloc();
  v5 = sub_1C4031630();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F0428C, 0, 0);
}

uint64_t sub_1C3F0428C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1C4031640();

  sub_1C4031620();
  swift_beginAccess();
  v2 = sub_1C3F08A9C(&qword_1EC08F140, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C3F043D4;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1C3F043D4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1C3F0463C;
  }

  else
  {
    v2 = sub_1C3F044E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C3F04504()
{
  v1 = v0[7];
  v2 = sub_1C4030730();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_1EC08EAB0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EC08F150;

    return MEMORY[0x1EEE6DFA0](sub_1C3F046C8, v5, 0);
  }
}

uint64_t sub_1C3F0463C()
{
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C3F046C8()
{
  v10 = v0;
  if (qword_1EC08EB78 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4030D10();
  __swift_project_value_buffer(v1, qword_1EC0B0CE0);
  v2 = sub_1C4030CF0();
  v3 = sub_1C40315D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1C3EEFC68(0xD00000000000001BLL, 0x80000001C4056CE0, &v9);
    _os_log_impl(&dword_1C3E90000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1C6934650](v5, -1, -1);
    MEMORY[0x1C6934650](v4, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1C3F04884, 0, 0);
}

uint64_t sub_1C3F04884()
{
  sub_1C3EED388(v0[7], &qword_1EC08F138, &qword_1C4038468);
  v1 = sub_1C3F08A9C(&qword_1EC08F140, MEMORY[0x1E6969EF8], MEMORY[0x1E6969F00]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1C3F043D4;
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_1C3F04974(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F208, &qword_1C4038678);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F04A40, 0, 0);
}

uint64_t sub_1C3F04A40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = *(v1[19] + 16);
  sub_1C3F038BC(v1[18]);
  sub_1C3F08938();
  v8 = sub_1C40313E0();
  v1[23] = v8;

  v1[2] = v1;
  v1[3] = sub_1C3EFB1F8;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFB344;
  v1[13] = &block_descriptor_19;
  [v7 addArrayToCallHistory:v8 withCompletion:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

void *sub_1C3F04C18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1C40309F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v10;
  v11 = type metadata accessor for RecentCall(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v34 - v14;
  v15 = *(v1 + 16);
  v48 = *(a1 + *(type metadata accessor for CallFetchRequest(0) + 20));
  v16 = sub_1C3F1AFD8();
  v17 = [v15 callsWithPredicate:v16 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];

  sub_1C3F08938();
  v18 = sub_1C40313F0();

  if (v18 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C40317E0())
  {
    v20 = 0;
    v44 = v18 & 0xFFFFFFFFFFFFFF8;
    v45 = v18 & 0xC000000000000001;
    v42 = (v7 + 48);
    v36 = (v7 + 16);
    v37 = (v7 + 32);
    v47 = MEMORY[0x1E69E7CC0];
    v35 = (v7 + 8);
    v43 = v18;
    while (1)
    {
      if (v45)
      {
        v21 = MEMORY[0x1C6933590](v20, v18);
      }

      else
      {
        if (v20 >= *(v44 + 16))
        {
          goto LABEL_18;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = v5;
      v24 = v6;
      v25 = [v21 uniqueId];
      sub_1C40311C0();

      v6 = v24;
      v5 = v23;
      sub_1C4030990();

      if ((*v42)(v23, 1, v6) == 1)
      {

        sub_1C3EED388(v23, &qword_1EC08F218, &qword_1C4041840);
      }

      else
      {
        v26 = v40;
        (*v37)(v40, v23, v6);
        v27 = v41;
        (*v36)(v41, v26, v6);
        v28 = v38;
        RecentCall.init(_:uniqueID:)(v22, v27, v38);
        (*v35)(v26, v6);
        sub_1C3EF19F8(v28, v46, type metadata accessor for RecentCall);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1C3EFFE80(0, v47[2] + 1, 1, v47);
        }

        v30 = v47[2];
        v29 = v47[3];
        if (v30 >= v29 >> 1)
        {
          v47 = sub_1C3EFFE80((v29 > 1), v30 + 1, 1, v47);
        }

        v31 = v46;
        v32 = v47;
        v47[2] = v30 + 1;
        sub_1C3EF19F8(v31, v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, type metadata accessor for RecentCall);
      }

      v18 = v43;
      ++v20;
      if (v7 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v47;
}

void *sub_1C3F05108(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F218, &qword_1C4041840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_1C40309F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v11;
  v12 = type metadata accessor for RecentCall(0);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  v53 = *(v14 - 1);
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F048, &qword_1C4038260);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  if (qword_1EC08EB78 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v20 = sub_1C4030D10();
    __swift_project_value_buffer(v20, qword_1EC0B0CE0);
    (*(v17 + 16))(v19, a1, v16);
    v21 = sub_1C4030CF0();
    v22 = sub_1C40315D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v21;
      v24 = v23;
      v49 = swift_slowAlloc();
      v55 = v49;
      *v24 = 136446466;
      *(v24 + 4) = sub_1C3EEFC68(0x736C6C6143746567, 0xEF293A6874697728, &v55);
      *(v24 + 12) = 2080;
      sub_1C3F08984();
      LODWORD(v44) = v22;
      v25 = sub_1C4031BB0();
      v50 = v2;
      v26 = v8;
      v28 = v27;
      (*(v17 + 8))(v19, v16);
      v29 = sub_1C3EEFC68(v25, v28, &v55);
      v8 = v26;
      v2 = v50;

      *(v24 + 14) = v29;
      v30 = v45;
      _os_log_impl(&dword_1C3E90000, v45, v44, "%{public}s fetching calls with predicate: %s", v24, 0x16u);
      v17 = v49;
      swift_arrayDestroy();
      MEMORY[0x1C6934650](v17, -1, -1);
      MEMORY[0x1C6934650](v24, -1, -1);
    }

    else
    {

      v31 = *(v17 + 8);
      v17 += 8;
      v31(v19, v16);
    }

    v55 = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
    v32 = v51;
    sub_1C4030A80();
    (*(v53 + 8))(v32, v54);
    a1 = [*(v2 + 16) callsWithPredicate:0 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];
    sub_1C3F08938();
    v16 = sub_1C40313F0();

    if (v16 >> 62)
    {
      break;
    }

    v53 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      goto LABEL_25;
    }

LABEL_7:
    v19 = 0;
    v50 = v16 & 0xFFFFFFFFFFFFFF8;
    v51 = (v16 & 0xC000000000000001);
    v49 = v8 + 6;
    v44 = v8 + 2;
    v45 = v8 + 4;
    v54 = MEMORY[0x1E69E7CC0];
    v43 = v8 + 1;
    while (1)
    {
      if (v51)
      {
        v33 = MEMORY[0x1C6933590](v19, v16);
      }

      else
      {
        if (v19 >= *(v50 + 16))
        {
          goto LABEL_22;
        }

        v33 = *(v16 + 8 * v19 + 32);
      }

      v8 = v33;
      v34 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      a1 = v6;
      v35 = v7;
      v36 = [v33 uniqueId];
      v17 = sub_1C40311C0();
      v2 = v37;

      v7 = v35;
      v6 = a1;
      sub_1C4030990();

      if ((v49->isa)(a1, 1, v7) == 1)
      {

        sub_1C3EED388(a1, &qword_1EC08F218, &qword_1C4041840);
      }

      else
      {
        v38 = v47;
        (v45->isa)(v47, a1, v7);
        a1 = v48;
        (v44->isa)(v48, v38, v7);
        RecentCall.init(_:uniqueID:)(v8, a1, v52);
        (v43->isa)(v38, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1C3EFFE80(0, v54[2] + 1, 1, v54);
        }

        v2 = v54[2];
        v39 = v54[3];
        v8 = (v2 + 1);
        if (v2 >= v39 >> 1)
        {
          v54 = sub_1C3EFFE80((v39 > 1), v2 + 1, 1, v54);
        }

        v40 = v54;
        v54[2] = v8;
        sub_1C3EF19F8(v52, v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v2, type metadata accessor for RecentCall);
      }

      ++v19;
      if (v34 == v53)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v53 = sub_1C40317E0();
  if (v53)
  {
    goto LABEL_7;
  }

LABEL_25:
  v54 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v54;
}

uint64_t sub_1C3F058D0(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v4 = sub_1C40309F0();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v5 = type metadata accessor for RecentCall(0);
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = type metadata accessor for CallFetchRequest(0);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F05AE4, 0, 0);
}

uint64_t sub_1C3F05AE4()
{
  v217 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[36];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C3F03B74(v3);
  sub_1C40309E0();
  *(v1 + *(v2 + 20)) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1C40311C0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v210[55];
  v11 = v210[56];
  v12 = (v10 + *(v210[54] + 24));
  *v12 = v7;
  v12[1] = v9;
  sub_1C3EF19F8(v10, v11, type metadata accessor for CallFetchRequest);
  v201 = sub_1C3F04C18(v11);
  v204 = v210[47];
  v13 = v210[42];
  v14 = v210[36];
  v15 = v14 + 56;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 56);
  v19 = (63 - v17) >> 6;
  v200 = (v13 + 16);
  v195 = v210[42];
  v197 = (v13 + 8);

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v211 = v14 + 56;
  v205 = v14;
  for (i = v19; ; v19 = i)
  {
    v209 = v22;
    if (!v18)
    {
      break;
    }

    v23 = v21;
LABEL_14:
    v24 = v210[52];
    v25 = v210[53];
    v26 = v210[45];
    v27 = v210[41];
    v28 = *(v204 + 72);
    sub_1C3EF033C(*(v14 + 48) + v28 * (__clz(__rbit64(v18)) | (v23 << 6)), v25);
    v29 = *v200;
    (*v200)(v26, v25, v27);
    sub_1C3EF033C(v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v216[0] = v209;
    v20 = sub_1C3F3C7F8(v26);
    v32 = v209[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_130;
    }

    v36 = v31;
    if (v209[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v20;
        sub_1C3F02634();
        v20 = v45;
        v209 = v216[0];
      }
    }

    else
    {
      v37 = v210[45];
      sub_1C3F0124C(v35, isUniquelyReferenced_nonNull_native);
      v209 = v216[0];
      v20 = sub_1C3F3C7F8(v37);
      if ((v36 & 1) != (v38 & 1))
      {
LABEL_120:

        return sub_1C4031C30();
      }
    }

    v18 &= v18 - 1;
    v39 = v210[52];
    v213 = v210[53];
    v40 = v210[45];
    v41 = v210[41];
    if (v36)
    {
      v22 = v209;
      sub_1C3F02960(v39, v209[7] + v20 * v28);
      (*v197)(v40, v41);
      v20 = sub_1C3EF1564(v213, type metadata accessor for RecentCall);
      v21 = v23;
    }

    else
    {
      v22 = v209;
      v209[(v20 >> 6) + 8] |= 1 << v20;
      v42 = v20;
      v29(v209[6] + *(v195 + 72) * v20, v40, v41);
      sub_1C3EF19F8(v39, v209[7] + v42 * v28, type metadata accessor for RecentCall);
      (*(v195 + 8))(v40, v41);
      v20 = sub_1C3EF1564(v213, type metadata accessor for RecentCall);
      v43 = v209[2];
      v34 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v34)
      {
        goto LABEL_132;
      }

      v209[2] = v44;
      v21 = v23;
      v14 = v205;
    }

    v15 = v211;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
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
      return MEMORY[0x1EEE6DEC8](v20);
    }

    if (v23 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  v46 = v210;

  v20 = v201;
  v199 = v201[2];
  if (v199)
  {
    v47 = 0;
    v48 = 0;
    v202 = v210[46];
    v198 = v201 + ((*(v210[47] + 80) + 32) & ~*(v210[47] + 80));
    v191 = v210[42];
    v196 = v210[37];
    v194 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v48 >= *(v20 + 16))
      {
        goto LABEL_129;
      }

      v56 = *(v204 + 72);
      v208 = v48;
      sub_1C3EF033C(&v198[v56 * v48], v46[51]);
      v212 = v47;
      if (!v22[2] || (v57 = sub_1C3F3C7F8(v46[51]), (v58 & 1) == 0))
      {
        if (qword_1EC08EB78 != -1)
        {
          swift_once();
        }

        v73 = v46[51];
        v74 = v46[48];
        v75 = sub_1C4030D10();
        __swift_project_value_buffer(v75, qword_1EC0B0CE0);
        sub_1C3EF033C(v73, v74);
        v76 = sub_1C4030CF0();
        v77 = sub_1C40315D0();
        v78 = os_log_type_enabled(v76, v77);
        v79 = v46[51];
        v80 = v46[48];
        if (v78)
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v216[0] = v50;
          *v49 = 136446210;
          sub_1C3F08A9C(&qword_1EC08F230, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v51 = sub_1C4031BB0();
          v53 = v52;
          sub_1C3EF1564(v80, type metadata accessor for RecentCall);
          v54 = sub_1C3EEFC68(v51, v53, v216);
          v46 = v210;

          *(v49 + 4) = v54;
          _os_log_impl(&dword_1C3E90000, v76, v77, "Failed to find call update for uniqueID %{public}s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1C6934650](v50, -1, -1);
          MEMORY[0x1C6934650](v49, -1, -1);
        }

        else
        {

          sub_1C3EF1564(v80, type metadata accessor for RecentCall);
        }

        v55 = v79;
        goto LABEL_27;
      }

      v60 = v46[50];
      v59 = v46[51];
      v61 = v46[49];
      sub_1C3EF033C(v22[7] + v57 * v56, v61);
      sub_1C3EF19F8(v61, v60, type metadata accessor for RecentCall);
      v62 = v202[24];
      v63 = *(v60 + v62);
      if (*(v59 + v62) != v63)
      {
        break;
      }

LABEL_50:
      v90 = v46[50];
      v91 = v46[51];
      sub_1C40309A0();
      v92 = v202[9];
      v93 = *(v90 + v92);
      if (v93 != *(v91 + v92))
      {
        v94 = *(v196 + 16);
        v95 = sub_1C4031190();
        v96 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        [v94 updateBytesOfDataUsedFor:v95 with:v96];
      }

      v98 = v46[50];
      v97 = v46[51];
      v99 = v202[18];
      v100 = *(v98 + v99);
      if (v100 != *(v97 + v99))
      {
        v101 = *(v196 + 16);
        v102 = sub_1C4031190();
        v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        [v101 updateMessageStatusFor:v102 with:v103];

        v98 = v46[50];
        v97 = v46[51];
      }

      v104 = v202[28];
      if (*(v98 + v104) == *(v97 + v104))
      {
      }

      else
      {
        v192 = *(v196 + 16);
        v193 = sub_1C4031190();

        v105 = *(v98 + v104);
        if (qword_1EC08EB00 != -1)
        {
          swift_once();
        }

        v106 = *(qword_1EC0B0C50 + 16);
        if (v106)
        {
          v190 = v105;
          v216[0] = MEMORY[0x1E69E7CC0];
          v203 = v106;
          v206 = qword_1EC0B0C50;
          sub_1C3EF0290(0, v106, 0);
          v107 = v216[0];
          v108 = v206 + 64;
          v20 = sub_1C4031770();
          v109 = v203;
          v110 = v206;
          v111 = v20;
          v112 = 0;
          while ((v111 & 0x8000000000000000) == 0 && v111 < 1 << *(v110 + 32))
          {
            v114 = v111 >> 6;
            if ((*(v108 + 8 * (v111 >> 6)) & (1 << v111)) == 0)
            {
              goto LABEL_124;
            }

            v115 = *(*(v110 + 48) + 8 * v111);
            v116 = *(*(v110 + 56) + v111);
            v117 = *(v110 + 36);
            v216[0] = v107;
            v119 = *(v107 + 16);
            v118 = *(v107 + 24);
            if (v119 >= v118 >> 1)
            {
              v129 = v117;
              v20 = sub_1C3EF0290((v118 > 1), v119 + 1, 1);
              v117 = v129;
              v109 = v203;
              v110 = v206;
              v107 = v216[0];
            }

            *(v107 + 16) = v119 + 1;
            v120 = v107;
            v121 = v107 + 16 * v119;
            *(v121 + 32) = v116;
            *(v121 + 40) = v115;
            v113 = 1 << *(v110 + 32);
            if (v111 >= v113)
            {
              goto LABEL_125;
            }

            v108 = v206 + 64;
            v122 = *(v206 + 64 + 8 * v114);
            if ((v122 & (1 << v111)) == 0)
            {
              goto LABEL_126;
            }

            if (v117 != *(v110 + 36))
            {
              goto LABEL_127;
            }

            v123 = v122 & (-2 << (v111 & 0x3F));
            if (v123)
            {
              v113 = __clz(__rbit64(v123)) | v111 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v124 = v114 << 6;
              v125 = (v206 + 72 + 8 * v114);
              v126 = v114 + 1;
              while (v126 < (v113 + 63) >> 6)
              {
                v128 = *v125++;
                v127 = v128;
                v124 += 64;
                ++v126;
                if (v128)
                {
                  v20 = sub_1C3E97CDC(v111, v117, 0);
                  v109 = v203;
                  v110 = v206;
                  v113 = __clz(__rbit64(v127)) + v124;
                  goto LABEL_60;
                }
              }

              v20 = sub_1C3E97CDC(v111, v117, 0);
              v109 = v203;
              v110 = v206;
            }

LABEL_60:
            ++v112;
            v111 = v113;
            v107 = v120;
            if (v112 == v109)
            {
              v46 = v210;
              v105 = v190;
              goto LABEL_78;
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
          goto LABEL_128;
        }

        v107 = MEMORY[0x1E69E7CC0];
LABEL_78:
        if (*(v107 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
          v130 = sub_1C4031A10();
        }

        else
        {
          v130 = MEMORY[0x1E69E7CC8];
        }

        v216[0] = v130;
        sub_1C3F02D14(v107, 1u, v216);
        v131 = v216[0];
        if (*(v216[0] + 16) && (v132 = sub_1C3F3C788(v105), (v133 & 1) != 0))
        {
          v134 = *(*(v131 + 56) + 8 * v132);
        }

        else
        {
          v134 = 0;
        }

        [v192 updateAutoAnsweredReasonFor:v193 with:v134];
      }

      v135 = v46[51];
      sub_1C3EF1564(v46[50], type metadata accessor for RecentCall);
      v55 = v135;
LABEL_27:
      sub_1C3EF1564(v55, type metadata accessor for RecentCall);
      v22 = v209;
      v48 = v208 + 1;
      v20 = v201;
      v47 = v212;
      if (v208 + 1 == v199)
      {

        v136 = v194;
        goto LABEL_91;
      }
    }

    (*v200)(v46[44], v46[50], v46[41]);
    sub_1C3F029C4(v212, 0);
    v64 = v194;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v216[0] = v194;
    v67 = sub_1C3F3C78C(v63);
    v68 = *(v194 + 16);
    v69 = (v66 & 1) == 0;
    v20 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_131;
    }

    v70 = v66;
    if (*(v194 + 24) < v20)
    {
      sub_1C3F00FBC(v20, v65);
      v71 = v216[0];
      v20 = sub_1C3F3C78C(v63);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_120;
      }

      v67 = v20;
      v64 = v71;
      if (v70)
      {
        goto LABEL_45;
      }

LABEL_43:
      v64[(v67 >> 6) + 8] |= 1 << v67;
      *(v64[6] + v67) = v63;
      *(v64[7] + 8 * v67) = MEMORY[0x1E69E7CC0];
      v81 = v64[2];
      v34 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v34)
      {
        goto LABEL_133;
      }

      v64[2] = v82;
      goto LABEL_45;
    }

    if (v65)
    {
      if ((v66 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v20 = sub_1C3F024D8();
      v64 = v216[0];
      if ((v70 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    v194 = v64;
    v83 = v64[7];
    v84 = *(v83 + 8 * v67);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v83 + 8 * v67) = v84;
    if ((v85 & 1) == 0)
    {
      v84 = sub_1C3EFFEB4(0, v84[2] + 1, 1, v84);
      *(v83 + 8 * v67) = v84;
    }

    v87 = v84[2];
    v86 = v84[3];
    if (v87 >= v86 >> 1)
    {
      v84 = sub_1C3EFFEB4((v86 > 1), v87 + 1, 1, v84);
      *(v83 + 8 * v67) = v84;
    }

    v88 = v46[44];
    v89 = v46[41];
    v84[2] = v87 + 1;
    (*(v191 + 32))(v84 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v195 + 72) * v87, v88, v89);
    v212 = sub_1C3EFE5E4;
    goto LABEL_50;
  }

  v47 = 0;
  v136 = MEMORY[0x1E69E7CC8];
LABEL_91:

  v46[57] = v47;
  v46[58] = v136;
  if (!*(v136 + 16))
  {
    goto LABEL_110;
  }

  v137 = sub_1C3F3C78C(1);
  if (v138)
  {
    v139 = *(*(v136 + 56) + 8 * v137);
    v140 = *(v139 + 16);
    v141 = MEMORY[0x1E69E7CC0];
    if (v140)
    {
      v142 = v210[42];
      v216[0] = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v140, 0);
      v141 = v216[0];
      v143 = v139 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v144 = *(v195 + 72);
      v145 = *(v195 + 16);
      do
      {
        v146 = v210[43];
        v147 = v210[41];
        v145(v146, v143, v147);
        v148 = sub_1C40309A0();
        v150 = v149;
        (*v197)(v146, v147);
        v216[0] = v141;
        v152 = *(v141 + 16);
        v151 = *(v141 + 24);
        if (v152 >= v151 >> 1)
        {
          sub_1C3EF0270((v151 > 1), v152 + 1, 1);
          v141 = v216[0];
        }

        *(v141 + 16) = v152 + 1;
        v153 = v141 + 16 * v152;
        *(v153 + 32) = v148;
        *(v153 + 40) = v150;
        v143 += v144;
        --v140;
      }

      while (v140);
    }

    if (*(v141 + 16))
    {
      v154 = v210 + 10;
      v155 = v210[39];
      v156 = v210[40];
      v157 = v210[38];
      v214 = *(v210[37] + 16);
      v158 = objc_opt_self();
      v159 = sub_1C40313E0();

      v160 = [v158 predicateForCallsWithAnyUniqueIDs_];
      v210[59] = v160;

      v210[10] = v210;
      v210[15] = v210 + 35;
      v210[11] = sub_1C3F0707C;
      swift_continuation_init();
      v210[33] = v157;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v210 + 30);
      sub_1C4031460();
      (*(v155 + 32))(boxed_opaque_existential_1, v156, v157);
      v210[26] = MEMORY[0x1E69E9820];
      v210[27] = 1107296256;
      v210[28] = sub_1C3EFE5F4;
      v210[29] = &block_descriptor_14;
      [v214 setRead:1 forCallsWithPredicate:v160 completion:v210 + 26];
      (*(v155 + 8))(boxed_opaque_existential_1, v157);
LABEL_116:
      v20 = v154;

      return MEMORY[0x1EEE6DEC8](v20);
    }

    v46 = v210;
  }

  if (*(v46[58] + 16) && (v162 = sub_1C3F3C78C(0), (v163 & 1) != 0))
  {
    v164 = *(*(v46[58] + 56) + 8 * v162);
    v165 = *(v164 + 16);
    v166 = MEMORY[0x1E69E7CC0];
    if (v165)
    {
      v167 = v210[42];
      v216[0] = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v165, 0);
      v166 = v216[0];
      v168 = v164 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v169 = *(v167 + 72);
      v170 = *(v167 + 16);
      do
      {
        v172 = v210[42];
        v171 = v210[43];
        v173 = v210[41];
        v170(v171, v168, v173);
        v174 = sub_1C40309A0();
        v176 = v175;
        (*(v172 + 8))(v171, v173);
        v216[0] = v166;
        v178 = *(v166 + 16);
        v177 = *(v166 + 24);
        if (v178 >= v177 >> 1)
        {
          sub_1C3EF0270((v177 > 1), v178 + 1, 1);
          v166 = v216[0];
        }

        *(v166 + 16) = v178 + 1;
        v179 = v166 + 16 * v178;
        *(v179 + 32) = v174;
        *(v179 + 40) = v176;
        v168 += v169;
        --v165;
      }

      while (v165);
    }

    v46 = v210;
    if (*(v166 + 16))
    {
      v154 = v210 + 2;
      v183 = v210[39];
      v184 = v210[40];
      v185 = v210[38];
      v215 = *(v210[37] + 16);
      v186 = objc_opt_self();
      v187 = sub_1C40313E0();

      v188 = [v186 predicateForCallsWithAnyUniqueIDs_];
      v210[60] = v188;

      v210[2] = v210;
      v210[7] = v210 + 34;
      v210[3] = sub_1C3F075B0;
      swift_continuation_init();
      v210[25] = v185;
      v189 = __swift_allocate_boxed_opaque_existential_1(v210 + 22);
      sub_1C4031460();
      (*(v183 + 32))(v189, v184, v185);
      v210[18] = MEMORY[0x1E69E9820];
      v210[19] = 1107296256;
      v210[20] = sub_1C3EFE5F4;
      v210[21] = &block_descriptor_11;
      [v215 setRead:0 forCallsWithPredicate:v188 completion:v210 + 18];
      (*(v183 + 8))(v189, v185);
      goto LABEL_116;
    }

    v180 = v210[57];
    sub_1C3EF1564(v210[56], type metadata accessor for CallFetchRequest);
  }

  else
  {
LABEL_110:
    v180 = v46[57];
    sub_1C3EF1564(v46[56], type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v180, 0);

  v181 = v46[1];

  return v181();
}

uint64_t sub_1C3F0707C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3F0715C, 0, 0);
}

uint64_t sub_1C3F0715C()
{
  if (*(*(v0 + 464) + 16) && (v1 = sub_1C3F3C78C(0), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 464) + 56) + 8 * v1);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = *(v0 + 336);
      v30 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v4, 0);
      v5 = v30;
      v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v28 = *(v6 + 72);
      v8 = *(v6 + 16);
      do
      {
        v10 = *(v0 + 336);
        v9 = *(v0 + 344);
        v11 = *(v0 + 328);
        v8(v9, v7, v11);
        v12 = sub_1C40309A0();
        v14 = v13;
        (*(v10 + 8))(v9, v11);
        v16 = *(v30 + 16);
        v15 = *(v30 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1C3EF0270((v15 > 1), v16 + 1, 1);
        }

        *(v30 + 16) = v16 + 1;
        v17 = v30 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v7 += v28;
        --v4;
      }

      while (v4);
    }

    if (*(v5 + 16))
    {
      v22 = *(v0 + 312);
      v21 = *(v0 + 320);
      v23 = *(v0 + 304);
      v29 = *(*(v0 + 296) + 16);
      v24 = objc_opt_self();
      v25 = sub_1C40313E0();

      v26 = [v24 predicateForCallsWithAnyUniqueIDs_];
      *(v0 + 480) = v26;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 272;
      *(v0 + 24) = sub_1C3F075B0;
      swift_continuation_init();
      *(v0 + 200) = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      sub_1C4031460();
      (*(v22 + 32))(boxed_opaque_existential_1, v21, v23);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1C3EFE5F4;
      *(v0 + 168) = &block_descriptor_11;
      [v29 setRead:0 forCallsWithPredicate:v26 completion:v0 + 144];
      (*(v22 + 8))(boxed_opaque_existential_1, v23);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v18 = *(v0 + 456);
    sub_1C3EF1564(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  else
  {
    v18 = *(v0 + 456);
    sub_1C3EF1564(*(v0 + 448), type metadata accessor for CallFetchRequest);
  }

  sub_1C3F029C4(v18, 0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C3F075B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3F07690, 0, 0);
}

uint64_t sub_1C3F07690()
{
  v1 = v0[60];
  v2 = v0[57];
  sub_1C3EF1564(v0[56], type metadata accessor for CallFetchRequest);

  sub_1C3F029C4(v2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C3F077C4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1C40309F0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3F078EC, 0, 0);
}

uint64_t sub_1C3F078EC()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v24 = *(v0[20] + 16);
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C3EF0270(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v25 = *(v3 + 56);
    v26 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[23];
      v8 = v0[21];
      v26(v7, v5, v8);
      v9 = sub_1C40309A0();
      v11 = v10;
      (*v6)(v7, v8);
      v13 = *(v27 + 16);
      v12 = *(v27 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C3EF0270((v12 > 1), v13 + 1, 1);
      }

      *(v27 + 16) = v13 + 1;
      v14 = v27 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v5 += v25;
      --v2;
    }

    while (v2);
    v15 = v0[25];
    v16 = v0[26];
    v17 = v0[24];
    v18 = objc_opt_self();
    v19 = sub_1C40313E0();

    v20 = [v18 predicateForCallsWithAnyUniqueIDs_];
    v0[27] = v20;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1C3F07C40;
    swift_continuation_init();
    v0[17] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    sub_1C4031460();
    (*(v15 + 32))(boxed_opaque_existential_1, v16, v17);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C3EFE5F4;
    v0[13] = &block_descriptor_29;
    [v24 setRead:1 forCallsWithPredicate:v20 completion:v0 + 10];
    (*(v15 + 8))(boxed_opaque_existential_1, v17);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1C3F07C40()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3F07D20, 0, 0);
}

uint64_t sub_1C3F07D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C3F07D98(uint64_t *a1)
{
  v2[19] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F228, &qword_1C4038690);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C3F07E6C, 0, 0);
}

uint64_t sub_1C3F07E6C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[20];
  v4 = v1[21];
  v5 = *(v1[19] + 16);
  v9 = v1[23];
  v6 = sub_1C3F1AFD8();
  v1[24] = v6;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C3F0802C;
  swift_continuation_init();
  v1[17] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1C4031460();
  (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C3EFE5F4;
  v1[13] = &block_descriptor_0;
  [v5 deleteCallsWithPredicate:v6 completion:{v1 + 10, v9}];
  (*(v4 + 8))(boxed_opaque_existential_1, v3);

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1C3F0802C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C3F0810C, 0, 0);
}

uint64_t sub_1C3F0810C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C3F08184()
{
  sub_1C3EF75F4(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C3F08200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return sub_1C3F04974(a1);
}

id sub_1C3F082C4()
{
  v1 = *(v0 + 16);
  type metadata accessor for CallFetchRequest(0);
  v2 = sub_1C3F1AFD8();
  v3 = [v1 callCountWithPredicate_];

  return v3;
}

uint64_t sub_1C3F08340(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE4204;

  return sub_1C3F058D0(a1);
}

uint64_t sub_1C3F083D4(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EEB060;

  return sub_1C3F07D98(a1);
}

uint64_t sub_1C3F08468(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C3F0848C, 0, 0);
}

uint64_t sub_1C3F0848C()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C3F08530;

  return CHManager.markCallsAsRead(with:)(v0 + 2);
}

uint64_t sub_1C3F08530()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C3F08664, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C3F0867C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C3F08710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C3F08770(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C3F08804;
}

void sub_1C3F08804(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C3F08888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C3EE7A84;

  return sub_1C3F077C4(a1);
}

unint64_t sub_1C3F08938()
{
  result = qword_1EC08F210;
  if (!qword_1EC08F210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC08F210);
  }

  return result;
}

unint64_t sub_1C3F08984()
{
  result = qword_1EC08F050;
  if (!qword_1EC08F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F048, &qword_1C4038260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F050);
  }

  return result;
}

uint64_t sub_1C3F089E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3EE4204;

  return sub_1C3F04194(a1, v4, v5, v6);
}

uint64_t sub_1C3F08A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C3F08B04()
{
  v0 = sub_1C3F158B0(&unk_1F4387318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F568, &unk_1C4038BB0);
  result = swift_arrayDestroy();
  off_1EC08F330 = v0;
  return result;
}

uint64_t sub_1C3F08BB0()
{
  v0 = sub_1C3F1538C(&unk_1F4387118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F560, &qword_1C4038BA8);
  result = swift_arrayDestroy();
  off_1EC08F338 = v0;
  return result;
}

uint64_t sub_1C3F08C5C()
{
  v0 = sub_1C3F159F4(&unk_1F43874B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F558, &qword_1C4038BA0);
  result = swift_arrayDestroy();
  off_1EC08F340 = v0;
  return result;
}

uint64_t sub_1C3F08D08()
{
  v0 = sub_1C3F153A0(&unk_1F4387180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F550, &qword_1C4038B98);
  result = swift_arrayDestroy();
  off_1EC08F348 = v0;
  return result;
}

uint64_t sub_1C3F08DB4()
{
  v0 = sub_1C3F158D8(&unk_1F43873D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F548, &qword_1C4038B90);
  result = swift_arrayDestroy();
  off_1EC08F350 = v0;
  return result;
}

uint64_t sub_1C3F08E60()
{
  v0 = sub_1C3F153B4(&unk_1F4387230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F540, &qword_1C4038B88);
  result = swift_arrayDestroy();
  off_1EC08F358 = v0;
  return result;
}

uint64_t sub_1C3F08F0C()
{
  v0 = sub_1C3F1609C(&unk_1F43879B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F538, &qword_1C4038B80);
  result = swift_arrayDestroy();
  off_1EC08F360 = v0;
  return result;
}

uint64_t sub_1C3F08FB0()
{
  v1 = 0x6F696475612ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F656469762ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_1C3F09004()
{
  v0 = sub_1C3F15A08(&unk_1F4387520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F530, &qword_1C4038B78);
  result = swift_arrayDestroy();
  off_1EC08F368 = v0;
  return result;
}

uint64_t sub_1C3F090B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A70C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F09134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A5BC();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t sub_1C3F09188()
{
  v0 = sub_1C3F159E0(&unk_1F4387420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F528, &qword_1C4038B70);
  result = swift_arrayDestroy();
  off_1EC08F370 = v0;
  return result;
}

uint64_t sub_1C3F09208(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C3F0928C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C3F092FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A954();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0937C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v7, v8, v9);
}

uint64_t sub_1C3F093F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A804();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t ServiceProvider.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C4056D00 == a2;
  if (v5 || (v6 = a1, (sub_1C4031BF0() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000012 && 0x80000001C4056D20 == a2 || (result = sub_1C4031BF0(), v7 = a2, (result & 1) != 0))
  {
    v7 = 1;
    goto LABEL_7;
  }

LABEL_8:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

unint64_t sub_1C3F09520()
{
  result = qword_1EC08F378;
  if (!qword_1EC08F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F378);
  }

  return result;
}

unint64_t sub_1C3F09574(void *a1)
{
  a1[1] = sub_1C3F095C4();
  a1[2] = sub_1C3F09618();
  a1[3] = sub_1C3F0966C();
  a1[4] = sub_1C3EF79AC();
  a1[5] = sub_1C3F096C0();
  result = sub_1C3F09714();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F095C4()
{
  result = qword_1EC08F380;
  if (!qword_1EC08F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F380);
  }

  return result;
}

unint64_t sub_1C3F09618()
{
  result = qword_1EC08F388;
  if (!qword_1EC08F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F388);
  }

  return result;
}

unint64_t sub_1C3F0966C()
{
  result = qword_1EC08F390;
  if (!qword_1EC08F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F390);
  }

  return result;
}

unint64_t sub_1C3F096C0()
{
  result = qword_1EC08F398;
  if (!qword_1EC08F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F398);
  }

  return result;
}

unint64_t sub_1C3F09714()
{
  result = qword_1EC08F3A0;
  if (!qword_1EC08F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3A0);
  }

  return result;
}

unint64_t sub_1C3F09768(void *a1)
{
  a1[1] = sub_1C3F097B8();
  a1[2] = sub_1C3F0980C();
  a1[3] = sub_1C3F09860();
  a1[4] = sub_1C3F098B4();
  a1[5] = sub_1C3F09908();
  result = sub_1C3F0995C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F097B8()
{
  result = qword_1EC08F3A8;
  if (!qword_1EC08F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3A8);
  }

  return result;
}

unint64_t sub_1C3F0980C()
{
  result = qword_1EC08F3B0;
  if (!qword_1EC08F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3B0);
  }

  return result;
}

unint64_t sub_1C3F09860()
{
  result = qword_1EC08F3B8;
  if (!qword_1EC08F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3B8);
  }

  return result;
}

unint64_t sub_1C3F098B4()
{
  result = qword_1EC08F3C0;
  if (!qword_1EC08F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3C0);
  }

  return result;
}

unint64_t sub_1C3F09908()
{
  result = qword_1EC08F3C8;
  if (!qword_1EC08F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3C8);
  }

  return result;
}

unint64_t sub_1C3F0995C()
{
  result = qword_1EC08F3D0;
  if (!qword_1EC08F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3D0);
  }

  return result;
}

unint64_t sub_1C3F099B0(void *a1)
{
  a1[1] = sub_1C3F09A00();
  a1[2] = sub_1C3F09A54();
  a1[3] = sub_1C3F09AA8();
  a1[4] = sub_1C3F09AFC();
  a1[5] = sub_1C3F09B50();
  result = sub_1C3F09BA4();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09A00()
{
  result = qword_1EC08F3D8;
  if (!qword_1EC08F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3D8);
  }

  return result;
}

unint64_t sub_1C3F09A54()
{
  result = qword_1EC08F3E0;
  if (!qword_1EC08F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3E0);
  }

  return result;
}

unint64_t sub_1C3F09AA8()
{
  result = qword_1EC08F3E8;
  if (!qword_1EC08F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3E8);
  }

  return result;
}

unint64_t sub_1C3F09AFC()
{
  result = qword_1EC08F3F0;
  if (!qword_1EC08F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3F0);
  }

  return result;
}

unint64_t sub_1C3F09B50()
{
  result = qword_1EC08F3F8;
  if (!qword_1EC08F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F3F8);
  }

  return result;
}

unint64_t sub_1C3F09BA4()
{
  result = qword_1EC08F400;
  if (!qword_1EC08F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F400);
  }

  return result;
}

unint64_t sub_1C3F09BF8(void *a1)
{
  a1[1] = sub_1C3F09C48();
  a1[2] = sub_1C3F09C9C();
  a1[3] = sub_1C3F09CF0();
  a1[4] = sub_1C3F09D44();
  a1[5] = sub_1C3F09D98();
  result = sub_1C3F09DEC();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09C48()
{
  result = qword_1EC08F408;
  if (!qword_1EC08F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F408);
  }

  return result;
}

unint64_t sub_1C3F09C9C()
{
  result = qword_1EC08F410;
  if (!qword_1EC08F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F410);
  }

  return result;
}

unint64_t sub_1C3F09CF0()
{
  result = qword_1EC08F418;
  if (!qword_1EC08F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F418);
  }

  return result;
}

unint64_t sub_1C3F09D44()
{
  result = qword_1EC08F420;
  if (!qword_1EC08F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F420);
  }

  return result;
}

unint64_t sub_1C3F09D98()
{
  result = qword_1EC08F428;
  if (!qword_1EC08F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F428);
  }

  return result;
}

unint64_t sub_1C3F09DEC()
{
  result = qword_1EC08F430;
  if (!qword_1EC08F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F430);
  }

  return result;
}

unint64_t sub_1C3F09E40(void *a1)
{
  a1[1] = sub_1C3F09E90();
  a1[2] = sub_1C3F09EE4();
  a1[3] = sub_1C3F09F38();
  a1[4] = sub_1C3F09F8C();
  a1[5] = sub_1C3F09FE0();
  result = sub_1C3F0A034();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F09E90()
{
  result = qword_1EC08F438;
  if (!qword_1EC08F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F438);
  }

  return result;
}

unint64_t sub_1C3F09EE4()
{
  result = qword_1EC08F440;
  if (!qword_1EC08F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F440);
  }

  return result;
}

unint64_t sub_1C3F09F38()
{
  result = qword_1EC08F448;
  if (!qword_1EC08F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F448);
  }

  return result;
}

unint64_t sub_1C3F09F8C()
{
  result = qword_1EC08F450;
  if (!qword_1EC08F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F450);
  }

  return result;
}

unint64_t sub_1C3F09FE0()
{
  result = qword_1EC08F458;
  if (!qword_1EC08F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F458);
  }

  return result;
}

unint64_t sub_1C3F0A034()
{
  result = qword_1EC08F460;
  if (!qword_1EC08F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F460);
  }

  return result;
}

unint64_t sub_1C3F0A088(void *a1)
{
  a1[1] = sub_1C3F0A0D8();
  a1[2] = sub_1C3F0A12C();
  a1[3] = sub_1C3F0A180();
  a1[4] = sub_1C3F0A1D4();
  a1[5] = sub_1C3F0A228();
  result = sub_1C3F0A27C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A0D8()
{
  result = qword_1EC08F468;
  if (!qword_1EC08F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F468);
  }

  return result;
}

unint64_t sub_1C3F0A12C()
{
  result = qword_1EC08F470;
  if (!qword_1EC08F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F470);
  }

  return result;
}

unint64_t sub_1C3F0A180()
{
  result = qword_1EC08F478;
  if (!qword_1EC08F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F478);
  }

  return result;
}

unint64_t sub_1C3F0A1D4()
{
  result = qword_1EC08F480;
  if (!qword_1EC08F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F480);
  }

  return result;
}

unint64_t sub_1C3F0A228()
{
  result = qword_1EC08F488;
  if (!qword_1EC08F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F488);
  }

  return result;
}

unint64_t sub_1C3F0A27C()
{
  result = qword_1EC08F490;
  if (!qword_1EC08F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F490);
  }

  return result;
}

unint64_t sub_1C3F0A2D0(void *a1)
{
  a1[1] = sub_1C3F0A320();
  a1[2] = sub_1C3F0A374();
  a1[3] = sub_1C3F0A3C8();
  a1[4] = sub_1C3F0A41C();
  a1[5] = sub_1C3F0A470();
  result = sub_1C3F0A4C4();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A320()
{
  result = qword_1EC08F498;
  if (!qword_1EC08F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F498);
  }

  return result;
}

unint64_t sub_1C3F0A374()
{
  result = qword_1EC08F4A0;
  if (!qword_1EC08F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4A0);
  }

  return result;
}

unint64_t sub_1C3F0A3C8()
{
  result = qword_1EC08F4A8;
  if (!qword_1EC08F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4A8);
  }

  return result;
}

unint64_t sub_1C3F0A41C()
{
  result = qword_1EC08F4B0;
  if (!qword_1EC08F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4B0);
  }

  return result;
}

unint64_t sub_1C3F0A470()
{
  result = qword_1EC08F4B8;
  if (!qword_1EC08F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4B8);
  }

  return result;
}

unint64_t sub_1C3F0A4C4()
{
  result = qword_1EC08F4C0;
  if (!qword_1EC08F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4C0);
  }

  return result;
}

unint64_t sub_1C3F0A518(void *a1)
{
  a1[1] = sub_1C3F0A568();
  a1[2] = sub_1C3F0A5BC();
  a1[3] = sub_1C3F0A610();
  a1[4] = sub_1C3F0A664();
  a1[5] = sub_1C3F0A6B8();
  result = sub_1C3F0A70C();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A568()
{
  result = qword_1EC08F4C8;
  if (!qword_1EC08F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4C8);
  }

  return result;
}

unint64_t sub_1C3F0A5BC()
{
  result = qword_1EC08F4D0;
  if (!qword_1EC08F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4D0);
  }

  return result;
}

unint64_t sub_1C3F0A610()
{
  result = qword_1EC08F4D8;
  if (!qword_1EC08F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4D8);
  }

  return result;
}

unint64_t sub_1C3F0A664()
{
  result = qword_1EC08F4E0;
  if (!qword_1EC08F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4E0);
  }

  return result;
}

unint64_t sub_1C3F0A6B8()
{
  result = qword_1EC08F4E8;
  if (!qword_1EC08F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4E8);
  }

  return result;
}

unint64_t sub_1C3F0A70C()
{
  result = qword_1EC08F4F0;
  if (!qword_1EC08F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4F0);
  }

  return result;
}

unint64_t sub_1C3F0A760(void *a1)
{
  a1[1] = sub_1C3F0A7B0();
  a1[2] = sub_1C3F0A804();
  a1[3] = sub_1C3F0A858();
  a1[4] = sub_1C3F0A8AC();
  a1[5] = sub_1C3F0A900();
  result = sub_1C3F0A954();
  a1[6] = result;
  return result;
}

unint64_t sub_1C3F0A7B0()
{
  result = qword_1EC08F4F8;
  if (!qword_1EC08F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F4F8);
  }

  return result;
}

unint64_t sub_1C3F0A804()
{
  result = qword_1EC08F500;
  if (!qword_1EC08F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F500);
  }

  return result;
}

unint64_t sub_1C3F0A858()
{
  result = qword_1EC08F508;
  if (!qword_1EC08F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F508);
  }

  return result;
}

unint64_t sub_1C3F0A8AC()
{
  result = qword_1EC08F510;
  if (!qword_1EC08F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F510);
  }

  return result;
}

unint64_t sub_1C3F0A900()
{
  result = qword_1EC08F518;
  if (!qword_1EC08F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F518);
  }

  return result;
}

unint64_t sub_1C3F0A954()
{
  result = qword_1EC08F520;
  if (!qword_1EC08F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F520);
  }

  return result;
}

uint64_t ExpressibleByArgumentEnum.description.getter(uint64_t a1, uint64_t a2)
{
  v44 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v41 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = sub_1C40316A0();
  v42 = *(v43 - 8);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v10 = &v41 - v9;
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v57 = (*(a2 + 64))(a1, a2);
  v54 = a1;
  v55 = a2;
  v45 = v2;
  v56 = v2;
  v49 = a1;
  v50 = a2;
  v51 = sub_1C3F0BA6C;
  v52 = &v53;
  sub_1C4031120();
  swift_getWitnessTable();
  sub_1C4031360();

  if ((*(v11 + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v42 + 8))(v10, v43);
    v17 = v46;
    sub_1C4031390();
    v18 = v48;
    swift_getAssociatedConformanceWitness();
    v19 = sub_1C4031BB0();
    v21 = v20;
    (*(v47 + 8))(v17, v18);
    if (sub_1C4031310())
    {
      v22 = sub_1C3F0BAF4(1uLL, v19, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v19 = MEMORY[0x1C6932F10](v22, v24, v26, v28);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v10, TupleTypeMetadata2);
    v29 = sub_1C4031310();
    (*(v11 + 16))(v14, v16, TupleTypeMetadata2);
    v31 = *v14;
    v30 = *(v14 + 1);
    v32 = *(TupleTypeMetadata2 + 48);
    if (v29)
    {
      v33 = sub_1C3F0BAF4(1uLL, *v14, *(v14 + 1));
      v35 = v34;
      v48 = v36;
      v38 = v37;

      (*(*(a1 - 8) + 8))(&v14[v32], a1);
      v31 = MEMORY[0x1C6932F10](v33, v35, v48, v38);
      v30 = v39;
    }

    else
    {
      (*(*(a1 - 8) + 8))(&v14[v32], a1);
    }

    v57 = 46;
    v58 = 0xE100000000000000;
    MEMORY[0x1C6932F70](v31, v30);

    v19 = v57;
    (*(v11 + 8))(v16, TupleTypeMetadata2);
  }

  return v19;
}

uint64_t ExpressibleByArgumentEnum.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v109 = a1;
  v87 = a5;
  v8 = sub_1C40316A0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v81 - v9;
  v103 = *(a4 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v81 - v11;
  v105 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v81 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = sub_1C40316A0();
  v99 = *(v101 - 8);
  v15 = MEMORY[0x1EEE9AC00](v101);
  v104 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v81 - v17;
  v19 = sub_1C4030720();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  v26 = *(a4 + 64);
  v110 = a3;
  v93 = a4;
  v27 = v26(a3, a4);
  sub_1C4030700();
  v86 = a2;
  v28 = sub_1C4031220();
  v30 = v29;
  v31 = *(v20 + 16);
  v83 = v25;
  v31(v23, v25, v19);
  v32 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v33 = TupleTypeMetadata2;
  v34 = swift_allocObject();
  v84 = v20;
  v35 = *(v20 + 32);
  v85 = v19;
  v35(v34 + v32, v23, v19);
  v36 = sub_1C3F0BC0C(v28, v30, sub_1C3F0BBA4, v34);
  v109 = v37;

  v38 = *(v27 + 64);
  v88 = v27 + 64;
  v39 = 1 << *(v27 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v100 = v33 - 8;
  v89 = v105 + 16;
  v108 = (v105 + 32);
  v91 = (v106 + 8);
  v98 = (v105 + 8);
  v99 += 4;
  v95 = v27;
  v43 = v97;

  v45 = 0;
  v107 = v36;
  if (v41)
  {
    while (1)
    {
      v46 = v45;
LABEL_12:
      v50 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v51 = v50 | (v46 << 6);
      v52 = (*(v95 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v105;
      v56 = v90;
      v57 = v110;
      (*(v105 + 16))(v90, *(v95 + 56) + *(v105 + 72) * v51, v110);
      v58 = TupleTypeMetadata2;
      v59 = *(TupleTypeMetadata2 + 48);
      v60 = v104;
      *v104 = v54;
      v60[1] = v53;
      v61 = *(v55 + 32);
      v49 = v60;
      v62 = v56;
      v33 = v58;
      v61(v60 + v59, v62, v57);
      v63 = *(v33 - 8);
      (*(v63 + 56))(v49, 0, 1, v33);

      v48 = v46;
      v43 = v97;
LABEL_13:
      (*v99)(v18, v49, v101);
      if ((*(v63 + 48))(v18, 1, v33) == 1)
      {
        (*(v84 + 8))(v83, v85);

        v77 = 1;
        v78 = v110;
        v79 = v87;
        return (*(v105 + 56))(v79, v77, 1, v78);
      }

      v106 = v48;
      v64 = &v18[*(v33 + 48)];
      v94 = *v108;
      v94(v43, v64, v110);
      if (sub_1C4031220() == v107 && v65 == v109)
      {
        break;
      }

      v66 = sub_1C4031BF0();

      if (v66)
      {
        goto LABEL_26;
      }

      v67 = v18;
      v68 = v102;
      v69 = v43;
      sub_1C4031390();
      v70 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v71 = sub_1C4031BB0();
      v73 = v72;
      v74 = v68;
      v75 = v107;
      (*v91)(v74, v70);
      if (v71 == v75 && v73 == v109)
      {
        v43 = v69;
        break;
      }

      v76 = sub_1C4031BF0();

      v43 = v69;
      v18 = v67;
      if (v76)
      {
        goto LABEL_26;
      }

      (*v98)(v43, v110);

      v45 = v106;
      if (!v41)
      {
        goto LABEL_5;
      }
    }

LABEL_26:
    v78 = v110;
    sub_1C4031390();
    v80 = v82;
    sub_1C40313A0();
    result = (*(v105 + 48))(v80, 1, v78);
    if (result == 1)
    {
      goto LABEL_30;
    }

    (*v98)(v43, v78);
    (*(v84 + 8))(v83, v85);
    v79 = v87;
    v94(v87, v80, v78);
    v77 = 0;
    return (*(v105 + 56))(v79, v77, 1, v78);
  }

  else
  {
LABEL_5:
    if (v42 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    else
    {
      v47 = v42;
    }

    v48 = v47 - 1;
    v49 = v104;
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v42)
      {
        v63 = *(v33 - 8);
        (*(v63 + 56))(v104, 1, 1, v33);
        v41 = 0;
        goto LABEL_13;
      }

      v41 = *(v88 + 8 * v46);
      ++v45;
      if (v41)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F0B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1C4031390();
  sub_1C4031390();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1C4031180();
  v14 = *(v7 + 8);
  v14(v10, AssociatedTypeWitness);
  v14(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_1C3F0BA78(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  v5 = *(a1 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, v5, &a1[*(TupleTypeMetadata2 + 48)]) & 1;
}

unint64_t sub_1C3F0BAF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C40312A0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C4031350();
}

uint64_t sub_1C3F0BC0C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1C40318B0();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1C4031910();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        sub_1C4031260();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t sub_1C3F0BDEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1C4031570();
  if (!v19)
  {
    return sub_1C4031410();
  }

  v41 = v19;
  v45 = sub_1C4031990();
  v32 = sub_1C40319A0();
  sub_1C4031940();
  result = sub_1C4031560();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1C4031590();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1C4031980();
      result = sub_1C4031580();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ExpressibleByArgumentOptionSet.init(argument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a2;
  v69 = a5;
  v70 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = sub_1C40316A0();
  v82 = *(v85 - 8);
  v9 = MEMORY[0x1EEE9AC00](v85);
  v87 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v66 - v11;
  v88 = *(swift_getAssociatedConformanceWitness() + 8);
  v89 = *(*(v88 + 24) + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v86 = &v66 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - v21;
  v68 = sub_1C4030720();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a4 + 40);
  v71 = a3;
  v26 = v25(a3, a4);
  sub_1C4030700();
  v95 = 32;
  v96 = 0xE100000000000000;
  v94 = &v95;
  v27 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F0DB5C, v93, a1, v90, &v95);
  v66 = v24;
  v92 = v24;
  v83 = sub_1C3F32990(sub_1C3F0D940, v91, v27);

  swift_getAssociatedConformanceWitness();
  sub_1C4031C10();
  v73 = v22;
  v28 = v87;
  v90 = AssociatedTypeWitness;
  v29 = v18;
  result = sub_1C4031BD0();
  v31 = 0;
  v33 = v26 + 64;
  v32 = *(v26 + 64);
  v77 = v26;
  v34 = 1 << *(v26 + 32);
  v35 = TupleTypeMetadata2;
  v36 = -1;
  if (v34 < 64)
  {
    v36 = ~(-1 << v34);
  }

  v37 = v36 & v32;
  v38 = (v34 + 63) >> 6;
  v86 = (TupleTypeMetadata2 - 8);
  v76 = (v15 + 16);
  v89 = (v15 + 32);
  v81 = (v82 + 4);
  v75 = v15;
  v82 = (v15 + 8);
  v74 = v29;
  v80 = v26 + 64;
  v79 = v38;
  while (v37)
  {
    v39 = v28;
    v40 = v31;
LABEL_16:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v43 | (v40 << 6);
    v45 = (*(v77 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v75;
    v49 = v78;
    v50 = v90;
    (*(v75 + 16))(v78, *(v77 + 56) + *(v75 + 72) * v44, v90);
    v51 = *(v35 + 48);
    *v39 = v47;
    v39[1] = v46;
    v52 = *(v48 + 32);
    v28 = v39;
    v52(v39 + v51, v49, v50);
    v53 = *(v35 - 8);
    (*(v53 + 56))(v39, 0, 1, v35);

    v29 = v74;
LABEL_17:
    v54 = v84;
    (*v81)(v84, v28, v85);
    if ((*(v53 + 48))(v54, 1, v35) == 1)
    {

      v64 = v73;
      v65 = v90;
      (*v76)(v78, v73, v90);
      sub_1C4031D40();
      (*v82)(v64, v65);
      return (*(v67 + 8))(v66, v68);
    }

    v55 = v35;
    v56 = v90;
    (*v89)(v29, &v54[*(v35 + 48)], v90);
    v57 = sub_1C4031220();
    v59 = v58;

    v95 = v57;
    v96 = v59;
    MEMORY[0x1EEE9AC00](v60);
    *(&v66 - 2) = &v95;
    v61 = v83;
    LOBYTE(v57) = sub_1C3F0D47C(sub_1C3F0D960, (&v66 - 4), v83);

    if (v57 & 1) != 0 || (v95 = sub_1C4031BB0(), v96 = v62, MEMORY[0x1EEE9AC00](v95), *(&v66 - 2) = &v95, v63 = sub_1C3F0D47C(sub_1C3F0DB5C, (&v66 - 4), v61), , (v63))
    {
      sub_1C4031710();
    }

    result = (*v82)(v29, v56);
    v35 = v55;
    v28 = v87;
    v33 = v80;
    v38 = v79;
  }

  if (v38 <= v31 + 1)
  {
    v41 = v31 + 1;
  }

  else
  {
    v41 = v38;
  }

  v42 = v41 - 1;
  while (1)
  {
    v40 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
      v53 = *(v35 - 8);
      (*(v53 + 56))(v28, 1, 1, v35);
      v37 = 0;
      v31 = v42;
      goto LABEL_17;
    }

    v37 = *(v33 + 8 * v40);
    ++v31;
    if (v37)
    {
      v39 = v28;
      v31 = v40;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F0CB10@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1C4030720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1C40316B0();
  v10 = v9;
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = sub_1C3F0BC0C(v8, v10, sub_1C3F0BBA4, v12);
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t ExpressibleByArgumentOptionSet.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))();
  v15[10] = a1;
  v15[11] = a2;
  v16 = v2;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E6158];
  sub_1C4031110();
  v15[6] = a1;
  v15[7] = a2;
  sub_1C4031120();
  swift_getWitnessTable();
  v6 = sub_1C4031370();

  v18 = v6;
  v15[2] = a1;
  v15[3] = a2;
  swift_getTupleTypeMetadata2();
  v7 = sub_1C4031440();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C3F0BDEC(sub_1C3F0DA18, v15, v7, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  v18 = 91;
  v19 = 0xE100000000000000;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
  sub_1C3F0DA74();
  v11 = sub_1C4031150();
  v13 = v12;

  MEMORY[0x1C6932F70](v11, v13);

  MEMORY[0x1C6932F70](93, 0xE100000000000000);
  return v18;
}

BOOL sub_1C3F0CEF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v31 = *(*(a5 + 24) + 8);
  v32 = a3;
  swift_getAssociatedTypeWitness();
  v29 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27[1] = v27 - v6;
  v7 = swift_checkMetadataState();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v27 - v16;
  v18 = *a1;
  v19 = a1[1];
  *v17 = v18;
  *(v17 + 1) = v19;
  v34 = v15;
  (*(v8 + 16))(&v17[*(v15 + 48)], v30, v7);

  sub_1C4031390();
  sub_1C4031700();
  v20 = *(v8 + 8);
  v20(v11, v7);
  if (sub_1C4031740())
  {
    if (sub_1C4031730() >= 64)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = sub_1C4031740();
  v22 = sub_1C4031730();
  if ((v21 & 1) == 0)
  {
    if (v22 < 64)
    {
      goto LABEL_9;
    }

LABEL_10:
    v35 = 0;
    sub_1C3F0DAEC();
    sub_1C40316F0();
    v24 = sub_1C4031180();
    v20(v11, v7);
    v20(v13, v7);
    (*(v33 + 8))(v17, v34);
    return (v24 & 1) == 0;
  }

  if (v22 > 64)
  {
    goto LABEL_10;
  }

  swift_getAssociatedConformanceWitness();
  sub_1C4031C10();
  sub_1C4031BD0();
  v23 = sub_1C4031170();
  v20(v11, v7);
  if (v23)
  {
LABEL_9:
    v25 = sub_1C4031720();
    v20(v13, v7);
    (*(v33 + 8))(v17, v34);
    v24 = v25 == 0;
    return (v24 & 1) == 0;
  }

  v20(v13, v7);
  (*(v33 + 8))(v17, v34);
  v24 = 0;
  return (v24 & 1) == 0;
}