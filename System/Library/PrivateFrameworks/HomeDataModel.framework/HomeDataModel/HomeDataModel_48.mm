void *sub_1D1B1356C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABE0, &qword_1D1E97C70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D1B135E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABE0, &qword_1D1E97C70);
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

uint64_t sub_1D1B136D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  (*(a2 + 48))();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
  v5 = sub_1D1E68AAC();

  v12[2] = a3;
  v6 = sub_1D1746A6C(sub_1D174A6A4, v12, v5);
  v8 = v7;

  if (!v6)
  {
    return 0x206E776F6E6B6E75;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(*(v8 + 16) + 136))(ObjectType);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D1B13984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Collection.keyed<A>(by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*a1 + *MEMORY[0x1E69E77B0]);
  v7 = *v5;
  v6 = v5[1];
  swift_getTupleTypeMetadata2();
  v8 = sub_1D1E67C7C();
  sub_1D1AC25F8(v8, v6, v7, a4);

  sub_1D1E6769C();
  sub_1D1E67A9C();
  return v10;
}

uint64_t sub_1D1B13B14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v8 = sub_1D1E685AC();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  MEMORY[0x1EEE9AC00](v9);
  swift_getAtKeyPath();
  v12 = *(v7 - 8);
  (*(v12 + 16))(v11, a2, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B13CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_1D1A08410(a3, &v26[-1] - v12);
  v14 = sub_1D1E67E7C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1D1B14EB4(v13);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC();
      sub_1D1B14F1C(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_1D1B14EB4(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1B14EB4(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t static HomeDataActor.fire(name:priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  sub_1D1A08410(a3, &v18 - v11);
  v13 = qword_1EC642358;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC64ABE8;
  v15 = sub_1D1AD642C();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = a4;
  v16[5] = a5;

  sub_1D17C6EF0(a1, a2, v12, &unk_1D1E96480, v16);
}

uint64_t sub_1D1B1409C(uint64_t a1)
{
  type metadata accessor for HomeDataActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC64ABE8 = v1;
  return result;
}

uint64_t static HomeDataActor.shared.getter()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }
}

uint64_t static HomeDataActor.run<A>(name:priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B141DC, 0, 0);
}

{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B14638, 0, 0);
}

uint64_t sub_1D1B141DC()
{
  sub_1D1A08410(*(v0 + 40), *(v0 + 72));
  v1 = qword_1EC642358;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = qword_1EC64ABE8;
  v7 = sub_1D1AD642C();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = *(v0 + 48);

  v9 = sub_1D1B13CE4(v5, v4, v3, &unk_1D1E97C90, v8, v2);
  *(v0 + 80) = v9;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_1D1B14360;
  v11 = *(v0 + 64);
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v12, v9, v11);
}

uint64_t sub_1D1B14360()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1B1448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14528, v6, 0);
}

uint64_t sub_1D1B14528()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B14638()
{
  sub_1D1A08410(*(v0 + 40), *(v0 + 72));
  v1 = qword_1EC642358;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = qword_1EC64ABE8;
  v7 = sub_1D1AD642C();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = *(v0 + 48);

  v9 = sub_1D1B150D0(v5, v4, v3, &unk_1D1E97CA8, v8, v2);
  *(v0 + 80) = v9;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v10 = v0;
  v10[1] = sub_1D1B147DC;
  v12 = *(v0 + 64);
  v13 = *(v0 + 16);
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v13, v9, v12, v11, v14);
}

uint64_t sub_1D1B147DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D1B1495C;
  }

  else
  {
    v2 = sub_1D1B148F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B148F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B1495C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B149C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14A64, v6, 0);
}

uint64_t sub_1D1B14A64()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B14AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14B80, v6, 0);
}

uint64_t sub_1D1B14B80()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B14C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1B1448C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1B14D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1B149C8(a1, v4, v5, v6, v7);
}

uint64_t HomeDataActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B14E38()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1B14EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B14F1C@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B15008(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v4);
}

uint64_t sub_1D1B150D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1D1A08410(a3, &v24[-1] - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1B14EB4(v12);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D1E678CC();
      sub_1D1B16B34(v20 + 32, v24);

      v21 = v24[0];
      sub_1D1B14EB4(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1B14EB4(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t Task.timeout(_:throwingIfExpired:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  if (a2)
  {
    v16 = sub_1D1E67E7C();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a5;
    v17[5] = a6;
    v17[6] = a7;
    v17[7] = a4;

    return sub_1D1B150D0(0, 0, v15, &unk_1D1E97D60, v17, a5);
  }

  else
  {

    return Task.timeout(_:throwingIfExpired:)(1, a4, a5, a6, a7, *&a1);
  }
}

uint64_t Task.timeout(_:throwingIfExpired:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a2;
  *(v16 + 64) = a6;
  *(v16 + 72) = a1;

  return sub_1D1B150D0(0, 0, v14, &unk_1D1E97D70, v16, a3);
}

uint64_t sub_1D1B155D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1D17C4BFC;

  return MEMORY[0x1EEE6DA10](a1, a4, a5, a6, a7);
}

uint64_t sub_1D1B156A0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1B155D4(a1, v6, v7, v8, v4, v5, v9);
}

uint64_t sub_1D1B15774(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 40) = a7;
  *(v9 + 88) = a6;
  *(v9 + 32) = a2;
  *(v9 + 16) = a1;
  *(v9 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1B157A4, 0, 0);
}

uint64_t sub_1D1B157A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v6;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = sub_1D1D7D224(v6, v6);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D1B158C4;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v10, v9, v7, 0, 0, &unk_1D1E97D80, v5, v9);
}

uint64_t sub_1D1B158C4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B15A00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1B15A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B15A64(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B15774(a1, v10, v6, v7, v9, v11, v4, v5, v8);
}

uint64_t sub_1D1B15B50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 48) = a5;
  *(v8 + 136) = a4;
  *(v8 + 40) = a8;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_1D1E685AC();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B15C6C, 0, 0);
}

uint64_t sub_1D1B15C6C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v15 = v3;
  v4 = *(v0 + 48);
  v17 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 32);
  v7 = sub_1D1E67E7C();
  v16 = *(*(v7 - 8) + 56);
  v16(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  v8[7] = v6;
  v9 = v2;

  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v10 = sub_1D1E6800C();
  sub_1D1D7D040(v1, &unk_1D1E97D90, v8, v10);
  sub_1D1B14EB4(v1);
  v16(v1, 1, 1, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v15;
  *(v11 + 48) = v9;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v11 + 72) = v17;

  sub_1D1D7D040(v1, &unk_1D1E97DA0, v11, v10);
  sub_1D1B14EB4(v1);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1D1B15EC0;
  v13 = *(v0 + 96);

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v10);
}

uint64_t sub_1D1B15EC0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D1B16134;
  }

  else
  {
    v2 = sub_1D1B15FD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B15FD4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
  sub_1D1E67FFC();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v1, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[11];
    v9 = v0[6];
    v10 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v6 + 32))(v10, v8, v9);

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1D1B16134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B161AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B15B50(a1, a2, v9, v11, v6, v7, v8, v10);
}

uint64_t sub_1D1B1628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1D17C4CF0;

  return MEMORY[0x1EEE6DA10](a1, a4, a5, a6, a7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D1B163A4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B1628C(a1, v6, v7, v8, v4, v5, v9);
}

uint64_t sub_1D1B16478(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 112) = a6;
  *(v9 + 32) = a5;
  *(v9 + 40) = a7;
  *(v9 + 24) = a2;
  *(v9 + 16) = a1;
  v10 = sub_1D1E68A4C();
  *(v9 + 64) = v10;
  *(v9 + 72) = *(v10 - 8);
  *(v9 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B16548, 0, 0);
}

uint64_t sub_1D1B16548()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D1B16624;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1B16624()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D1B168C8;
  }

  else
  {
    v5 = sub_1D1B16794;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1B16794()
{
  v1 = *(v0 + 112);
  sub_1D1E67F5C();
  if (v1 == 1)
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1D1B1692C;
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);

    return MEMORY[0x1EEE6DA10](v9, v7, v8, v5, v6);
  }
}

uint64_t sub_1D1B168C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B1692C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1B16A44(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B16478(a1, v9, v7, v8, v10, v11, v4, v5, v6);
}

uint64_t sub_1D1B16B34@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B16C34()
{
  MEMORY[0x1D3893750](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1B16C88(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC64AC70, &qword_1D1E97E00);
  sub_1D1E6858C();
  type metadata accessor for WeakMutex.WeakWrapper(255, *(a2 + 16), v3, v4);
  sub_1D1E66E3C();

  return sub_1D1E6858C();
}

uint64_t AsyncStreamBatchManager.__allocating_init(name:stream:continuation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  AsyncStreamBatchManager.init(name:stream:continuation:)(a1, a2, v7, a4, a5);
  return v10;
}

void AsyncStreamBatchManager.start(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 80);
  v8 = sub_1D1E67F2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v67 - v14;
  v16 = *(v6 + 144);
  swift_beginAccess();
  if (*(*(v3 + v16) + 16))
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07B808);

    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6833C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v82[0] = v21;
      *v20 = 136446210;
      v22 = sub_1D1E6888C();
      v24 = v23;

      v25 = sub_1D1B1312C(v22, v24, v82);

      *(v20 + 4) = v25;
      v26 = "Requested to start %{public}s when it is already active!";
LABEL_11:
      _os_log_impl(&dword_1D16EC000, v18, v19, v26, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
LABEL_13:

      return;
    }

    goto LABEL_12;
  }

  v79 = v12;
  v80 = a1;
  v81 = v7;
  v27 = *v3;
  if (*(v3 + *(*v3 + 160)))
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EE07B808);

    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v82[0] = v21;
      *v20 = 136446210;
      v29 = sub_1D1E6888C();
      v31 = v30;

      v32 = sub_1D1B1312C(v29, v31, v82);

      *(v20 + 4) = v32;
      v26 = "Calling start on %{public}s when it has finished";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v78 = a2;
  v33 = *(v27 + 96);
  v34 = sub_1D1E67E7C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = v15;
  v76 = v34;
  v73 = v35 + 56;
  v74 = v36;
  (v36)(v15, 1, 1);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v3 + v33;
  v40 = v9;
  v41 = v79;
  v71 = *(v9 + 16);
  v72 = v9 + 16;
  v71(v79, v39, v8);
  v42 = *(v9 + 80);
  v43 = (v42 + 40) & ~v42;
  v44 = (v10 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = v42;
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v46 = v8;
  v47 = v41;
  v45[4] = v81;
  v48 = *(v40 + 32);
  v75 = v43;
  v49 = v45 + v43;
  v50 = v46;
  v69 = v48;
  v48(v49, v41, v46);
  v77 = v44;
  *(v45 + v44) = v38;
  v51 = sub_1D1B18B90(0, 0, v37, &unk_1D1E97E40, v45);
  sub_1D1741A30(v37, &unk_1EC6442C0, &qword_1D1E741A0);
  swift_beginAccess();
  v52 = *(v3 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v16) = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_1D177D5EC(0, v52[2] + 1, 1, v52);
    *(v3 + v16) = v52;
  }

  v55 = v52[2];
  v54 = v52[3];
  if (v55 >= v54 >> 1)
  {
    v52 = sub_1D177D5EC((v54 > 1), v55 + 1, 1, v52);
  }

  v68 = *(*v3 + 120);
  v52[2] = v55 + 1;
  v52[v55 + 4] = v51;
  *(v3 + v16) = v52;
  swift_endAccess();
  sub_1D1E67E3C();
  v74(v37, 0, 1, v76);
  v56 = swift_allocObject();
  swift_weakInit();
  v71(v47, v3 + v68, v50);
  v57 = v77;
  v58 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 2) = 0;
  *(v59 + 3) = 0;
  *(v59 + 4) = v81;
  v69(&v59[v75], v47, v50);
  *&v59[v57] = v56;
  v60 = &v59[v58];
  v61 = v78;
  *v60 = v80;
  v60[1] = v61;

  v62 = sub_1D1B18B90(0, 0, v37, &unk_1D1E97E50, v59);
  sub_1D1741A30(v37, &unk_1EC6442C0, &qword_1D1E741A0);
  swift_beginAccess();
  v63 = *(v3 + v16);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v16) = v63;
  if ((v64 & 1) == 0)
  {
    v63 = sub_1D177D5EC(0, v63[2] + 1, 1, v63);
    *(v3 + v16) = v63;
  }

  v66 = v63[2];
  v65 = v63[3];
  if (v66 >= v65 >> 1)
  {
    v63 = sub_1D177D5EC((v65 > 1), v66 + 1, 1, v63);
  }

  v63[2] = v66 + 1;
  v63[v66 + 4] = v62;
  *(v3 + v16) = v63;
  swift_endAccess();
}

Swift::Void __swiftcall AsyncStreamBatchManager.finish()()
{
  v1 = v0;
  sub_1D1E67EEC();
  sub_1D1E67EDC();
  sub_1D1E67EDC();
  v2 = *(*v0 + 144);
  swift_beginAccess();
  v7 = v2;
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = v5 + 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();

      v5 = v6;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v7) = MEMORY[0x1E69E7CC0];

    *(v1 + *(*v1 + 160)) = 1;
  }
}

uint64_t AsyncStreamBatchManager.originStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_1D1E67F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AsyncStreamBatchManager.originStreamContinuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  v4 = sub_1D1E67EEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AsyncStreamBatchManager.init(name:stream:continuation:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v27 = a1;
  v28 = a2;
  v25 = sub_1D1E67EBC();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = (&v24 - v7);
  v26 = sub_1D1E67EEC();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - v10;
  v12 = sub_1D1E67F2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  swift_defaultActor_initialize();
  v16 = *(*v5 + 136);
  *(v5 + v16) = sub_1D1E67C7C();
  *(v5 + *(*v5 + 144)) = MEMORY[0x1E69E7CC0];
  *(v5 + *(*v5 + 152)) = 0;
  *(v5 + *(*v5 + 160)) = 0;
  *v8 = 1;
  v17 = v25;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8640], v25);
  sub_1D1E67E8C();
  (*(v6 + 8))(v8, v17);
  v18 = v5 + *(*v5 + 112);
  v19 = v28;
  *v18 = v27;
  *(v18 + 8) = v19;
  *(v18 + 16) = v29;
  v20 = *(v13 + 32);
  v20(v5 + *(*v5 + 96), v30, v12);
  v21 = *(v9 + 32);
  v22 = v26;
  v21(v5 + *(*v5 + 104), v31, v26);
  v20(v5 + *(*v5 + 120), v15, v12);
  v21(v5 + *(*v5 + 128), v11, v22);
  return v5;
}

uint64_t sub_1D1B17BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = *(a6 - 8);
  v6[9] = swift_task_alloc();
  sub_1D1E685AC();
  v6[10] = swift_task_alloc();
  v7 = sub_1D1E67F1C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B17D48, 0, 0);
}

uint64_t sub_1D1B17D48()
{
  sub_1D1E67F2C();
  sub_1D1E67EFC();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D1B17E24;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D1B17E24()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1B17F20, 0, 0);
}

uint64_t sub_1D1B17F20()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    if ((sub_1D1E67F7C() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      v0[15] = Strong;
      if (Strong)
      {

        return MEMORY[0x1EEE6DFA0](sub_1D1B1807C, Strong, 0);
      }
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1B1807C()
{
  sub_1D1B18248(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D1B180E8, 0, 0);
}

uint64_t sub_1D1B180E8(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = sub_1D1E67F7C();

  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    (*(v1[12] + 8))(v1[13], v1[11]);

    v6 = v1[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v1[14] = v8;
    *v8 = v1;
    v8[1] = sub_1D1B17E24;
    v9 = v1[10];
    v10 = v1[11];

    return MEMORY[0x1EEE6D9C8](v9, 0, 0, v10);
  }
}

void sub_1D1B18248(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = sub_1D1E67E9C();
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v60 - v6;
  v7 = sub_1D1E66FDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  v21 = *(v20 + 16);
  v68 = v20 + 16;
  v69 = a1;
  v67 = v21;
  v21(&v60 - v18, a1, v4);
  swift_beginAccess();
  sub_1D1E67D1C();
  v64 = v19;
  sub_1D1E67CDC();
  swift_endAccess();
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v67(v17, v69, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ACF8, &qword_1D1E97F20);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      v63 = sub_1D1E68FAC();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(&v70);
    }

    else
    {
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      sub_1D1741A30(&v70, &qword_1EC64AD00, &unk_1D1EA26F0);
      v23 = 0xEF29656C62616269;
      v63 = 0x72637365646E6928;
    }

    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v41 = sub_1D1E6701C();
    __swift_project_value_buffer(v41, qword_1EE07AE50);

    sub_1D1E66FCC();
    v42 = sub_1D1E66FFC();
    v43 = sub_1D1E683FC();

    if (sub_1D1E6855C())
    {
      v44 = swift_slowAlloc();
      v61 = v7;
      v45 = v44;
      v46 = swift_slowAlloc();
      v62 = v5;
      v47 = v46;
      *&v70 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1D1B1312C(v63, v23, &v70);
      v48 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v42, v43, v48, "AsyncStreamBatchManager", "added %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v49 = v47;
      v5 = v62;
      MEMORY[0x1D3893640](v49, -1, -1);
      MEMORY[0x1D3893640](v45, -1, -1);

      (*(v8 + 8))(v14, v61);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v50 = sub_1D1E6709C();
    __swift_project_value_buffer(v50, qword_1EE07B808);

    v32 = sub_1D1E6707C();
    v51 = sub_1D1E6831C();

    if (os_log_type_enabled(v32, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v70 = v53;
      *v52 = 136315394;
      v54 = sub_1D1E6888C();
      v56 = v55;

      v57 = sub_1D1B1312C(v54, v56, &v70);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v58 = sub_1D1B1312C(v63, v23, &v70);

      *(v52 + 14) = v58;
      _os_log_impl(&dword_1D16EC000, v32, v51, "%s added %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v53, -1, -1);
      v40 = v52;
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6701C();
    __swift_project_value_buffer(v24, qword_1EE07AE50);
    sub_1D1E66FCC();
    v25 = sub_1D1E66FFC();
    v26 = sub_1D1E683FC();
    if (sub_1D1E6855C())
    {
      v27 = v7;
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v25, v26, v29, "AsyncStreamBatchManager", "added element", v28, 2u);
      v30 = v28;
      v7 = v27;
      MEMORY[0x1D3893640](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v31 = sub_1D1E6709C();
    __swift_project_value_buffer(v31, qword_1EE07B808);

    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6831C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v70 = v35;
      *v34 = 136446210;
      v36 = sub_1D1E6888C();
      v38 = v37;

      v39 = sub_1D1B1312C(v36, v38, &v70);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1D16EC000, v32, v33, "%{public}s added element", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1D3893640](v35, -1, -1);
      v40 = v34;
LABEL_24:
      MEMORY[0x1D3893640](v40, -1, -1);
      goto LABEL_27;
    }
  }

LABEL_27:

  if ((*(v2 + *(*v2 + 152)) & 1) == 0)
  {
    v67(v64, v69, v4);
    sub_1D1E67EEC();
    v59 = v65;
    sub_1D1E67ECC();
    (*(v66 + 8))(v59, v5);
  }
}

uint64_t sub_1D1B18B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D1A08410(a3, v22 - v9);
  v11 = sub_1D1E67E7C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D1E67D4C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D1E678CC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D1B18DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_1D1E6702C();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = sub_1D1E685AC();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v12 = sub_1D1E67F1C();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B18FEC, 0, 0);
}

uint64_t sub_1D1B18FEC()
{
  sub_1D1E67F2C();
  sub_1D1E67EFC();
  swift_beginAccess();
  *(v0 + 264) = *MEMORY[0x1E69E93E8];
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1D1B190D8;
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D1B190D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1B191D4, 0, 0);
}

uint64_t sub_1D1B191D4()
{
  v1 = v0 + 21;
  if ((*(*(v0[10] - 8) + 48))(v0[21], 1) == 1)
  {
    v2 = (v0[23] + 8);
    v1 = v0 + 24;
    v3 = v0 + 22;
LABEL_9:
    (*v2)(*v1, *v3);

    v5 = v0[1];

    return v5();
  }

  if ((sub_1D1E67F7C() & 1) != 0 || (Strong = swift_weakLoadStrong(), (v0[26] = Strong) == 0))
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v3 = v0 + 19;
    v2 = (v0[20] + 8);
    goto LABEL_9;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B19370, Strong, 0);
}

uint64_t sub_1D1B19370()
{
  *(v0 + 216) = sub_1D1B19DD0();

  return MEMORY[0x1EEE6DFA0](sub_1D1B193DC, 0, 0);
}

uint64_t sub_1D1B193DC()
{
  v30 = v0;
  v0[5] = v0[27];
  sub_1D1E67D1C();
  swift_getWitnessTable();
  if (sub_1D1E682AC())
  {

    (*(v0[20] + 8))(v0[21], v0[19]);
    v1 = swift_task_alloc();
    v0[25] = v1;
    *v1 = v0;
    v1[1] = sub_1D1B190D8;
    v2 = v0[21];
    v3 = v0[22];

    return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
  }

  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07B808);
  swift_bridgeObjectRetain_n();

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446466;
    v9 = sub_1D1E6888C();
    v11 = v10;

    v12 = sub_1D1B1312C(v9, v11, &v29);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2050;
    v13 = sub_1D1E67CBC();

    *(v7 + 14) = v13;

    _os_log_impl(&dword_1D16EC000, v5, v6, "%{public}s processing %{public}ld elements", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);

    if ((sub_1D1E67F7C() & 1) == 0)
    {
LABEL_9:
      if (qword_1EE07AE48 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6701C();
      v0[28] = __swift_project_value_buffer(v14, qword_1EE07AE50);

      sub_1D1E66FCC();
      v15 = sub_1D1E66FFC();
      v16 = sub_1D1E683EC();
      if (sub_1D1E6855C())
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = sub_1D1E67CBC();

        v18 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v18, "AsyncStreamBatchManager", "Processing %{public}ld elements", v17, 0xCu);
        MEMORY[0x1D3893640](v17, -1, -1);
      }

      else
      {
      }

      v20 = v0[18];
      v21 = v0[14];
      v22 = v0[15];
      v23 = v0[8];
      (*(v22 + 16))(v0[17], v20, v21);
      sub_1D1E6705C();
      swift_allocObject();
      v0[29] = sub_1D1E6704C();
      v24 = *(v22 + 8);
      v0[30] = v24;
      v0[31] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24(v20, v21);
      v28 = (v23 + *v23);
      v25 = swift_task_alloc();
      v0[32] = v25;
      *v25 = v0;
      v25[1] = sub_1D1B199F8;
      v26 = v0[27];

      return v28(v26);
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();

    if ((sub_1D1E67F7C() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  (*(v0[20] + 8))(v0[21], v0[19]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D1B199F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1B19B10, 0, 0);
}

uint64_t sub_1D1B19B10(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v4 = *(v1 + 264);
    v6 = *(v1 + 96);
    v5 = *(v1 + 104);
    v7 = *(v1 + 88);

    sub_1D1E6706C();

    if ((*(v6 + 88))(v5, v7) == v4)
    {
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
      v8 = "";
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v10, "AsyncStreamBatchManager", v8, v9, 2u);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = *(v1 + 240);
  v12 = *(v1 + 128);
  v13 = *(v1 + 112);

  v11(v12, v13);
  v14 = sub_1D1E67F7C();

  if (v14)
  {
    (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
    (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));

    v15 = *(v1 + 8);

    return v15();
  }

  else
  {
    (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
    v17 = swift_task_alloc();
    *(v1 + 200) = v17;
    *v17 = v1;
    v17[1] = sub_1D1B190D8;
    v18 = *(v1 + 168);
    v19 = *(v1 + 176);

    return MEMORY[0x1EEE6D9C8](v18, 0, 0, v19);
  }
}

uint64_t sub_1D1B19DD0()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_beginAccess();
  sub_1D1E67D1C();

  sub_1D1E67D0C();
  swift_endAccess();
  return v2;
}

Swift::Void __swiftcall AsyncStreamBatchManager.pauseOutput()()
{
  v1 = v0;
  v2 = *(*v0 + 152);
  if ((*(v0 + v2) & 1) == 0)
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07B808);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = sub_1D1E6888C();
      v10 = v9;

      v11 = sub_1D1B1312C(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%{public}s beginning hold", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D3893640](v7, -1, -1);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    else
    {
    }
  }

  *(v1 + v2) = 1;
}

Swift::Void __swiftcall AsyncStreamBatchManager.resumeOutput()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_1D1E67E9C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = v37 - v5;
  v6 = sub_1D1E685AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v37 - v9;
  v11 = *(v3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v38 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - v14;
  *(v1 + *(v2 + 152)) = 0;
  v16 = *(*v1 + 136);
  swift_beginAccess();
  v37[1] = v16;
  v42 = *(v1 + v16);
  sub_1D1E67D1C();

  swift_getWitnessTable();
  sub_1D1E676FC();
  if ((*(v11 + 48))(v10, 1, v3) == 1)
  {
    (*(v7 + 8))(v10, v6);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07B808);

    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v21;
      *v20 = 136446210;
      v22 = sub_1D1E6888C();
      v24 = v23;

      v25 = sub_1D1B1312C(v22, v24, &v42);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%{public}s ended hold with no buffered elements", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v37[0] = v11;
    (*(v11 + 32))(v15, v10, v3);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v26 = sub_1D1E6709C();
    __swift_project_value_buffer(v26, qword_1EE07B808);
    swift_retain_n();
    v27 = sub_1D1E6707C();
    v28 = sub_1D1E6835C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136446466;
      v31 = sub_1D1E6888C();
      v33 = sub_1D1B1312C(v31, v32, &v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2050;

      v34 = sub_1D1E67CBC();

      *(v29 + 14) = v34;

      _os_log_impl(&dword_1D16EC000, v27, v28, "%{public}s ended hold with %{public}ld buffered elements", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D3893640](v30, -1, -1);
      MEMORY[0x1D3893640](v29, -1, -1);
    }

    else
    {
    }

    v35 = v37[0];
    (*(v37[0] + 16))(v38, v15, v3);
    sub_1D1E67EEC();
    v36 = v39;
    sub_1D1E67ECC();
    (*(v40 + 8))(v36, v41);
    (*(v35 + 8))(v15, v3);
  }
}

uint64_t AsyncStreamBatchManager.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_1D1E67F2C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(*v0 + 104);
  v5 = sub_1D1E67EEC();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + *(*v0 + 120), v2);
  v6(v0 + *(*v0 + 128), v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncStreamBatchManager.__deallocating_deinit()
{
  AsyncStreamBatchManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B1A864(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1D1E67F2C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B17BF8(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_1D1B1A998(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_1D1E67F2C() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D17C4BFC;

  return sub_1D1B18DEC(a1, v11, v12, v1 + v7, v10, v13, v14, v5);
}

uint64_t sub_1D1B1AAF0(uint64_t a1)
{
  result = sub_1D1E67F2C();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E67EEC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1D1B1AC44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v87 = a3;
  v88 = a5;
  v89 = a2;
  v90 = a4;
  v105 = sub_1D1E66A7C();
  v6 = MEMORY[0x1EEE9AC00](v105);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v81 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v81 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v81 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v103 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v81 - v18;
  v19 = *(a1 + 16);
  if (!v19)
  {
    v83 = MEMORY[0x1E69E7CC0];
    return;
  }

  v20 = 0;
  v93 = a1 + 32;
  v102 = v17 + 16;
  v104 = (v17 + 8);
  v83 = MEMORY[0x1E69E7CC0];
  v84 = v17;
  v85 = v8;
  v92 = v19;
  while (v20 < v19)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_45;
    }

    v22 = v93 + 24 * v20;
    v24 = *v22;
    v23 = *(v22 + 8);
    LODWORD(v25) = *(v22 + 16);
    v97 = v20 + 1;
    v98 = v20 + 1;
    v95 = v24;
    v96 = v23;
    v94 = v25;
    if (v25 == 2)
    {
      v50 = *v90;
      sub_1D1A28388(v24, v23, 2u);
      v51 = v23;

      v91 = v51;
      v52 = [v51 uniqueIdentifier];
      sub_1D1E66A5C();

      v99 = v50;
      if (*(v50 + 16))
      {
        v53 = v99;
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        v54 = sub_1D1E676DC();
        v55 = v53 + 56;
        v56 = -1 << *(v53 + 32);
        v57 = v54 & ~v56;
        if ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
        {
          v58 = ~v56;
          v59 = *(v84 + 72);
          v60 = *(v84 + 16);
          while (1)
          {
            v61 = v103;
            v62 = v105;
            v60(v103, *(v99 + 48) + v59 * v57, v105);
            sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
            v63 = sub_1D1E6775C();
            v40 = *v104;
            (*v104)(v61, v62);
            if (v63)
            {
              break;
            }

            v57 = (v57 + 1) & v58;
            if (((*(v55 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v72 = v101;
LABEL_30:
          v40(v72, v105);

          goto LABEL_31;
        }
      }

LABEL_21:

      v41 = *v104;
      (*v104)(v101, v105);
      v64 = v91;
      v65 = [v91 uniqueIdentifier];
      v66 = v85;
      sub_1D1E66A5C();

      v67 = *v88;
      if (!*(*v88 + 16) || (v68 = sub_1D1742188(), (v69 & 1) == 0))
      {

        v71 = v66;
        goto LABEL_27;
      }

      v24 = *(*(v67 + 56) + 8 * v68);

      v41(v66, v105);
      v19 = v92;
      v21 = v97;
      v70 = v94;
      if (!v24[2])
      {

        v49 = v70;
        v20 = v98;
        goto LABEL_32;
      }

      v77 = [v64 uniqueIdentifier];
      v78 = v82;
      sub_1D1E66A5C();

      v25 = v103;
      sub_1D1762CB8(v103, v78);
      v41(v25, v105);
      LOBYTE(v25) = 2;
      v23 = v96;
      sub_1D1A283E8(v95, v96, 2u);
      v20 = v98;
LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_1D177F110(0, *(v83 + 2) + 1, 1, v83);
      }

      v74 = *(v83 + 2);
      v73 = *(v83 + 3);
      if (v74 >= v73 >> 1)
      {
        v83 = sub_1D177F110((v73 > 1), v74 + 1, 1, v83);
      }

      v75 = v83;
      *(v83 + 2) = v74 + 1;
      v76 = &v75[24 * v74];
      *(v76 + 4) = v24;
      *(v76 + 5) = v23;
      v76[48] = v25;
      if (v21 == v19)
      {
        return;
      }
    }

    else
    {
      if (v25 != 1)
      {
        ++v20;
        sub_1D1A28388(v24, v23, v25);
        goto LABEL_35;
      }

      v26 = *v89;
      sub_1D1A28388(v24, v23, 1u);
      v27 = v23;

      v91 = v27;
      v28 = [v27 uniqueIdentifier];
      sub_1D1E66A5C();

      v99 = v26;
      if (*(v26 + 16))
      {
        v29 = v99;
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        v30 = sub_1D1E676DC();
        v31 = v29 + 56;
        v32 = -1 << *(v29 + 32);
        v33 = v30 & ~v32;
        if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          v35 = *(v84 + 72);
          v36 = *(v84 + 16);
          while (1)
          {
            v37 = v103;
            v38 = v105;
            v36(v103, *(v99 + 48) + v35 * v33, v105);
            sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
            v39 = sub_1D1E6775C();
            v40 = *v104;
            (*v104)(v37, v38);
            if (v39)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v31 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v72 = v100;
          goto LABEL_30;
        }
      }

LABEL_12:

      v41 = *v104;
      (*v104)(v100, v105);
      v42 = v91;
      v43 = [v91 uniqueIdentifier];
      v44 = v86;
      sub_1D1E66A5C();

      v45 = *v87;
      if (!*(*v87 + 16) || (v46 = sub_1D1742188(), (v47 & 1) == 0))
      {

        v71 = v44;
LABEL_27:
        v41(v71, v105);
LABEL_31:
        v19 = v92;
        v21 = v97;
        v20 = v98;
        v49 = v94;
        goto LABEL_32;
      }

      v24 = *(*(v45 + 56) + 8 * v46);

      v41(v44, v105);
      v19 = v92;
      v21 = v97;
      v20 = v98;
      v48 = v94;
      if (v24[2])
      {
        v79 = [v42 uniqueIdentifier];
        v80 = v82;
        sub_1D1E66A5C();

        v25 = v103;
        sub_1D1762CB8(v103, v80);
        v41(v25, v105);
        LOBYTE(v25) = 1;
        v23 = v96;
        sub_1D1A283E8(v95, v96, 1u);
        goto LABEL_35;
      }

      v49 = v48;
LABEL_32:
      sub_1D1A283E8(v95, v96, v49);
      if (v21 == v19)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1D1B1B4FC(uint64_t a1, _BYTE *a2, uint64_t *a3, _BYTE *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v96 = a7;
  v102 = a6;
  v99 = a5;
  v98 = a4;
  v100 = a3;
  v101 = a2;
  v8 = sub_1D1E66A7C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v95 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v95 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v95 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v117 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v95 - v21;
  v22 = *(a1 + 16);
  if (!v22)
  {
    return;
  }

  v23 = 0;
  v107 = a1 + 32;
  v116 = v20 + 16;
  v24 = MEMORY[0x1E69E7CC0];
  v103 = v20;
  v104 = v22;
  v118 = (v20 + 8);
  v105 = v15;
  do
  {
    v106 = v24;
    while (1)
    {
      if (v23 >= v22)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v27 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_49;
      }

      v28 = v107 + 24 * v23;
      v30 = *v28;
      v29 = *(v28 + 8);
      v23 = (v23 + 1);
      v31 = *(v28 + 16);
      if (v31 > 1)
      {
        break;
      }

      v110 = v27;
      v111 = v29;
      v108 = v27;
      v109 = v31;
      v112 = v30;
      if (v31)
      {
        v43 = *v99;
        sub_1D1A28388(v30, v29, 1u);

        v44 = [v29 uniqueIdentifier];
        sub_1D1E66A5C();

        v114 = v43;
        if (!*(v43 + 16) || (v45 = v114, sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]), v46 = sub_1D1E676DC(), v47 = v45 + 56, v48 = -1 << *(v45 + 32), v49 = v46 & ~v48, ((*(v47 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0))
        {
LABEL_28:

          v59 = *v118;
          (*v118)(v115, v8);
          v60 = v111;
          v61 = [v111 uniqueIdentifier];
          v62 = v97;
          sub_1D1E66A5C();

          v63 = *v102;
          if (*(*v102 + 16))
          {
            v64 = sub_1D1742188();
            v22 = v104;
            if (v65)
            {
              v66 = *(*(v63 + 56) + 8 * v64);
            }

            else
            {
              v66 = MEMORY[0x1E69E7CD0];
            }
          }

          else
          {
            v66 = MEMORY[0x1E69E7CD0];
            v22 = v104;
          }

          v23 = v108;
          v59(v62, v8);
          v120 = v66;
          sub_1D19309C4(v112);
          v67 = [v60 uniqueIdentifier];
          v68 = v117;
          sub_1D1E66A5C();

          v69 = v120;
          v70 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = *v70;
          *v70 = 0x8000000000000000;
          sub_1D175631C(v69, v68, isUniquelyReferenced_nonNull_native);
          v59(v68, v8);
          *v70 = v119;
          v15 = v105;
          v24 = v106;
          goto LABEL_34;
        }

        v50 = ~v48;
        v51 = *(v103 + 72);
        v52 = *(v103 + 16);
        while (1)
        {
          v53 = v8;
          v54 = v117;
          v52(v117, *(v114 + 48) + v51 * v49, v53);
          sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
          v55 = sub_1D1E6775C();
          v56 = *v118;
          v57 = v54;
          v8 = v53;
          (*v118)(v57, v53);
          if (v55)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*(v47 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v56(v115, v53);
        v58 = v112;

        v26 = v58;
      }

      else
      {
        v32 = *v100;
        sub_1D1A28388(v30, v29, 0);

        v33 = [v30 uniqueIdentifier];
        sub_1D1E66A5C();

        if (*(v32 + 16) && (sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]), v34 = sub_1D1E676DC(), v35 = -1 << *(v32 + 32), v36 = v34 & ~v35, v114 = v32 + 56, ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
        {
          v37 = ~v35;
          v38 = *(v103 + 72);
          v39 = *(v103 + 16);
          while (1)
          {
            v40 = v117;
            v39(v117, *(v32 + 48) + v38 * v36, v8);
            sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
            v41 = sub_1D1E6775C();
            v42 = *v118;
            (*v118)(v40, v8);
            if (v41)
            {
              break;
            }

            v36 = (v36 + 1) & v37;
            if (((*(v114 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v42(v113, v8);
          v26 = v112;
        }

        else
        {
LABEL_4:

          v25 = *v118;
          (*v118)(v113, v8);
          v26 = v112;
          if ((*v98 & 1) == 0)
          {
            v87 = [v112 uniqueIdentifier];
            v88 = v95;
            sub_1D1E66A5C();

            v89 = v117;
            sub_1D1762CB8(v117, v88);
            v25(v89, v8);
            v22 = v104;
            v15 = v105;
            v23 = v108;
            v24 = v106;
            goto LABEL_34;
          }
        }
      }

      sub_1D1A283E8(v26, v111, v109);
      v22 = v104;
      v15 = v105;
      v23 = v108;
      v24 = v106;
      v27 = v110;
LABEL_6:
      if (v27 == v22)
      {
        return;
      }
    }

    if (v31 == 4)
    {
      if ((*v101 & 1) == 0)
      {
        v111 = *(v28 + 8);
        v112 = v30;
        v109 = 4;
        v110 = v27;
        *v101 = 1;
        goto LABEL_34;
      }

      goto LABEL_6;
    }

    v111 = *(v28 + 8);
    v112 = v30;
    v110 = v27;
    v109 = v31;
    if (v31 == 2)
    {
      v78 = v111;
      v79 = v112;
      sub_1D1A28388(v112, v111, 2u);

      v80 = [v78 uniqueIdentifier];
      sub_1D1E66A5C();

      v81 = *v96;
      v82 = *(*v96 + 16);
      v114 = v118 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v82 && (v83 = sub_1D1742188(), (v84 & 1) != 0))
      {
        v85 = *(*(v81 + 56) + 8 * v83);
        v86 = *v118;

        v108 = v86;
        v86(v15, v8);
      }

      else
      {
        v108 = *v118;
        v108(v15, v8);
        v85 = MEMORY[0x1E69E7CD0];
      }

      v120 = v85;
      sub_1D19309C4(v79);
      v90 = [v78 uniqueIdentifier];
      v91 = v117;
      sub_1D1E66A5C();

      v92 = v120;
      v93 = v96;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v119 = *v93;
      *v93 = 0x8000000000000000;
      sub_1D175631C(v92, v91, v94);
      v108(v91, v8);
      *v93 = v119;
    }

LABEL_34:
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v24;
    if ((v72 & 1) == 0)
    {
      sub_1D178DA58(0, *(v24 + 16) + 1, 1);
      v24 = v121;
    }

    v73 = v110;
    v75 = *(v24 + 16);
    v74 = *(v24 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_1D178DA58((v74 > 1), v75 + 1, 1);
      v24 = v121;
    }

    *(v24 + 16) = v75 + 1;
    v76 = v24 + 24 * v75;
    v77 = v111;
    *(v76 + 32) = v112;
    *(v76 + 40) = v77;
    *(v76 + 48) = v109;
  }

  while (v73 != v22);
}

void sub_1D1B1BEB8(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v48 = a4;
  v50 = a3;
  v6 = sub_1D1E66A7C();
  v60 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v44 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    v17 = (v60 + 8);
    v56 = v14;
    v57 = v60 + 32;
    v45 = (v50 + 40);
    v46 = v60 + 16;
    v49 = a2;
    v55 = v16;
    v52 = (v60 + 8);
    v53 = v12;
    v47 = v9;
    do
    {
      v22 = v16 + 24 * v15;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (v25)
      {
        if (v25 == 4 && (v24 | v23) == 0)
        {
          v27 = *(v50 + 16);
          v51 = v15;
          if (v27)
          {
            v61 = MEMORY[0x1E69E7CC0];
            sub_1D178CEFC(0, v27, 0);
            v28 = v61;
            v29 = v45;
            do
            {
              v30 = v6;
              v31 = *v29;
              ObjectType = swift_getObjectType();
              v33 = *(v31 + 16);
              v34 = *(v33 + 128);
              swift_unknownObjectRetain();
              v34(ObjectType, v33);
              swift_unknownObjectRelease();
              v61 = v28;
              v36 = *(v28 + 16);
              v35 = *(v28 + 24);
              if (v36 >= v35 >> 1)
              {
                sub_1D178CEFC((v35 > 1), v36 + 1, 1);
                v28 = v61;
              }

              *(v28 + 16) = v36 + 1;
              v6 = v30;
              (*(v60 + 32))(v28 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v36, v9, v30);
              v29 += 2;
              --v27;
            }

            while (v27);
            a2 = v49;
            v14 = v56;
            v15 = v51;
            v17 = v52;
          }

          else
          {
            v28 = MEMORY[0x1E69E7CC0];
          }

          v37 = *(v28 + 16);
          v38 = sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
          v61 = MEMORY[0x1D38917C0](v37, v6, v38);
          if (v37)
          {
            v40 = v53;
            v39 = v54;
            v41 = v6;
            v42 = v28 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
            v43 = *(v60 + 72);
            v58 = *(v60 + 16);
            v59 = v43;
            do
            {
              v58(v40, v42, v41);
              sub_1D1762CB8(v39, v40);
              (*v17)(v39, v41);
              v42 += v59;
              --v37;
            }

            while (v37);

            a2 = v49;
            v9 = v47;
            v6 = v41;
            v14 = v56;
            v15 = v51;
          }

          else
          {
          }

          *a2 = v61;

          *v48 = 1;
          sub_1D1A283E8(0, 0, 4u);
          v16 = v55;
        }
      }

      else
      {
        v18 = [v23 uniqueIdentifier];
        v19 = v53;
        sub_1D1E66A5C();

        v17 = v52;
        v20 = v54;
        sub_1D1762CB8(v54, v19);
        sub_1D1A283E8(v23, v24, 0);
        v21 = v20;
        v14 = v56;
        (*v17)(v21, v6);
        sub_1D1A283E8(v23, v24, 0);
        v16 = v55;
      }

      ++v15;
    }

    while (v15 != v14);
  }
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO6unique7updates2inSayAEGAI_SayAA0A8Protocol_pGtFZ_0(uint64_t a1, uint64_t a2)
{
  v65 = sub_1D1E66A7C();
  v4 = *(v65 - 8);
  v5 = MEMORY[0x1EEE9AC00](v65);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD08, &qword_1D1E97F28);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v52 - v13;
  v15 = MEMORY[0x1E69E7CD0];
  v73[0] = MEMORY[0x1E69E7CD0];
  v72 = 0;

  sub_1D1B1BEB8(a1, v73, a2, &v72);

  v71[0] = 0;
  v70 = v15;
  v68 = MEMORY[0x1E69E7CC8];
  v69 = MEMORY[0x1E69E7CC8];

  sub_1D1B1B4FC(v16, v71, &v70, &v72, v73, &v69, &v68);
  v53 = v17;
  v52[1] = 0;
  v18 = v14;

  v19 = v68 + 64;
  v20 = 1 << *(v68 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v68 + 64);
  v23 = (v20 + 63) >> 6;
  v54 = v4 + 16;
  v64 = (v4 + 32);
  v57 = v4;
  v58 = v68;
  v59 = (v4 + 8);

  v25 = 0;
  v61 = v14;
  v62 = v12;
  v55 = v19;
  v63 = v7;
  while (v22)
  {
    v27 = v25;
LABEL_17:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v27 << 6);
    v33 = v57;
    v32 = v58;
    (*(v57 + 16))(v56, *(v58 + 48) + *(v57 + 72) * v31, v65);
    v34 = *(*(v32 + 56) + 8 * v31);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
    v36 = *(v35 + 48);
    v12 = v62;
    (*(v33 + 32))();
    *&v12[v36] = v34;
    (*(*(v35 - 8) + 56))(v12, 0, 1, v35);

    v18 = v61;
    v7 = v63;
    v19 = v55;
LABEL_18:
    sub_1D1B1C948(v12, v18);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
    if ((*(*(v37 - 8) + 48))(v18, 1, v37) == 1)
    {

      v66[0] = MEMORY[0x1E69E7CD0];
      v67 = MEMORY[0x1E69E7CD0];
      sub_1D1B1AC44(v53, v66, &v69, &v67, &v68);
      v51 = v50;

      return v51;
    }

    v38 = *(v18 + *(v37 + 48));
    (*v64)(v7, v18, v65);
    v39 = sub_1D1C77248(v66);
    v41 = *v40;
    if (*v40)
    {
      v60 = v39;
      if (*(v41 + 16))
      {
        v42 = 1 << *(v38 + 32);
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        else
        {
          v43 = -1;
        }

        v44 = v43 & *(v38 + 56);
        v45 = (v42 + 63) >> 6;

        for (i = 0; v44; result = sub_1D1AE08F8(*(*(v38 + 48) + ((v47 << 9) | (8 * v48)))))
        {
          v47 = i;
LABEL_30:
          v48 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
        }

        while (1)
        {
          v47 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v47 >= v45)
          {

            v12 = v62;
            v7 = v63;
            v18 = v61;
            goto LABEL_34;
          }

          v44 = *(v38 + 56 + 8 * v47);
          ++i;
          if (v44)
          {
            i = v47;
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_34:
      (v60)(v66, 0);
    }

    else
    {
      v26 = v39;

      (v26)(v66, 0);
    }

    result = (*v59)(v7, v65);
  }

  if (v23 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
      (*(*(v49 - 8) + 56))(v12, 1, 1, v49);
      v22 = 0;
      v25 = v29;
      goto LABEL_18;
    }

    v22 = *(v19 + 8 * v27);
    ++v25;
    if (v22)
    {
      v25 = v27;
      goto LABEL_17;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D1B1C948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD08, &qword_1D1E97F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D1B1C9B8()
{
  v2 = v1;
  v62 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v59 = v0[4];
  v60 = v7;
  v61[0] = v0[6];
  *(v61 + 15) = *(v0 + 111);
  v8 = v0[1];
  v55 = *v0;
  v56 = v8;
  v9 = v0[3];
  v57 = v0[2];
  v58 = v9;
  sub_1D1E65F8C();
  swift_allocObject();
  v10 = sub_1D1E65F7C();
  sub_1D1749DB4();
  v11 = sub_1D1E65F6C();
  v13 = v12;

  if (v1)
  {
    return v10;
  }

  v14 = objc_opt_self();
  v15 = sub_1D1E6688C();
  v54[0] = 0;
  v10 = [v14 JSONObjectWithData:v15 options:4 error:v54];

  if (!v10)
  {
    v37 = v54[0];
    sub_1D1E6656C();

    swift_willThrow();
    v38 = v11;
LABEL_20:
    sub_1D174E7C4(v38, v13);
    return v10;
  }

  v49 = v11;
  v16 = v54[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v38 = v49;
    goto LABEL_20;
  }

  v45 = v13;
  v46 = v6;
  v47 = v4;
  v48 = v3;
  v17 = v52;
  v53 = v52;
  sub_1D174E20C(v52);
  v19 = 0;
  v51 = v18;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v18 + 64;
  v23 = v21 & *(v18 + 64);
  v24 = (v20 + 63) >> 6;
  while (v23)
  {
LABEL_14:
    v27 = __clz(__rbit64(v23)) | (v19 << 6);
    v28 = (*(v51 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(*(v51 + 56) + 8 * v27);

    v32 = sub_1D171D2F0(v29, v30);
    if (v33)
    {
      v34 = v32;
      v50 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1734030();
        v17 = v54[0];
      }

      v36 = *(v17[7] + 8 * v34);
      sub_1D174F220(v34, v17);

      v2 = v50;
    }

    else
    {
    }

    v23 &= v23 - 1;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v17;
    sub_1D1757628(v31, sub_1D17575DC, 0, v25, v54);

    v17 = v54[0];
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v22 + 8 * v26);
    ++v19;
    if (v23)
    {
      v19 = v26;
      goto LABEL_14;
    }
  }

  v53 = v17;

  v40 = v46;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6699C();
  v41 = sub_1D1E680EC();
  v42 = v53;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = v42;
  sub_1D175263C(v41, 0x6D617473656D6974, 0xE900000000000070, v43);
  sub_1D174E7C4(v49, v45);
  v10 = v54[0];
  v53 = v54[0];
  (*(v47 + 8))(v40, v48);
  return v10;
}

void *sub_1D1B1CF14()
{
  v2 = v1;
  v67 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[9];
  v65 = v0[8];
  *v66 = v7;
  *&v66[15] = *(v0 + 159);
  v8 = v0[5];
  v61 = v0[4];
  v62 = v8;
  v9 = v0[7];
  v63 = v0[6];
  v64 = v9;
  v10 = v0[1];
  v57 = *v0;
  v11 = v0[2];
  v60 = v0[3];
  v58 = v10;
  v59 = v11;
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D174C3F8();
  v12 = sub_1D1E65F6C();
  v14 = v13;

  if (v1)
  {
    return result;
  }

  v16 = objc_opt_self();
  v17 = sub_1D1E6688C();
  v56[0] = 0;
  v18 = [v16 JSONObjectWithData:v17 options:4 error:v56];

  if (!v18)
  {
    v40 = v56[0];
    sub_1D1E6656C();

    swift_willThrow();
    v41 = v12;
    return sub_1D174E7C4(v41, v14);
  }

  v51 = v12;
  v19 = v56[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v41 = v51;
    return sub_1D174E7C4(v41, v14);
  }

  v47 = v14;
  v48 = v6;
  v49 = v4;
  v50 = v3;
  v20 = v54;
  payload._rawValue = v54;
  sub_1D174E20C(v54);
  v22 = 0;
  v53 = v21;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v21 + 64;
  v26 = v24 & *(v21 + 64);
  v27 = (v23 + 63) >> 6;
  while (v26)
  {
LABEL_14:
    v30 = __clz(__rbit64(v26)) | (v22 << 6);
    v31 = (*(v53 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(v53 + 56) + 8 * v30);

    v35 = sub_1D171D2F0(v32, v33);
    if (v36)
    {
      v37 = v35;
      v52 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56[0] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1734030();
        v20 = v56[0];
      }

      v39 = *(v20[7] + 8 * v37);
      sub_1D174F220(v37, v20);

      v2 = v52;
    }

    else
    {
    }

    v26 &= v26 - 1;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v20;
    sub_1D1757628(v34, sub_1D17575DC, 0, v28, v56);

    v20 = v56[0];
  }

  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v25 + 8 * v29);
    ++v22;
    if (v26)
    {
      v22 = v29;
      goto LABEL_14;
    }
  }

  payload._rawValue = v20;

  v42 = v48;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6699C();
  v43 = sub_1D1E680EC();
  rawValue = payload._rawValue;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = rawValue;
  sub_1D175263C(v43, 0x6D617473656D6974, 0xE900000000000070, v45);
  payload._rawValue = v56[0];
  (*(v49 + 8))(v42, v50);
  TileInteractionEvent.transform(payload:)(&payload);
  sub_1D174E7C4(v51, v47);
  return payload._rawValue;
}

id sub_1D1B1D4B0()
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v28 = v0[4];
  v29 = v6;
  v30 = v0[6];
  v7 = v0[1];
  v24 = *v0;
  v25 = v7;
  v8 = v0[3];
  v26 = v0[2];
  v27 = v8;
  sub_1D1E65F8C();
  swift_allocObject();
  v9 = sub_1D1E65F7C();
  sub_1D1B22ADC();
  v10 = sub_1D1E65F6C();
  v12 = v11;

  if (!v1)
  {
    v13 = objc_opt_self();
    v14 = sub_1D1E6688C();
    v23[0] = 0;
    v9 = [v13 JSONObjectWithData:v14 options:4 error:v23];

    if (v9)
    {
      v15 = v23[0];
      sub_1D1E6866C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
      if (swift_dynamicCast())
      {
        v22 = v21;

        _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
        sub_1D1E6699C();
        v16 = sub_1D1E680EC();
        v17 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23[0] = v17;
        sub_1D175263C(v16, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
        sub_1D174E7C4(v10, v12);
        v9 = v23[0];
        v22 = v23[0];
        (*(v3 + 8))(v5, v2);
        return v9;
      }

      [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    }

    else
    {
      v19 = v23[0];
      sub_1D1E6656C();
    }

    swift_willThrow();
    sub_1D174E7C4(v10, v12);
  }

  return v9;
}

uint64_t sub_1D1B1D814(uint64_t a1)
{
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE0813B0;
    v4 = sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D1E6F900;
    v6 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1D1757D20();
    *(v5 + 64) = v7;
    *(v5 + 32) = 0xD000000000000022;
    *(v5 + 40) = 0x80000001D1EC4B50;
    if (v1[3])
    {
      v22 = v1[2];
      v23 = v1[3];

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      v8 = *v1;
      v9 = v1[1];

      MEMORY[0x1D3890F70](v8, v9);

      v11 = v22;
      v10 = v23;
    }

    else
    {
      v11 = *v1;
    }

    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 72) = v11;
    *(v5 + 80) = v10;
    *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(v5 + 144) = sub_1D17D8EA8(&qword_1EE07A008, &qword_1EC642E68, &unk_1D1E717F0, MEMORY[0x1E6969D58]);
    *(v5 + 112) = a1;

    sub_1D1E66F9C("%@:%@ submitted event with payload %@", 37, 2, &dword_1D16EC000, v3, v4, v5, v22, v23);
  }

  else
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE0813B0;
    v13 = sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E6F900;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1D1757D20();
    *(v14 + 64) = v16;
    *(v14 + 32) = 0xD000000000000022;
    *(v14 + 40) = 0x80000001D1EC4B50;
    if (v1[3])
    {
      v22 = v1[2];
      v23 = v1[3];

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      v17 = *v1;
      v18 = v1[1];

      MEMORY[0x1D3890F70](v17, v18);

      v20 = v22;
      v19 = v23;
    }

    else
    {
      v20 = *v1;
    }

    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v20;
    *(v14 + 80) = v19;
    *(v14 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(v14 + 144) = sub_1D17D8EA8(&qword_1EE07A008, &qword_1EC642E68, &unk_1D1E717F0, MEMORY[0x1E6969D58]);
    *(v14 + 112) = a1;

    sub_1D1E66F9C("%@:%@ skipped submitting event (because isInternalTest=true) with payload %@", 76, 2, &dword_1D16EC000, v12, v13, v14, v22, v23);
  }
}

uint64_t sub_1D1B1DBB0(uint64_t a1)
{
  if (qword_1EE079BB0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE0813B0;
  v3 = sub_1D1E6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E6F900;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D1757D20();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0xD000000000000022;
  *(v4 + 40) = 0x80000001D1EC4B50;
  if (v1[3])
  {
    v14 = v1[2];
    v15 = v1[3];

    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    v7 = *v1;
    v8 = v1[1];

    MEMORY[0x1D3890F70](v7, v8);

    v10 = v14;
    v9 = v15;
  }

  else
  {
    v10 = *v1;
  }

  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v10;
  *(v4 + 80) = v9;
  swift_getErrorValue();
  v11 = sub_1D1E6915C();
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = v11;
  *(v4 + 120) = v12;
  sub_1D1E66F9C("%@:%@ failed to encode payload with error %@", 44, 2, &dword_1D16EC000, v2, v3, v4);
}

void sub_1D1B1DD5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  v22[3] = *(v0 + 48);
  v22[4] = v1;
  v4 = *(v0 + 96);
  v22[5] = v2;
  v22[6] = v4;
  v5 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v5;
  v22[2] = v3;
  v6 = swift_allocObject();
  v7 = *(v0 + 80);
  v6[5] = *(v0 + 64);
  v6[6] = v7;
  v6[7] = *(v0 + 96);
  v8 = *(v0 + 16);
  v6[1] = *v0;
  v6[2] = v8;
  v9 = *(v0 + 48);
  v6[3] = *(v0 + 32);
  v6[4] = v9;
  sub_1D1B22A14(v0, &aBlock);
  sub_1D1B22A14(v22, &aBlock);
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    sub_1D1B22A70(v22);
    v10 = *(v0 + 24);
    if (v10)
    {
      aBlock = *(v0 + 16);
      v17 = v10;

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      v12 = *v0;
      v11 = *(v0 + 8);

      MEMORY[0x1D3890F70](v12, v11);
    }

    else
    {
    }

    v14 = sub_1D1E677EC();

    v20 = sub_1D1B22A0C;
    v21 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D174DCDC;
    v19 = &block_descriptor_45;
    v15 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  else
  {
    v13 = sub_1D1B1D4B0();
    sub_1D1B1D814(v13);
    sub_1D1B22A70(v22);
  }
}

uint64_t sub_1D1B1DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1A08410(a3, v25 - v10);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D1B1E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D1A08410(a3, v25 - v10);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D1E67D4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D1E678CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t PhoenixMetricsAggregator.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1D1E68A3C();
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = sub_1D18DB1BC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents) = v2;
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) = 0;
  return v0;
}

uint64_t PhoenixMetricsAggregator.init()()
{
  swift_defaultActor_initialize();
  sub_1D1E68A3C();
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = sub_1D18DB1BC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents) = v2;
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) = 0;
  return v0;
}

void sub_1D1B1E610()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer;
  [*(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) invalidate];
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07B808);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = sub_1D1E6940C();
    v10 = sub_1D1B1312C(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 0x405E000000000000;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%s beginning metrics aggregation with interval %f", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v11 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_timerFired selector:0 userInfo:1 repeats:120.0];
  v12 = [objc_opt_self() mainRunLoop];
  [v12 addTimer:v11 forMode:*MEMORY[0x1E695DA28]];

  v13 = *(v1 + v2);
  *(v1 + v2) = v11;
}

uint64_t sub_1D1B1E850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[5] = a4;
  v4[6] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B1E918, a4, 0);
}

uint64_t sub_1D1B1E918()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);
  if (*(v3 + 16) || *(v5 + 16))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    *(v1 + v2) = MEMORY[0x1E69E7CC8];
    *(v8 + v4) = MEMORY[0x1E69E7CC0];
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v10[5] = v3;
    v10[6] = v7;
    sub_1D1B1DFC0(0, 0, v6, &unk_1D1E97FF0, v10);

    sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1B1EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[51] = a4;
  v7 = _s8IntervalVMa(0);
  v6[54] = v7;
  v6[55] = *(v7 - 8);
  v6[56] = swift_task_alloc();
  v8 = _s8IntervalV11AggregationVMa(0);
  v6[57] = v8;
  v6[58] = *(v8 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B1ECC4, 0, 0);
}

void *sub_1D1B1ECC4()
{
  v1 = v0[52];
  sub_1D1B1F3AC((v0 + 44));
  sub_1D1B1F8E8(v1);
  v3 = v2;
  v4 = sub_1D1E6939C();
  v6 = v5;
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v0[58];
    v66 = v0[57];
    v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = v9;
    v12 = v7;
    do
    {
      v13 = v0[60];
      sub_1D1B22EB8(v11, v13, _s8IntervalV11AggregationVMa);
      v14 = sub_1D1E6936C();
      v6 = v15;
      sub_1D1B23038(v13, _s8IntervalV11AggregationVMa);
      v11 += v10;
      --v12;
    }

    while (v12);
    v63 = v14;
    v16 = 0;
    v17 = v0[59];
    v18 = *(v66 + 20);
    while (1)
    {
      v19 = v0[59];
      sub_1D1B22EB8(v9, v19, _s8IntervalV11AggregationVMa);
      v20 = *(v17 + v18);
      result = sub_1D1B23038(v19, _s8IntervalV11AggregationVMa);
      v22 = __CFADD__(v16, v20);
      v16 += v20;
      if (v22)
      {
        break;
      }

      v9 += v10;
      if (!--v7)
      {

        v4 = v63;
        goto LABEL_9;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_9:
    v65 = v0[55];
    v23 = v0[52];
    sub_1D1B2320C();
    v25 = v24;
    v67 = v0;
    sub_1D1B229B8((v0 + 44));
    v62 = v6;
    v64 = v4;
    sub_1D1B20444(v4, v6, v16, v25);
    v26 = -1;
    v27 = -1 << *(v23 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v23 + 64);
    v29 = (63 - v27) >> 6;

    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    while (v28)
    {
LABEL_18:
      v33 = *(*(v23 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v28)))));
      v34 = *(v33 + 16);
      v35 = v31[2];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_42;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v36 > v31[3] >> 1)
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_1D177F684(result, v37, 1, v31);
        v31 = result;
      }

      v28 &= v28 - 1;
      if (*(v33 + 16))
      {
        if ((v31[3] >> 1) - v31[2] < v34)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v38 = v31[2];
          v39 = __OFADD__(v38, v34);
          v40 = v38 + v34;
          if (v39)
          {
            goto LABEL_45;
          }

          v31[2] = v40;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_43;
        }
      }
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v32 >= v29)
      {
        break;
      }

      v28 = *(v23 + 64 + 8 * v32);
      ++v30;
      if (v28)
      {
        v30 = v32;
        goto LABEL_18;
      }
    }

    v41 = v67;

    v42 = v31[2];
    if (v42)
    {
      v68 = MEMORY[0x1E69E7CC0];
      sub_1D178DB70(0, v42, 0);
      v43 = v68;
      v44 = v31 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v45 = *(v65 + 72);
      do
      {
        v46 = v41[56];
        sub_1D1B22EB8(v44, v46, _s8IntervalVMa);
        v47 = sub_1D1E68A1C();
        v49 = v48;
        sub_1D1B23038(v46, _s8IntervalVMa);
        v51 = v68[2];
        v50 = v68[3];
        if (v51 >= v50 >> 1)
        {
          sub_1D178DB70((v50 > 1), v51 + 1, 1);
        }

        v68[2] = v51 + 1;
        v52 = &v68[2 * v51];
        v52[4] = v47;
        v52[5] = v49;
        v44 += v45;
        --v42;
        v41 = v67;
      }

      while (v42);
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    v53 = sub_1D1745BC4(v43);
    v55 = v54;
    v57 = v56;

    v58 = sub_1D1E693AC();
    v60 = v59;
    v61 = swift_task_alloc();
    v41[61] = v61;
    *v61 = v41;
    v61[1] = sub_1D1B1F1D4;

    return PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.init(totalSnapshotTime:aggregationInterval:maxSnapshotTime:)((v41 + 30), v64, v62, v58, v60, v53, v55, v57 & 1);
  }

  return result;
}

uint64_t sub_1D1B1F1D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1B1F2D0, 0, 0);
}

uint64_t sub_1D1B1F2D0()
{
  v1 = *(v0 + 320);
  *(v0 + 192) = *(v0 + 304);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 336);
  v2 = *(v0 + 256);
  *(v0 + 128) = *(v0 + 240);
  *(v0 + 144) = v2;
  v3 = *(v0 + 288);
  *(v0 + 160) = *(v0 + 272);
  *(v0 + 176) = v3;
  v4 = *(v0 + 136);
  if (v4)
  {
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 24) = v4;
    v5 = *(v0 + 192);
    *(v0 + 64) = *(v0 + 176);
    *(v0 + 80) = v5;
    v6 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 208);
    *(v0 + 112) = v6;
    v7 = *(v0 + 160);
    *(v0 + 32) = *(v0 + 144);
    *(v0 + 48) = v7;
    sub_1D1B1DD5C();
    sub_1D1741A30(v0 + 128, &qword_1EC64AD20, &qword_1D1E98010);
  }

  v8 = *(v0 + 8);

  return v8();
}

double sub_1D1B1F3AC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1D1E65F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D1B29C3C(v7, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD48, &qword_1D1E98030);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D1E73A90;
  sub_1D1E65F3C();
  sub_1D1E65F2C();
  v25 = v8;
  sub_1D1B22C48(&qword_1EE07D1A0, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD50, &qword_1D1E98038);
  sub_1D17D8EA8(&qword_1EE07B758, &qword_1EC64AD50, &qword_1D1E98038, MEMORY[0x1E69E6328]);
  sub_1D1E6868C();
  v9 = sub_1D1B23438(v6);
  v11 = v10;
  v12 = v9;
  (*(v4 + 8))(v6, v3);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07B808);

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315394;
    v18 = sub_1D1E6940C();
    v20 = sub_1D1B1312C(v18, v19, &v25);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1D1B1312C(v12, v11, &v25);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s batches: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v22 = v26[1];
  *a2 = v26[0];
  *(a2 + 16) = v22;
  result = *&v27;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  return result;
}

void sub_1D1B1F8E8(uint64_t a1)
{
  v2 = sub_1D1E6786C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E65F4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v83 - v9;
  v10 = _s8IntervalV11AggregationVMa(0);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v83 - v14;
  v15 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v99 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD30, &qword_1D1E98018);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v83 - v21;
  v22 = *(a1 + 64);
  v84 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v90 = (v5 + 8);
  v91 = (v5 + 16);
  v88 = a1;

  v27 = 0;
  v28 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  *&v29 = 136315394;
  v85 = v29;
  v100 = v4;
  v95 = v8;
  v97 = v20;
  v92 = v13;
  while (v25)
  {
    v30 = v27;
LABEL_15:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v88;
    v36 = v99;
    sub_1D1B22EB8(*(v88 + 48) + *(v87 + 72) * v34, v99, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v37 = *(*(v35 + 56) + 8 * v34);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
    v39 = *(v38 + 48);
    v40 = v36;
    v20 = v97;
    sub_1D1B22D58(v40, v97, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    *&v20[v39] = v37;
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);

    v32 = v30;
LABEL_16:
    v41 = v96;
    sub_1D1B22B84(v20, v96);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      return;
    }

    v43 = *(v41 + *(v42 + 48));
    v44 = v99;
    sub_1D1B22D58(v41, v99, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v45 = v102;
    sub_1D1B2364C(v44, v43, v102);
    sub_1D1B22EB8(v45, v13, _s8IntervalV11AggregationVMa);
    v46 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1D177F65C(0, v46[2] + 1, 1, v46);
    }

    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1D177F65C((v47 > 1), v48 + 1, 1, v46);
    }

    v46[2] = v48 + 1;
    v49 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v101 = v46;
    sub_1D1B22D58(v13, v46 + v49 + *(v93 + 72) * v48, _s8IntervalV11AggregationVMa);
    v50 = v98;
    sub_1D1E65F3C();
    sub_1D1E65F8C();
    swift_allocObject();
    sub_1D1E65F7C();
    (*v91)(v95, v50, v100);
    sub_1D1E65F5C();
    sub_1D1B22C48(&qword_1EE07A208, _s8IntervalV11AggregationVMa, &unk_1D1E988A4);
    v51 = sub_1D1E65F6C();
    if (v28)
    {
      (*v90)(v50, v100);

LABEL_23:
      if (qword_1EE07B800 != -1)
      {
        swift_once();
      }

      v53 = sub_1D1E6709C();
      __swift_project_value_buffer(v53, qword_1EE07B808);
      v54 = v28;
      v55 = sub_1D1E6707C();
      v56 = sub_1D1E6835C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v89 = v32;
        v59 = v58;
        v60 = swift_slowAlloc();
        v103[0] = v60;
        *v57 = v85;
        v61 = sub_1D1E6940C();
        v86 = 0;
        v63 = sub_1D1B1312C(v61, v62, v103);

        *(v57 + 4) = v63;
        v20 = v97;
        *(v57 + 12) = 2112;
        v64 = v28;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 14) = v65;
        *v59 = v65;
        _os_log_impl(&dword_1D16EC000, v55, v56, "%s interval aggregation failed to convert to JSON with error: %@", v57, 0x16u);
        sub_1D1741A30(v59, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1D3893640](v60, -1, -1);
        MEMORY[0x1D3893640](v57, -1, -1);

        sub_1D1B23038(v102, _s8IntervalV11AggregationVMa);
        v27 = v89;
        v28 = v86;
      }

      else
      {

        sub_1D1B23038(v102, _s8IntervalV11AggregationVMa);
        v27 = v32;
        v28 = 0;
      }

      goto LABEL_5;
    }

    v66 = v51;
    v67 = v52;
    sub_1D1E6785C();
    v68 = sub_1D1E6782C();
    if (!v69)
    {
      sub_1D1B22BF4();
      v28 = swift_allocError();
      swift_willThrow();

      sub_1D174E7C4(v66, v67);
      (*v90)(v98, v100);
      goto LABEL_23;
    }

    v70 = v68;
    v71 = v69;
    (*v90)(v98, v100);
    sub_1D174E7C4(v66, v67);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v72 = sub_1D1E6709C();
    __swift_project_value_buffer(v72, qword_1EE07B808);

    v73 = sub_1D1E6707C();
    v74 = sub_1D1E6835C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89 = v32;
      v77 = v76;
      v103[0] = v76;
      *v75 = v85;
      v78 = sub_1D1E6940C();
      v86 = v70;
      v80 = sub_1D1B1312C(v78, v79, v103);

      *(v75 + 4) = v80;
      v20 = v97;
      *(v75 + 12) = 2080;
      v81 = sub_1D1B1312C(v86, v71, v103);

      *(v75 + 14) = v81;
      _os_log_impl(&dword_1D16EC000, v73, v74, "%s interval aggregation: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v77, -1, -1);
      MEMORY[0x1D3893640](v75, -1, -1);

      sub_1D1B23038(v102, _s8IntervalV11AggregationVMa);
      v27 = v89;
    }

    else
    {

      sub_1D1B23038(v102, _s8IntervalV11AggregationVMa);
      v27 = v32;
    }

LABEL_5:
    v13 = v92;
  }

  if (v26 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
      (*(*(v82 - 8) + 56))(v20, 1, 1, v82);
      v25 = 0;
      goto LABEL_16;
    }

    v25 = *(v84 + 8 * v30);
    ++v27;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1D1B20444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  if (a3)
  {
    sub_1D1B22B30();
    sub_1D1E6935C();
    v18[0] = a3;
    sub_1D1E6933C();
  }

  else
  {
    sub_1D1E6939C();
  }

  sub_1D1E6931C();
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07B808);

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();

  if (os_log_type_enabled(v7, v8))
  {
    v17 = a3;
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    v10 = v18[0];
    *v9 = 136316162;
    v11 = sub_1D1E6940C();
    v13 = a4;
    v14 = sub_1D1B1312C(v11, v12, v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = sub_1D1B1312C(0, 0xE000000000000000, v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v13;
    *(v9 + 42) = 2080;
    v16 = sub_1D1B1312C(0, 0xE000000000000000, v18);

    *(v9 + 44) = v16;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s total snapshot time in interval: %s in %lu snapshots out of %lu unfiltered (est. %s)", v9, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t PhoenixMetricsAggregator.deinit()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_clock;
  v2 = sub_1D1E68A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhoenixMetricsAggregator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_clock;
  v2 = sub_1D1E68A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B208D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = _s8IntervalVMa(0);
  v6 = v5 - 8;
  v21 = *(v5 - 8);
  v7 = *(v21 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  sub_1D1B22EB8(a1, &v20 - v10, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  v12 = *(type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0) + 20);
  v13 = *(v6 + 28);
  v14 = sub_1D1E68A2C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1 + v12, v14);
  sub_1D1E689FC();
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1D1B22EB8(v11, v9, _s8IntervalVMa);
  v17 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  sub_1D1B22D58(v9, v18 + v17, _s8IntervalVMa);
  sub_1D17C71F0(0, 0, v4, &unk_1D1E98058, v18);

  return sub_1D1B23038(v11, _s8IntervalVMa);
}

uint64_t sub_1D1B20B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B20BC0, 0, 0);
}

uint64_t sub_1D1B20BC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B20C84, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D1B20C84()
{
  sub_1D1B20D1C(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1D1B20CF4, 0, 0);
}

uint64_t sub_1D1B20D1C(void *a1)
{
  v2 = v1;
  v4 = _s8IntervalVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);

  if (v13 && (v14 = sub_1D171DF0C(a1), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D17C5014(a1, v16))
  {
  }

  sub_1D1B22EB8(a1, v10, _s8IntervalVMa);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1D177F684(0, v16[2] + 1, 1, v16);
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1D177F684((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  sub_1D1B22D58(v10, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, _s8IntervalVMa);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EE07B808);
  sub_1D1B22EB8(a1, v8, _s8IntervalVMa);
  v21 = sub_1D1E6707C();
  v22 = sub_1D1E6832C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35[0] = v33;
    *v23 = 136315394;
    v24 = sub_1D1E6940C();
    v26 = sub_1D1B1312C(v24, v25, v35);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = sub_1D1B25F38();
    v29 = v28;
    sub_1D1B23038(v8, _s8IntervalVMa);
    v30 = sub_1D1B1312C(v27, v29, v35);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1D16EC000, v21, v22, "%s adding interval %s", v23, 0x16u);
    v31 = v33;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);
  }

  else
  {

    sub_1D1B23038(v8, _s8IntervalVMa);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  sub_1D175654C(v16, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v11) = v34;
  return swift_endAccess();
}

uint64_t sub_1D1B2115C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v68 - v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8 = *(updated - 8);
  v9 = MEMORY[0x1EEE9AC00](updated);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v68 - v17;
  v19 = *(a1 + 16);
  if (v19 >= 2)
  {
    v70 = a2;
    v71 = v2;
    v72 = v7;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1D178DB90(0, v19, 0);
    v69 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = a1 + v69;
    v21 = v77;
    v76 = *(v8 + 72);
    do
    {
      sub_1D1B22EB8(v20, v18, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1B22EB8(v18, v15, type metadata accessor for StateSnapshot.UpdateType);
      v22 = "StateSnapshot.unknownHome";
      v23 = 25;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v24 = *v15;
          v25 = *(v15 + 1);
          v26 = v15[16];
          if (v26 <= 1)
          {
            if (v15[16])
            {
              sub_1D1AC373C(v24, v25, 1u);
              v22 = "StateSnapshot.characteristics.loadingStates";
              v23 = 43;
            }

            else
            {
              sub_1D1AC373C(v24, v25, 0);
              v22 = "StateSnapshot.characteristics.refresh";
              v23 = 37;
            }
          }

          else if (v26 == 2)
          {
            sub_1D1AC373C(v24, v25, 2u);
            v22 = "StateSnapshot.characteristics.overrideValues";
            v23 = 44;
          }

          else if (v26 == 3)
          {
            sub_1D1AC373C(v24, v25, 3u);
            v22 = "StateSnapshot.characteristics.localOverrideValues";
            v23 = 49;
          }

          else
          {
            sub_1D1AC373C(v24, v25, 4u);
            v22 = "StateSnapshot.characteristics.statelessValues";
            v23 = 45;
          }

          break;
        case 2u:
          sub_1D1B23038(v15, type metadata accessor for StateSnapshot.UpdateType);
          v22 = "StateSnapshot.actionSets";
          v23 = 24;
          break;
        case 3u:
          sub_1D1B23038(v15, type metadata accessor for StateSnapshot.UpdateType);
          v22 = "StateSnapshot.userActionPredictions";
          v23 = 35;
          break;
        case 4u:
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

          v29 = sub_1D1E66A7C();
          (*(*(v29 - 8) + 8))(v15, v29);
          v22 = "StateSnapshot.softwareUpdate";
          v23 = 28;
          break;
        case 5u:
          v32 = sub_1D1E66A7C();
          (*(*(v32 - 8) + 8))(v15, v32);
          v22 = "StateSnapshot.softwareUpdateOverride";
          v23 = 36;
          break;
        case 6u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

          v27 = sub_1D1E66A7C();
          (*(*(v27 - 8) + 8))(v15, v27);
          v22 = "StateSnapshot.profiles";
          v23 = 22;
          break;
        case 7u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);

          v34 = sub_1D1E66A7C();
          (*(*(v34 - 8) + 8))(v15, v34);
          v22 = "StateSnapshot.lightProfile";
          v23 = 26;
          break;
        case 8u:
          v22 = "StateSnapshot.snapshotStream";
          v23 = 28;
          break;
        case 9u:

          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
          sub_1D1B23038(&v15[*(v33 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
          v22 = "StateSnapshot.adaptiveTemperatureSetting";
          v23 = 40;
          break;
        case 0xAu:
          sub_1D1B23038(v15, type metadata accessor for StateSnapshot.UpdateType);
          v22 = "StateSnapshot.adaptiveTemperatureSleepSchedule";
          v23 = 46;
          break;
        case 0xBu:
          sub_1D1B23038(v15, type metadata accessor for StateSnapshot.UpdateType);
          v22 = "StateSnapshot.cleanEnergySetting";
          v23 = 32;
          break;
        case 0xCu:

          v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
          v31 = sub_1D1E66A7C();
          (*(*(v31 - 8) + 8))(&v15[v30], v31);
          v22 = "StateSnapshot.matterDevices";
          v23 = 27;
          break;
        case 0xDu:
          break;
        default:
          sub_1D1B23038(v15, type metadata accessor for StateSnapshot.UpdateType);
          v22 = "StateSnapshot.all";
          v23 = 17;
          break;
      }

      sub_1D1B23038(v18, type metadata accessor for StateSnapshot.UpdateType);
      v77 = v21;
      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D178DB90((v35 > 1), v36 + 1, 1);
        v21 = v77;
      }

      *(v21 + 16) = v36 + 1;
      v37 = v21 + 24 * v36;
      *(v37 + 32) = v22;
      *(v37 + 40) = v23;
      *(v37 + 48) = 2;
      v20 += v76;
      --v19;
    }

    while (v19);
    v38 = v70;
    v39 = *(v70 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v77 = MEMORY[0x1E69E7CC0];
      sub_1D178DB90(0, v39, 0);
      v41 = v38 + v69;
      v40 = v77;
      do
      {
        v42 = v75;
        sub_1D1B22EB8(v41, v75, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1B22EB8(v42, v74, type metadata accessor for StateSnapshot.UpdateType);
        v43 = 25;
        v44 = "StateSnapshot.unknownHome";
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v45 = *v74;
            v46 = *(v74 + 8);
            v47 = *(v74 + 16);
            if (v47 <= 1)
            {
              if (*(v74 + 16))
              {
                sub_1D1AC373C(v45, v46, 1u);
                v44 = "StateSnapshot.characteristics.loadingStates";
                v43 = 43;
              }

              else
              {
                sub_1D1AC373C(v45, v46, 0);
                v44 = "StateSnapshot.characteristics.refresh";
                v43 = 37;
              }
            }

            else if (v47 == 2)
            {
              sub_1D1AC373C(v45, v46, 2u);
              v44 = "StateSnapshot.characteristics.overrideValues";
              v43 = 44;
            }

            else if (v47 == 3)
            {
              sub_1D1AC373C(v45, v46, 3u);
              v44 = "StateSnapshot.characteristics.localOverrideValues";
              v43 = 49;
            }

            else
            {
              sub_1D1AC373C(v45, v46, 4u);
              v44 = "StateSnapshot.characteristics.statelessValues";
              v43 = 45;
            }

            break;
          case 2u:
            sub_1D1B23038(v74, type metadata accessor for StateSnapshot.UpdateType);
            v44 = "StateSnapshot.actionSets";
            v43 = 24;
            break;
          case 3u:
            sub_1D1B23038(v74, type metadata accessor for StateSnapshot.UpdateType);
            v44 = "StateSnapshot.userActionPredictions";
            v43 = 35;
            break;
          case 4u:
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
            v51 = v74;

            v52 = sub_1D1E66A7C();
            (*(*(v52 - 8) + 8))(v51, v52);
            v44 = "StateSnapshot.softwareUpdate";
            v43 = 28;
            break;
          case 5u:
            v56 = sub_1D1E66A7C();
            (*(*(v56 - 8) + 8))(v74, v56);
            v44 = "StateSnapshot.softwareUpdateOverride";
            v43 = 36;
            break;
          case 6u:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
            v48 = v74;

            v49 = sub_1D1E66A7C();
            (*(*(v49 - 8) + 8))(v48, v49);
            v44 = "StateSnapshot.profiles";
            v43 = 22;
            break;
          case 7u:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);
            v59 = v74;

            v60 = sub_1D1E66A7C();
            (*(*(v60 - 8) + 8))(v59, v60);
            v44 = "StateSnapshot.lightProfile";
            v43 = 26;
            break;
          case 8u:
            v44 = "StateSnapshot.snapshotStream";
            v43 = 28;
            break;
          case 9u:
            v57 = v74;

            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
            sub_1D1B23038(v57 + *(v58 + 48), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
            v44 = "StateSnapshot.adaptiveTemperatureSetting";
            v43 = 40;
            break;
          case 0xAu:
            sub_1D1B23038(v74, type metadata accessor for StateSnapshot.UpdateType);
            v44 = "StateSnapshot.adaptiveTemperatureSleepSchedule";
            v43 = 46;
            break;
          case 0xBu:
            sub_1D1B23038(v74, type metadata accessor for StateSnapshot.UpdateType);
            v44 = "StateSnapshot.cleanEnergySetting";
            v43 = 32;
            break;
          case 0xCu:
            v53 = v74;

            v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
            v55 = sub_1D1E66A7C();
            (*(*(v55 - 8) + 8))(v53 + v54, v55);
            v44 = "StateSnapshot.matterDevices";
            v43 = 27;
            break;
          case 0xDu:
            break;
          default:
            sub_1D1B23038(v74, type metadata accessor for StateSnapshot.UpdateType);
            v44 = "StateSnapshot.all";
            v43 = 17;
            break;
        }

        sub_1D1B23038(v75, type metadata accessor for StateSnapshot.UpdateType);
        v77 = v40;
        v62 = *(v40 + 16);
        v61 = *(v40 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_1D178DB90((v61 > 1), v62 + 1, 1);
          v40 = v77;
        }

        *(v40 + 16) = v62 + 1;
        v63 = v40 + 24 * v62;
        *(v63 + 32) = v44;
        *(v63 + 40) = v43;
        *(v63 + 48) = 2;
        v41 += v76;
        --v39;
      }

      while (v39);
    }

    v64 = sub_1D1E67E7C();
    v65 = v72;
    (*(*(v64 - 8) + 56))(v72, 1, 1, v64);
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v67[4] = v66;
    v67[5] = v21;
    v67[6] = v40;
    sub_1D17C71F0(0, 0, v65, &unk_1D1E98070, v67);
  }

  return result;
}

uint64_t sub_1D1B21DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B21DE4, 0, 0);
}

uint64_t sub_1D1B21DE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B21EA8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D1B21EA8()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D177F424(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D177F424((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *(v0 + 56);
  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = v7;
  *(v1 + v2) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1B21FB8, 0, 0);
}

uint64_t sub_1D1B21FE0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v48 - v7;
  v9 = *(a1 + 16);
  if (v9 >= 2)
  {
    v48[0] = a2;
    v48[1] = v2;
    v49 = v8;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D178DB90(0, v9, 0);
    v10 = (a1 + 48);
    v11 = v50;
    v12 = "MatterStateSnapshot.devicesWithReads";
    do
    {
      v14 = *v10;
      v10 += 24;
      v13 = v14;
      v15 = v14 == 3;
      if (v14 == 3)
      {
        v16 = "MatterStateSnapshot.snapshotStreamDisabled";
      }

      else
      {
        v16 = "MatterStateSnapshot.all";
      }

      if (v15)
      {
        v17 = 42;
      }

      else
      {
        v17 = 23;
      }

      if (v13 == 2)
      {
        v16 = v12;
        v17 = 36;
      }

      if (v13)
      {
        v18 = "MatterStateSnapshot.devices";
      }

      else
      {
        v18 = "MatterStateSnapshot.home";
      }

      if (v13)
      {
        v19 = 27;
      }

      else
      {
        v19 = 24;
      }

      if (v13 <= 1)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v13 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      v50 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = v12;
        sub_1D178DB90((v22 > 1), v23 + 1, 1);
        v12 = v25;
        v11 = v50;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 24 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      *(v24 + 48) = 2;
      --v9;
    }

    while (v9);
    v26 = v48[0];
    v27 = *(v48[0] + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v50 = MEMORY[0x1E69E7CC0];
      sub_1D178DB90(0, v27, 0);
      v29 = (v26 + 48);
      v28 = v50;
      v30 = "MatterStateSnapshot.devicesWithReads";
      do
      {
        v32 = *v29;
        v29 += 24;
        v31 = v32;
        v33 = v32 == 3;
        if (v32 == 3)
        {
          v34 = "MatterStateSnapshot.snapshotStreamDisabled";
        }

        else
        {
          v34 = "MatterStateSnapshot.all";
        }

        if (v33)
        {
          v35 = 42;
        }

        else
        {
          v35 = 23;
        }

        if (v31 == 2)
        {
          v34 = v30;
          v35 = 36;
        }

        if (v31)
        {
          v36 = "MatterStateSnapshot.devices";
        }

        else
        {
          v36 = "MatterStateSnapshot.home";
        }

        if (v31)
        {
          v37 = 27;
        }

        else
        {
          v37 = 24;
        }

        if (v31 <= 1)
        {
          v38 = v36;
        }

        else
        {
          v38 = v34;
        }

        if (v31 <= 1)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        v50 = v28;
        v41 = *(v28 + 16);
        v40 = *(v28 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = v30;
          sub_1D178DB90((v40 > 1), v41 + 1, 1);
          v30 = v43;
          v28 = v50;
        }

        *(v28 + 16) = v41 + 1;
        v42 = v28 + 24 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        *(v42 + 48) = 2;
        --v27;
      }

      while (v27);
    }

    v44 = sub_1D1E67E7C();
    v45 = v49;
    (*(*(v44 - 8) + 56))(v49, 1, 1, v44);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v46;
    v47[5] = v11;
    v47[6] = v28;
    sub_1D17C71F0(0, 0, v45, &unk_1D1E98048, v47);
  }

  return result;
}

uint64_t sub_1D1B22394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B223B8, 0, 0);
}

uint64_t sub_1D1B223B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B2247C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D1B2247C()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v3 = *(v1 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D177F424(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D177F424((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = *(v0 + 56);
  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = v7;
  *(v1 + v2) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1B23208, 0, 0);
}

uint64_t sub_1D1B2258C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D1A44134;

  return v6(a1);
}

id sub_1D1B22684()
{
  v0 = sub_1D1B1D4B0();
  sub_1D1B1D814(v0);
  return v0;
}

uint64_t type metadata accessor for PhoenixMetricsAggregator(uint64_t a1)
{
  result = qword_1EE07C148;
  if (!qword_1EE07C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B2275C(uint64_t a1)
{
  result = sub_1D1E68A4C();
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

uint64_t sub_1D1B2283C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1B1E850(a1, v4, v5, v6);
}

uint64_t sub_1D1B228F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B1EB98(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1B22ADC()
{
  result = qword_1EC64AD28;
  if (!qword_1EC64AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD28);
  }

  return result;
}

unint64_t sub_1D1B22B30()
{
  result = qword_1EE07A020;
  if (!qword_1EE07A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A020);
  }

  return result;
}

uint64_t sub_1D1B22B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD30, &qword_1D1E98018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B22BF4()
{
  result = qword_1EC64AD40;
  if (!qword_1EC64AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD40);
  }

  return result;
}

uint64_t sub_1D1B22C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B22C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B22394(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1B22D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B22DC0(uint64_t a1)
{
  v4 = *(_s8IntervalVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B20B9C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B22EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_36Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1B22F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B21DC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1B23038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B23098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17C914C(a1, v4);
}

uint64_t sub_1D1B23150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D17C914C(a1, v4);
}

void sub_1D1B2320C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  sub_1D1B2AA10(v1, v27);
  v7 = 0;
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  v25 = v2;
  while (v6)
  {
LABEL_9:
    v12 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v6)) | (v7 << 6)));
    v13 = *(v12 + 16);
    if (v13)
    {
      v26 = v8;
      v27[0] = v10;

      sub_1D178D4BC(0, v13, 0);
      v10 = v27[0];
      v14 = (v12 + 32);
      v15 = *(v27[0] + 16);
      do
      {
        v17 = *v14;
        v14 += 2;
        v16 = v17;
        v27[0] = v10;
        v18 = *(v10 + 24);
        v19 = v15 + 1;
        if (v15 >= v18 >> 1)
        {
          sub_1D178D4BC((v18 > 1), v15 + 1, 1);
          v10 = v27[0];
        }

        *(v10 + 16) = v19;
        *(v10 + 8 * v15++ + 32) = v16;
        --v13;
      }

      while (v13);
      v2 = v25;
      v8 = v26;
LABEL_16:
      v20 = 0;
      v21 = 32;
      do
      {
        v22 = *(v10 + v21);
        v23 = __OFADD__(v20, v22);
        v20 += v22;
        if (v23)
        {
          __break(1u);
          goto LABEL_26;
        }

        v21 += 8;
        --v19;
      }

      while (v19);

      v10 = MEMORY[0x1E69E7CC0];
      if (v20 < 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v19 = *(v10 + 16);

    if (v19)
    {
      goto LABEL_16;
    }

    v20 = 0;
LABEL_20:
    v6 &= v6 - 1;
    v24 = __CFADD__(v8, v20);
    v8 += v20;
    if (v24)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v7;
    if (v6)
    {
      v7 = v11;
      goto LABEL_9;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

char *sub_1D1B23438(uint64_t a1)
{
  v4 = sub_1D1E6786C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E65F4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  (*(v8 + 16))(v10, a1, v7);
  sub_1D1E65F5C();
  v11 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v11;
  v19[2] = *(v1 + 32);
  v20 = *(v1 + 48);
  sub_1D1B2AB30();
  v12 = sub_1D1E65F6C();
  if (!v2)
  {
    v14 = v12;
    v15 = v13;
    sub_1D1E6785C();
    v16 = sub_1D1E6782C();
    if (v17)
    {
      v6 = v16;
      sub_1D174E7C4(v14, v15);

      return v6;
    }

    sub_1D1B22BF4();
    swift_allocError();
    swift_willThrow();
    sub_1D174E7C4(v14, v15);
  }

  return v6;
}

double sub_1D1B2364C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s8IntervalVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v25 = a1;
    v26 = a3;
    *&v28[0] = MEMORY[0x1E69E7CC0];
    sub_1D178DB70(0, v10, 0);
    v11 = *&v28[0];
    v12 = *(v7 + 80);
    v24[1] = a2;
    v13 = a2 + ((v12 + 32) & ~v12);
    v27 = *(v7 + 72);
    do
    {
      sub_1D1B2AA48(v13, v9, _s8IntervalVMa);
      v14 = sub_1D1E68A1C();
      v16 = v15;
      sub_1D1B2AAB0(v9, _s8IntervalVMa);
      *&v28[0] = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_1D178DB70((v17 > 1), v18 + 1, 1);
        v11 = *&v28[0];
      }

      v11[2] = v18 + 1;
      v19 = &v11[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v13 += v27;
      --v10;
    }

    while (v10);

    a1 = v25;
    a3 = v26;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1B2AA48(a1, a3, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  sub_1D1B2BACC(v11, v28);

  sub_1D1B2AAB0(a1, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  v20 = a3 + *(_s8IntervalV11AggregationVMa(0) + 20);
  v21 = v28[3];
  *(v20 + 32) = v28[2];
  *(v20 + 48) = v21;
  *(v20 + 64) = v28[4];
  *(v20 + 80) = v29;
  result = *v28;
  v23 = v28[1];
  *v20 = v28[0];
  *(v20 + 16) = v23;
  return result;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.init(totalSnapshotTime:aggregationInterval:maxSnapshotTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 481) = a8;
  *(v8 + 392) = a6;
  *(v8 + 400) = a7;
  *(v8 + 376) = a4;
  *(v8 + 384) = a5;
  *(v8 + 360) = a2;
  *(v8 + 368) = a3;
  *(v8 + 352) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B238C8, 0, 0);
}

uint64_t sub_1D1B238C8()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_1D1E6781C();
  v5 = v4;

  v0[51] = v3;
  v0[52] = v5;
  v6 = sub_1D1E6931C();
  v0[53] = v6;
  v0[54] = v7;
  v8 = v6 * 1000000000.0 + v7 * 0.000000001;
  v9 = sub_1D1E6931C();
  v0[55] = v9;
  v0[56] = v10;
  if (v8 / (v9 * 1000000000.0 + v10 * 0.000000001) <= 0.1)
  {
    v13 = v0[44];

    v13[5] = 0u;
    v13[6] = 0u;
    v13[3] = 0u;
    v13[4] = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_1D1E67E1C();
    v0[57] = sub_1D1E67E0C();
    v12 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1B23AAC, v12, v11);
  }
}

uint64_t sub_1D1B23AAC()
{

  sub_1D1B25844((v0 + 16));
  *(v0 + 464) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1B23B5C, 0, 0);
}

uint64_t sub_1D1B23B5C()
{
  result = sub_1D1E6931C();
  v3 = round((result * 1000000000.0 + v2 * 0.000000001) / 1000000.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1D1E6931C();
  v5 = round((result * 1000000000.0 + v4 * 0.000000001) / 1000000.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((*(v0 + 481) & 1) == 0)
  {
    result = sub_1D1E6931C();
    v9 = round((result * 1000000000.0 + v8 * 0.000000001) / 1000000.0);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v9 > -1.0)
      {
        if (v9 < 1.84467441e19)
        {
          v6 = v9;
          v7 = *(v0 + 481);
          goto LABEL_13;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 1;
LABEL_13:
  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  v14 = *(v0 + 352);
  v15 = *(v0 + 432) * 0.000000001 + *(v0 + 424) * 1000000000.0;
  v16 = *(v0 + 448) * 0.000000001 + *(v0 + 440) * 1000000000.0;
  v17 = v7 & 1;
  *(v0 + 480) = v17;
  *(v0 + 128) = 0xD000000000000014;
  *(v0 + 136) = 0x80000001D1EC4E70;
  *(v0 + 144) = 0xD000000000000018;
  *(v0 + 152) = 0x80000001D1EC4E90;
  *(v0 + 160) = v3;
  v18 = v15 / v16;
  *(v0 + 168) = v5;
  *(v0 + 176) = v6;
  *(v0 + 184) = v17;
  *(v0 + 192) = v18;
  *(v0 + 200) = v11;
  *(v0 + 208) = v10;
  *(v0 + 216) = 1;
  *(v0 + 224) = v13;
  *(v0 + 232) = v12;
  v19 = *(v0 + 128);
  v20 = *(v0 + 160);
  v14[1] = *(v0 + 144);
  v14[2] = v20;
  *v14 = v19;
  v21 = *(v0 + 224);
  v23 = *(v0 + 176);
  v22 = *(v0 + 192);
  v14[5] = *(v0 + 208);
  v14[6] = v21;
  v14[3] = v23;
  v14[4] = v22;
  *(v0 + 16) = 0xD000000000000014;
  *(v0 + 24) = 0x80000001D1EC4E70;
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000001D1EC4E90;
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = v17;
  *(v0 + 80) = v18;
  *(v0 + 88) = v11;
  *(v0 + 96) = v10;
  *(v0 + 104) = 1;
  *(v0 + 112) = v13;
  *(v0 + 120) = v12;
  sub_1D1B22A14(v0 + 128, v0 + 240);
  sub_1D1B22A70(v0 + 16);
  v24 = *(v0 + 8);

  return v24();
}

uint64_t PhoenixMetricsAggregator.IntervalKey.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhoenixMetricsAggregator.IntervalKey.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);

  return sub_1D17783E0(v3, a1);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
    v9 = *v0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = v0[1];
    v13[0] = *v0;
    v13[1] = v10;

    MEMORY[0x1D3890F70](43, 0xE100000000000000);
    sub_1D1B293CC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v11);

    v9 = v13[0];
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t PhoenixMetricsAggregator.IntervalKey.init(identifier:homeId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);

  return sub_1D1778308(a3, v5);
}

uint64_t sub_1D1B24138()
{
  if (*v0)
  {
    return 0x6449656D6F68;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D1B24174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1B24254(uint64_t a1)
{
  v2 = sub_1D1B29378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B24290(uint64_t a1)
{
  v2 = sub_1D1B29378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD60, &qword_1D1E980E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29378();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E68ECC();
  if (!v1)
  {
    type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
    v8[14] = 1;
    sub_1D1E66A7C();
    sub_1D1B293CC(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E678EC();
  v9 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D1E6922C();
  sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.IntervalKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD68, &qword_1D1E980E8);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29378();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v10;
  v13 = v18;
  v21 = 0;
  *v12 = sub_1D1E68D2C();
  v12[1] = v14;
  sub_1D1E66A7C();
  v20 = 1;
  sub_1D1B293CC(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68CBC();
  (*(v13 + 8))(v9, v19);
  sub_1D1778308(v6, v12 + *(v16 + 20));
  sub_1D1B2AA48(v12, v17, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B2AAB0(v12, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
}

uint64_t sub_1D1B24B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E678EC();
  sub_1D17783E0(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1D1E6922C();
  sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D1B24D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D17783E0(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.OpenInterval.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1E678EC();
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  return sub_1D1E676EC();
}

uint64_t PhoenixMetricsAggregator.OpenInterval.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v9 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2541C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.domainPrefix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.maxSnapshotTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.processName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1D1B25844@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [v4 homes];
  sub_1D1821898();
  v6 = sub_1D1E67C1C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_7:
    swift_getKeyPath();
    sub_1D1B293CC(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    swift_beginAccess();
    result = sub_1D1B2B9EC();
    *a1 = v7;
    a1[1] = result;
    return result;
  }

  v7 = sub_1D1E6873C();

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B25A18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000014;
    v5 = 0x4E737365636F7270;
    if (a1 == 8)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 != 5)
    {
      v6 = 0x664F7265626D756ELL;
    }

    if (a1 <= 6u)
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
    v1 = 0x6D614E746E657665;
    v2 = 0xD000000000000013;
    if (a1 != 3)
    {
      v2 = 0x7370616E5378616DLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x72506E69616D6F64;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1B25BA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1B2A6C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1B25BC8(uint64_t a1)
{
  v2 = sub_1D1B29434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B25C04(uint64_t a1)
{
  v2 = sub_1D1B29434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD78, &qword_1D1E980F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v8 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v8;
  v18 = *(v1 + 48);
  v17 = *(v1 + 56);
  v9 = *(v1 + 72);
  v15 = *(v1 + 80);
  v16 = v9;
  v14 = *(v1 + 88);
  v10 = *(v1 + 104);
  v13[0] = *(v1 + 96);
  v13[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29434();
  sub_1D1E6930C();
  v33 = 0;
  v11 = v23;
  sub_1D1E68ECC();
  if (!v11)
  {
    v32 = 1;
    sub_1D1E68E0C();
    v31 = 2;
    sub_1D1E68F0C();
    v30 = 3;
    sub_1D1E68F0C();
    v29 = 4;
    sub_1D1E68E4C();
    v28 = 5;
    sub_1D1E68EEC();
    v27 = 6;
    sub_1D1E68F0C();
    v26 = 7;
    sub_1D1E68F0C();
    v25 = 8;
    sub_1D1E68EDC();
    v24 = 9;
    sub_1D1E68ECC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D1B25EF0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D1B25F38()
{
  MEMORY[0x1D3890F70](60, 0xE100000000000000);
  v0 = PhoenixMetricsAggregator.IntervalKey.description.getter();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](8236, 0xE200000000000000);
  _s8IntervalVMa(0);
  sub_1D1E68A2C();
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](45, 0xE100000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](61, 0xE100000000000000);
  sub_1D1E68A1C();
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  MEMORY[0x1D3890F70](0, 0xE000000000000000);

  MEMORY[0x1D3890F70](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D1B260D4()
{
  sub_1D1E6884C();

  strcpy(v3, "[Aggregation-");
  v0 = PhoenixMetricsAggregator.IntervalKey.description.getter();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](0x7363697274656D2CLL, 0xE90000000000003ALL);
  _s8IntervalV11AggregationVMa(0);
  v1 = sub_1D1B261E0();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_1D1B261E0()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](0x3A6D75732CLL, 0xE500000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A6E696D2CLL, 0xE500000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A78616D2CLL, 0xE500000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A6776612CLL, 0xE500000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A7665647474732CLL, 0xE800000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D1B263C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADC8, &qword_1D1E988D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2AD9C();
  sub_1D1E6930C();
  v20 = 0;
  type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D1B293CC(&qword_1EE07A300, type metadata accessor for PhoenixMetricsAggregator.IntervalKey, &protocol conformance descriptor for PhoenixMetricsAggregator.IntervalKey);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = (v3 + *(_s8IntervalV11AggregationVMa(0) + 20));
    v10 = v9[3];
    v16 = v9[2];
    v17 = v10;
    v18 = v9[4];
    v19 = *(v9 + 10);
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD0, &qword_1D1E988D8);
    sub_1D17D8EA8(&qword_1EE079E58, &qword_1EC64ADD0, &qword_1D1E988D8, &unk_1D1E98CD8);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1B265F0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  sub_1D1E678EC();
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  v11 = (v2 + *(_s8IntervalV11AggregationVMa(0) + 20));
  v12 = *v11;
  v13 = v11[9];
  v15[0] = v11[10];
  v15[1] = v13;
  MEMORY[0x1D3892850](v12);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6938C();
}

uint64_t sub_1D1B26868()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v9 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  v10 = (v1 + *(_s8IntervalV11AggregationVMa(0) + 20));
  v11 = *v10;
  v13 = v10[10];
  MEMORY[0x1D3892850](v11);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B26AF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE30, &qword_1D1E98918);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v20 - v6;
  v8 = _s8IntervalV11AggregationVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2AD9C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v11 = v22;
  v12 = v10;
  LOBYTE(v25) = 0;
  sub_1D1B293CC(&qword_1EC64AE38, type metadata accessor for PhoenixMetricsAggregator.IntervalKey, &protocol conformance descriptor for PhoenixMetricsAggregator.IntervalKey);
  v14 = v23;
  v13 = v24;
  sub_1D1E68D7C();
  sub_1D1B2B538(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD0, &qword_1D1E988D8);
  v31 = 1;
  sub_1D17D8EA8(&qword_1EC64AE40, &qword_1EC64ADD0, &qword_1D1E988D8, &unk_1D1E98D00);
  sub_1D1E68D7C();
  (*(v11 + 8))(v7, v13);
  v15 = v21;
  v16 = v12 + *(v20 + 20);
  v17 = v28;
  *(v16 + 32) = v27;
  *(v16 + 48) = v17;
  *(v16 + 64) = v29;
  *(v16 + 80) = v30;
  v18 = v26;
  *v16 = v25;
  *(v16 + 16) = v18;
  sub_1D1B2AA48(v12, v15, _s8IntervalV11AggregationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B2AAB0(v12, _s8IntervalV11AggregationVMa);
}

uint64_t sub_1D1B26E6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1E678EC();
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  _s8IntervalVMa(0);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  sub_1D1E676EC();
  return sub_1D1E676EC();
}

uint64_t sub_1D1B270D0()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v9 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  _s8IntervalVMa(0);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B27348()
{
  if (*v0)
  {
    return 0x7363697274656DLL;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1D1B2737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1B27458(uint64_t a1)
{
  v2 = sub_1D1B2AD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B27494(uint64_t a1)
{
  v2 = sub_1D1B2AD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B274D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v12 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v4 + *(v12 + 20), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v8, v5);
  }

  v13 = (v4 + *(a2 + 20));
  v14 = *v13;
  v16 = v13[10];
  MEMORY[0x1D3892850](v14);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B277A0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v2 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B27A24(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE00, &qword_1D1E98908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2B0FC();
  sub_1D1E6930C();
  v12 = 0;
  sub_1D1E68EFC();
  if (!v3)
  {
    v11 = 1;
    sub_1D1E68EFC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1B27BAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265746C69665F31;
  }

  else
  {
    v3 = 0x746E756F635F30;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x7265746C69665F31;
  }

  else
  {
    v5 = 0x746E756F635F30;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
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
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t sub_1D1B27C58()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B27CE0(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B27D54(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D1B27DE4(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F635F30;
  if (*v1)
  {
    v2 = 0x7265746C69665F31;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1B27E28()
{
  if (*v0)
  {
    return 0x7265746C69665F31;
  }

  else
  {
    return 0x746E756F635F30;
  }
}

uint64_t sub_1D1B27E74(uint64_t a1)
{
  v2 = sub_1D1B2B0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B27EB0(uint64_t a1)
{
  v2 = sub_1D1B2B0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B27EEC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1B2AF54(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1D1B27F34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD8, &qword_1D1E988E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2ADF0();
  sub_1D1E6930C();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE0, &qword_1D1E988E8);
  sub_1D17D8EA8(qword_1EE079E60, &qword_1EC64ADE0, &qword_1D1E988E8, &unk_1D1E98CD8);
  sub_1D1E68F1C();
  if (!v2)
  {
    *&v13 = *(v3 + 6);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2AE44();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1B28124(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746E756F635F31;
  }

  else
  {
    v3 = 0x4D6F697461725F30;
  }

  if (v2)
  {
    v4 = 0xEE00736369727465;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746E756F635F31;
  }

  else
  {
    v5 = 0x4D6F697461725F30;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEE00736369727465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t sub_1D1B281D8()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B28268(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D1B282E4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B2837C@<X0>(char *a3@<X8>)
{
  v4 = sub_1D1E68C2C();

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

void sub_1D1B283D8(uint64_t *a1@<X8>)
{
  v2 = 0x4D6F697461725F30;
  if (*v1)
  {
    v2 = 0x73746E756F635F31;
  }

  v3 = 0xEE00736369727465;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1B28424()
{
  if (*v0)
  {
    return 0x73746E756F635F31;
  }

  else
  {
    return 0x4D6F697461725F30;
  }
}

uint64_t sub_1D1B28478@<X0>(char *a4@<X8>)
{
  v5 = sub_1D1E68C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1D1B284D8(uint64_t a1)
{
  v2 = sub_1D1B2ADF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B28514(uint64_t a1)
{
  v2 = sub_1D1B2ADF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D1B28550@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D1B2B150(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D1B285B8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v15 = *(v11 + 48);
  sub_1D17783E0(a1 + v14, v13);
  sub_1D17783E0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1D17783E0(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v17 = sub_1D1E6775C();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  _s8IntervalVMa(0);
  if ((sub_1D1E68A0C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = sub_1D1E68A0C();
  return v19 & 1;
}

uint64_t sub_1D1B28918(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  if (*a1 != *a2 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v15 = *(v11 + 48);
  sub_1D17783E0(a1 + v14, v13);
  sub_1D17783E0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D17783E0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v17 = sub_1D1E6775C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
LABEL_10:
  v19 = *(_s8IntervalV11AggregationVMa(0) + 20);
  v20 = (a1 + v19);
  v21 = *(a1 + v19);
  v22 = (a2 + v19);
  if (v21 == *v22)
  {
    v23 = v20[7];
    v27[4] = v20[8];
    v27[5] = v23;
    v24 = v20[9];
    v27[2] = v20[10];
    v27[3] = v24;
    v25 = v22[9];
    v27[0] = v22[10];
    v27[1] = v25;
    if (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s13HomeDataModel24PhoenixMetricsAggregatorC12OpenIntervalV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v15 = *(v11 + 48);
  sub_1D17783E0(a1 + v14, v13);
  sub_1D17783E0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
LABEL_11:
      type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0);
      v17 = sub_1D1E68A0C();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_1D17783E0(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v18 = sub_1D1E6775C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

BOOL _s13HomeDataModel24PhoenixMetricsAggregatorC11IntervalKeyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 == *a2 || (v14 = sub_1D1E6904C(), result = 0, (v14 & 1) != 0))
  {
    v16 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
    v17 = *(v11 + 48);
    sub_1D17783E0(a1 + v16, v13);
    sub_1D17783E0(a2 + v16, &v13[v17]);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
        return 1;
      }
    }

    else
    {
      sub_1D17783E0(v13, v10);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v13[v17], v4);
        sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v19 = sub_1D1E6775C();
        v20 = *(v5 + 8);
        v20(v7, v4);
        v20(v10, v4);
        sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  return result;
}

unint64_t sub_1D1B29378()
{
  result = qword_1EE07A318[0];
  if (!qword_1EE07A318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07A318);
  }

  return result;
}

uint64_t sub_1D1B293CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1B29434()
{
  result = qword_1EC64AD80;
  if (!qword_1EC64AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD80);
  }

  return result;
}

unint64_t sub_1D1B29518(uint64_t a1)
{
  result = sub_1D1B22ADC();
  *(a1 + 8) = result;
  return result;
}

void sub_1D1B29568(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D1B29648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D1B29690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D1E68A2C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D1E68A2C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D1B29940(uint64_t a1)
{
  result = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D1E68A2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1B299E8()
{
  result = qword_1EC64AD90;
  if (!qword_1EC64AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD90);
  }

  return result;
}

unint64_t sub_1D1B29A40()
{
  result = qword_1EC64AD98;
  if (!qword_1EC64AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD98);
  }

  return result;
}

unint64_t sub_1D1B29AE0()
{
  result = qword_1EC64ADA8;
  if (!qword_1EC64ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADA8);
  }

  return result;
}

unint64_t sub_1D1B29B38()
{
  result = qword_1EC64ADB0;
  if (!qword_1EC64ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADB0);
  }

  return result;
}

unint64_t sub_1D1B29B90()
{
  result = qword_1EE07A308;
  if (!qword_1EE07A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A308);
  }

  return result;
}

unint64_t sub_1D1B29BE8()
{
  result = qword_1EE07A310;
  if (!qword_1EE07A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A310);
  }

  return result;
}

uint64_t sub_1D1B29C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v155 = MEMORY[0x1E69E7CC0];
    sub_1D178D49C(0, v3, 0);
    v4 = v155;
    v5 = *(v155 + 16);
    v6 = v2 + 40;
    do
    {
      v7 = *(*v6 + 16);
      v8 = *(*(v6 - 8) + 16);
      v155 = v4;
      v9 = *(v4 + 24);
      if (v5 >= v9 >> 1)
      {
        sub_1D178D49C((v9 > 1), v5 + 1, 1);
        v4 = v155;
      }

      *(v4 + 16) = v5 + 1;
      *(v4 + 8 * v5 + 32) = -(1.0 - v7 / v8);
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);
    v2 = a1;
  }

  sub_1D1B2BD3C(v4, &v155);

  v136 = v155;
  v137 = v157;
  v138 = v156;
  v10 = v158;
  v140 = *(v2 + 16);
  if (v140)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v141 = v2 + 32;
    v15 = MEMORY[0x1E69E7CC8];
LABEL_10:
    if (v14 >= *(v2 + 16))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v150 = v13;
    v152 = v15;
    v144 = v12;
    v145 = v14;
    v16 = (v141 + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*v16 + 16);
    if (!v19)
    {
      v143 = v11;

      v31 = MEMORY[0x1E69E7CC8];
      v34 = *(v18 + 16);
      if (v34)
      {
        goto LABEL_43;
      }

      goto LABEL_71;
    }

    swift_bridgeObjectRetain_n();
    v148 = v18;

    if (*(v17 + 16))
    {
      v20 = sub_1D1E6888C();
      v22 = v21;
      sub_1D17169C0(v11, 0);
      v23 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_1D171D2F0(v20, v22);
      v27 = *(v23 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (!__OFADD__(v27, v28))
      {
        v30 = v25;
        if (*(MEMORY[0x1E69E7CC8] + 24) < v29)
        {
          sub_1D172F118(v29, isUniquelyReferenced_nonNull_native);
          v31 = v23;
          v32 = sub_1D171D2F0(v20, v22);
          if ((v30 & 1) != (v33 & 1))
          {
LABEL_111:
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v26 = v32;
          if ((v30 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_26;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v31 = MEMORY[0x1E69E7CC8];
          if (v25)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D173CB00();
          v31 = v23;
          if (v30)
          {
            goto LABEL_22;
          }
        }

LABEL_24:
        *(v31 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v35 = (*(v31 + 48) + 16 * v26);
        *v35 = v20;
        v35[1] = v22;
        v36 = (*(v31 + 56) + 16 * v26);
        *v36 = 0;
        v36[1] = 0;
        v37 = *(v31 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        *(v31 + 16) = v39;
LABEL_26:
        v40 = (*(v31 + 56) + 16 * v26);
        if (!__OFADD__(*v40, 1))
        {
          ++*v40;
          if (v19 != 1)
          {
            v41 = v17 + 72;
            v42 = 1;
            while (1)
            {
              if (v42 >= *(v17 + 16))
              {
                goto LABEL_100;
              }

              v43 = sub_1D1E6888C();
              v45 = v44;
              sub_1D17169C0(sub_1D1B2B8E4, 0);
              v46 = swift_isUniquelyReferenced_nonNull_native();
              v153 = v31;
              v47 = sub_1D171D2F0(v43, v45);
              v49 = *(v31 + 16);
              v50 = (v48 & 1) == 0;
              v38 = __OFADD__(v49, v50);
              v51 = v49 + v50;
              if (v38)
              {
                goto LABEL_101;
              }

              v52 = v48;
              if (*(v31 + 24) < v51)
              {
                break;
              }

              if (v46)
              {
                goto LABEL_35;
              }

              v55 = v47;
              sub_1D173CB00();
              v47 = v55;
              v31 = v153;
              if ((v52 & 1) == 0)
              {
LABEL_38:
                *(v31 + 8 * (v47 >> 6) + 64) |= 1 << v47;
                v56 = (*(v31 + 48) + 16 * v47);
                *v56 = v43;
                v56[1] = v45;
                v57 = (*(v31 + 56) + 16 * v47);
                *v57 = 0;
                v57[1] = 0;
                v58 = *(v31 + 16);
                v38 = __OFADD__(v58, 1);
                v59 = v58 + 1;
                if (v38)
                {
                  goto LABEL_106;
                }

                *(v31 + 16) = v59;
                goto LABEL_40;
              }

LABEL_36:
              v54 = v47;

              v47 = v54;
LABEL_40:
              v60 = (*(v31 + 56) + 16 * v47);
              if (__OFADD__(*v60, 1))
              {
                goto LABEL_102;
              }

              ++v42;
              ++*v60;
              v41 += 24;
              if (v19 == v42)
              {
                goto LABEL_42;
              }
            }

            sub_1D172F118(v51, v46);
            v47 = sub_1D171D2F0(v43, v45);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_111;
            }

LABEL_35:
            if ((v52 & 1) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_36;
          }

LABEL_42:
          swift_bridgeObjectRelease_n();
          v143 = sub_1D1B2B8E4;
          v18 = v148;
          v34 = *(v148 + 16);
          if (v34)
          {
LABEL_43:
            if (*(v18 + 16))
            {
              v61 = sub_1D1E6888C();
              v63 = v62;
              sub_1D17169C0(v144, 0);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              v65 = sub_1D171D2F0(v61, v63);
              v67 = *(v31 + 16);
              v68 = (v66 & 1) == 0;
              v38 = __OFADD__(v67, v68);
              v69 = v67 + v68;
              if (!v38)
              {
                v70 = v66;
                if (*(v31 + 24) >= v69)
                {
                  if ((v64 & 1) == 0)
                  {
                    v73 = v65;
                    sub_1D173CB00();
                    v65 = v73;
                    if (v70)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_52;
                  }
                }

                else
                {
                  sub_1D172F118(v69, v64);
                  v65 = sub_1D171D2F0(v61, v63);
                  if ((v70 & 1) != (v71 & 1))
                  {
                    goto LABEL_111;
                  }
                }

                if (v70)
                {
LABEL_50:
                  v72 = v65;

                  v65 = v72;
LABEL_54:
                  v78 = *(v31 + 56) + 16 * v65;
                  v80 = *(v78 + 8);
                  v79 = (v78 + 8);
                  v81 = v80 + 1;
                  if (!__OFADD__(v80, 1))
                  {
                    *v79 = v81;
                    if (v34 != 1)
                    {
                      v82 = v18 + 72;
                      v83 = 1;
                      while (1)
                      {
                        if (v83 >= *(v18 + 16))
                        {
                          goto LABEL_103;
                        }

                        v84 = sub_1D1E6888C();
                        v86 = v85;
                        sub_1D17169C0(sub_1D1B2B8E4, 0);
                        v87 = swift_isUniquelyReferenced_nonNull_native();
                        v154 = v31;
                        v88 = sub_1D171D2F0(v84, v86);
                        v90 = *(v31 + 16);
                        v91 = (v89 & 1) == 0;
                        v38 = __OFADD__(v90, v91);
                        v92 = v90 + v91;
                        if (v38)
                        {
                          goto LABEL_104;
                        }

                        v93 = v89;
                        if (*(v31 + 24) < v92)
                        {
                          break;
                        }

                        if (v87)
                        {
                          goto LABEL_63;
                        }

                        v96 = v88;
                        sub_1D173CB00();
                        v88 = v96;
                        v31 = v154;
                        if ((v93 & 1) == 0)
                        {
LABEL_66:
                          *(v31 + 8 * (v88 >> 6) + 64) |= 1 << v88;
                          v97 = (*(v31 + 48) + 16 * v88);
                          *v97 = v84;
                          v97[1] = v86;
                          v98 = (*(v31 + 56) + 16 * v88);
                          *v98 = 0;
                          v98[1] = 0;
                          v99 = *(v31 + 16);
                          v38 = __OFADD__(v99, 1);
                          v100 = v99 + 1;
                          if (v38)
                          {
                            goto LABEL_107;
                          }

                          *(v31 + 16) = v100;
                          goto LABEL_68;
                        }

LABEL_64:
                        v95 = v88;

                        v88 = v95;
LABEL_68:
                        v101 = *(v31 + 56) + 16 * v88;
                        v103 = *(v101 + 8);
                        v102 = (v101 + 8);
                        v104 = v103 + 1;
                        if (__OFADD__(v103, 1))
                        {
                          goto LABEL_105;
                        }

                        ++v83;
                        *v102 = v104;
                        v82 += 24;
                        if (v34 == v83)
                        {
                          goto LABEL_70;
                        }
                      }

                      sub_1D172F118(v92, v87);
                      v88 = sub_1D171D2F0(v84, v86);
                      if ((v93 & 1) != (v94 & 1))
                      {
                        goto LABEL_111;
                      }

LABEL_63:
                      if ((v93 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_64;
                    }

LABEL_70:
                    v144 = sub_1D1B2B8E4;
                    goto LABEL_71;
                  }

                  goto LABEL_105;
                }

LABEL_52:
                *(v31 + 8 * (v65 >> 6) + 64) |= 1 << v65;
                v74 = (*(v31 + 48) + 16 * v65);
                *v74 = v61;
                v74[1] = v63;
                v75 = (*(v31 + 56) + 16 * v65);
                *v75 = 0;
                v75[1] = 0;
                v76 = *(v31 + 16);
                v38 = __OFADD__(v76, 1);
                v77 = v76 + 1;
                if (v38)
                {
                  goto LABEL_107;
                }

                *(v31 + 16) = v77;
                goto LABEL_54;
              }

LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

LABEL_71:
          v146 = v145 + 1;

          v105 = 0;
          v106 = 1 << *(v31 + 32);
          if (v106 < 64)
          {
            v107 = ~(-1 << v106);
          }

          else
          {
            v107 = -1;
          }

          v108 = v107 & *(v31 + 64);
          v109 = (v106 + 63) >> 6;
          v13 = v150;
          v147 = v109;
          if (!v108)
          {
            goto LABEL_75;
          }

          while (1)
          {
LABEL_79:
            v111 = (v105 << 10) | (16 * __clz(__rbit64(v108)));
            v112 = (*(v31 + 48) + v111);
            v113 = *v112;
            v114 = v112[1];
            v115 = (*(v31 + 56) + v111);
            v149 = v115[1];
            v151 = *v115;

            sub_1D17169C0(v13, 0);
            v116 = v152;
            v117 = swift_isUniquelyReferenced_nonNull_native();
            v119 = sub_1D171D2F0(v113, v114);
            v120 = v152[2];
            v121 = (v118 & 1) == 0;
            v122 = v120 + v121;
            if (__OFADD__(v120, v121))
            {
              goto LABEL_108;
            }

            v123 = v118;
            if (v152[3] >= v122)
            {
              if (v117)
              {
                if ((v118 & 1) == 0)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                sub_1D173C98C();
                v116 = v152;
                if ((v123 & 1) == 0)
                {
                  goto LABEL_88;
                }
              }
            }

            else
            {
              sub_1D172EE64(v122, v117);
              v124 = sub_1D171D2F0(v113, v114);
              if ((v123 & 1) != (v125 & 1))
              {
                goto LABEL_111;
              }

              v119 = v124;
              v116 = v152;
              if ((v123 & 1) == 0)
              {
LABEL_88:
                v116[(v119 >> 6) + 8] |= 1 << v119;
                v126 = (v116[6] + 16 * v119);
                *v126 = v113;
                v126[1] = v114;
                *(v116[7] + 8 * v119) = MEMORY[0x1E69E7CC0];
                v127 = v116[2];
                v38 = __OFADD__(v127, 1);
                v128 = v127 + 1;
                if (v38)
                {
                  goto LABEL_109;
                }

                v116[2] = v128;
                goto LABEL_90;
              }
            }

LABEL_90:
            v152 = v116;
            v129 = v116[7];
            v130 = *(v129 + 8 * v119);
            v131 = swift_isUniquelyReferenced_nonNull_native();
            *(v129 + 8 * v119) = v130;
            if ((v131 & 1) == 0)
            {
              v130 = sub_1D177F54C(0, *(v130 + 2) + 1, 1, v130);
              *(v129 + 8 * v119) = v130;
            }

            v133 = *(v130 + 2);
            v132 = *(v130 + 3);
            if (v133 >= v132 >> 1)
            {
              v130 = sub_1D177F54C((v132 > 1), v133 + 1, 1, v130);
              *(v129 + 8 * v119) = v130;
            }

            v108 &= v108 - 1;
            *(v130 + 2) = v133 + 1;
            v134 = &v130[16 * v133];
            *(v134 + 4) = v151;
            *(v134 + 5) = v149;
            v13 = sub_1D1716A4C;
            v109 = v147;
            if (!v108)
            {
              while (1)
              {
LABEL_75:
                v110 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  __break(1u);
                  goto LABEL_100;
                }

                if (v110 >= v109)
                {
                  break;
                }

                v108 = *(v31 + 64 + 8 * v110);
                ++v105;
                if (v108)
                {
                  v105 = v110;
                  goto LABEL_79;
                }
              }

              v14 = v146;
              v11 = v143;
              v12 = v144;
              v2 = a1;
              v15 = v152;
              if (v146 != v140)
              {
                goto LABEL_10;
              }

              goto LABEL_98;
            }
          }
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    else
    {
LABEL_100:
      __break(1u);
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v11 = 0;
  v144 = 0;
  v13 = 0;
  v15 = MEMORY[0x1E69E7CC8];
LABEL_98:
  sub_1D17169C0(v11, 0);
  sub_1D17169C0(v144, 0);
  result = sub_1D17169C0(v13, 0);
  *a2 = v136;
  *(a2 + 24) = v137;
  *(a2 + 8) = v138;
  *(a2 + 40) = v10;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_1D1B2A6C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E69616D6F64 && a2 == 0xEC00000078696665 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC4EB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC4ED0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7370616E5378616DLL && a2 == 0xEF656D6954746F68 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC4EF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xED000073656D6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC4F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC4F30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D1B2AA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B2AAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B2AB30()
{
  result = qword_1EE07A228;
  if (!qword_1EE07A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A228);
  }

  return result;
}

uint64_t sub_1D1B2ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(319);
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1B2AC80()
{
  if (!qword_1EE079E50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E7B30];
    v4[1] = MEMORY[0x1E69E7B58];
    v4[2] = MEMORY[0x1E69E7B38];
    v4[3] = MEMORY[0x1E69E7B40];
    v2 = _s14ElementMetricsVMa(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE079E50);
    }
  }
}

unint64_t sub_1D1B2AD48()
{
  result = qword_1EC64ADC0;
  if (!qword_1EC64ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADC0);
  }

  return result;
}

unint64_t sub_1D1B2AD9C()
{
  result = qword_1EE07A220;
  if (!qword_1EE07A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A220);
  }

  return result;
}

unint64_t sub_1D1B2ADF0()
{
  result = qword_1EE07A260[0];
  if (!qword_1EE07A260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07A260);
  }

  return result;
}

unint64_t sub_1D1B2AE44()
{
  result = qword_1EE07A010;
  if (!qword_1EE07A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2B46C(&qword_1EE079E40, sub_1D1B2AF00, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A010);
  }

  return result;
}

unint64_t sub_1D1B2AF00()
{
  result = qword_1EE07A230;
  if (!qword_1EE07A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A230);
  }

  return result;
}

uint64_t sub_1D1B2AF54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADF8, &qword_1D1E98900);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2B0FC();
  sub_1D1E692FC();
  v8[15] = 0;
  v6 = sub_1D1E68D5C();
  v8[14] = 1;
  sub_1D1E68D5C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t sub_1D1B2B0FC()
{
  result = qword_1EE07A248;
  if (!qword_1EE07A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A248);
  }

  return result;
}

uint64_t sub_1D1B2B150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE08, &qword_1D1E98910);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2ADF0();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE0, &qword_1D1E988E8);
  v16 = 0;
  sub_1D17D8EA8(&qword_1EC64AE10, &qword_1EC64ADE0, &qword_1D1E988E8, &unk_1D1E98D00);
  sub_1D1E68D7C();
  v9 = v17;
  v14 = v19;
  v15 = v18;
  v10 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE8, &qword_1D1E988F0);
  v16 = 1;
  sub_1D1B2B3B0();
  sub_1D1E68D7C();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  v13 = v15;
  *(a2 + 24) = v14;
  *(a2 + 8) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

unint64_t sub_1D1B2B3B0()
{
  result = qword_1EC64AE18;
  if (!qword_1EC64AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2B46C(&qword_1EC64AE20, sub_1D1B2B4E4, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE18);
  }

  return result;
}

uint64_t sub_1D1B2B46C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADF0, &qword_1D1E988F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B2B4E4()
{
  result = qword_1EC64AE28;
  if (!qword_1EC64AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE28);
  }

  return result;
}

uint64_t sub_1D1B2B538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B2B5D0()
{
  result = qword_1EC64AE48;
  if (!qword_1EC64AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE48);
  }

  return result;
}

unint64_t sub_1D1B2B628()
{
  result = qword_1EC64AE50;
  if (!qword_1EC64AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE50);
  }

  return result;
}

unint64_t sub_1D1B2B680()
{
  result = qword_1EC64AE58;
  if (!qword_1EC64AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE58);
  }

  return result;
}

unint64_t sub_1D1B2B6D8()
{
  result = qword_1EE07A238;
  if (!qword_1EE07A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A238);
  }

  return result;
}

unint64_t sub_1D1B2B730()
{
  result = qword_1EE07A240;
  if (!qword_1EE07A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A240);
  }

  return result;
}

unint64_t sub_1D1B2B788()
{
  result = qword_1EE07A250;
  if (!qword_1EE07A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A250);
  }

  return result;
}

unint64_t sub_1D1B2B7E0()
{
  result = qword_1EE07A258;
  if (!qword_1EE07A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A258);
  }

  return result;
}

unint64_t sub_1D1B2B838()
{
  result = qword_1EE07A210;
  if (!qword_1EE07A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A210);
  }

  return result;
}

unint64_t sub_1D1B2B890()
{
  result = qword_1EE07A218;
  if (!qword_1EE07A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A218);
  }

  return result;
}

uint64_t Duration.millisecondsString.getter(uint64_t a1, uint64_t a2)
{
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D1B2B9EC()
{
  result = type metadata accessor for StateSnapshot(0);
  v2 = *(*(v0 + *(result + 60)) + 16);
  v3 = *(*(v0 + *(result + 36)) + 16);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(*(v0 + *(result + 48)) + 16);
  v4 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(*(v0 + *(result + 64)) + 16);
  v4 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v0 + *(result + 52)) + 16);
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_1D1B2BACC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v5 = sub_1D1E6939C();
  if (v4)
  {
    v7 = a1 + 5;
    v8 = v4;
    do
    {
      v5 = sub_1D1E6936C();
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  v25 = v6;
  v9 = v5;
  v10 = sub_1D182F170(a1);
  if (v12)
  {
    v10 = sub_1D1E6939C();
  }

  v13 = v10;
  v14 = v11;
  v15 = sub_1D1745BC4(a1);
  if (v17)
  {
    v15 = sub_1D1E6939C();
  }

  v18 = v15;
  v19 = v16;
  v20 = sub_1D1B2CF28(a1);
  v22 = v21;
  sub_1D1B2CFAC(a1);
  *a2 = v4;
  a2[1] = v9;
  a2[2] = v25;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v18;
  a2[6] = v19;
  a2[7] = v20;
  a2[8] = v22;
  a2[9] = v23;
  a2[10] = v24;
}

uint64_t sub_1D1B2BBAC(uint64_t a1)
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x3A6D75732CLL, 0xE500000000000000);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A6E696D2CLL, 0xE500000000000000);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A78616D2CLL, 0xE500000000000000);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A6776612CLL, 0xE500000000000000);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A7665647474732CLL, 0xE800000000000000);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

void sub_1D1B2BD3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0.0;
    goto LABEL_10;
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_8:
    v9 = v4 - v5;
    v10 = (a1 + 8 * v5 + 32);
    do
    {
      v11 = *v10++;
      v6 = v6 + v11;
      --v9;
    }

    while (v9);
    goto LABEL_10;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = (a1 + 48);
  v6 = 0.0;
  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v6 = v6 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
    v7 += 4;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v12 = COERCE_DOUBLE(sub_1D182F12C(a1));
  v14 = v13;
  v15 = sub_1D1745ACC(a1);
  if (v16)
  {
    v17 = 0;
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_15:
    v20 = 0.0;
    goto LABEL_22;
  }

  v17 = v15;
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v4 > 3)
  {
    v18 = v4 & 0x7FFFFFFFFFFFFFFCLL;
    v21 = (a1 + 48);
    v19 = 0.0;
    v22 = v4 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v19 = v19 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v4 == v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0.0;
  }

  v23 = v4 - v18;
  v24 = (a1 + 8 * v18 + 32);
  do
  {
    v25 = *v24++;
    v19 = v19 + v25;
    --v23;
  }

  while (v23);
LABEL_21:
  v20 = v19 / v4;
LABEL_22:
  if (v14)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v12;
  }

  v27 = sub_1D1B2D198(a1);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v26;
  *(a2 + 24) = v17;
  *(a2 + 32) = v20;
  *(a2 + 40) = v27;
}

uint64_t sub_1D1B2BED4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v10[10] = v6;
  v10[11] = v7;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  _s14ElementMetricsVMa(0, v10);
  if (sub_1D1E6775C() & 1) != 0 && (sub_1D1E6775C() & 1) != 0 && (sub_1D1E6775C() & 1) != 0 && (sub_1D1E6775C())
  {
    v8 = sub_1D1E6775C();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D1B2BFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676172657661 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766564647473 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}