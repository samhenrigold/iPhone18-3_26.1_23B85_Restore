uint64_t sub_1BCF120DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BCF2170C();
  __swift_project_value_buffer(v12, qword_1EDDD2780);
  (*(v9 + 16))(v11, v21, a4);
  v13 = sub_1BCF216EC();
  v14 = sub_1BCF21CCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = a3;
    v17 = v16;
    v22[0] = v16;
    *v15 = 136315138;
    sub_1BCF21B0C();
    (*(v9 + 8))(v11, a4);
    v18 = sub_1BCEF84F4(v22[1], v22[2], v22);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v13, v14, "Received darwin message: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB32D20](v17, -1, -1);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, a4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BCF12410(v21);
  }
}

uint64_t sub_1BCF123BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1BCF12410(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1BCF21C5C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v5;
  *(v14 + 40) = *(v4 + 88);
  *(v14 + 56) = *(v3 + 104);
  *(v14 + 64) = v1;
  (*(v6 + 32))(v14 + v13, v8, v5);

  sub_1BCF0E794(0, 0, v11, &unk_1BCF23468, v14);
}

uint64_t sub_1BCF12648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *a4;
  v5[10] = *a4;
  v7 = *(v6 + 80);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF12740, 0, 0);
}

uint64_t sub_1BCF12740()
{
  v0[14] = *(v0[10] + 104);
  sub_1BCF21B0C();
  v1 = v0[2];
  v2 = v0[3];
  v0[15] = v2;
  v0[4] = v1;
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1BCF1280C;

  return sub_1BCF14BE8((v0 + 4), 0, 0xF000000000000000);
}

uint64_t sub_1BCF1280C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF12970, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BCF12970()
{
  v27 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1BCF216EC();
  v9 = sub_1BCF21CBC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  if (v10)
  {
    v12 = v0[13];
    v14 = v0[11];
    v13 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 136315394;
    sub_1BCF21B0C();
    (*(v13 + 8))(v12, v14);
    v18 = sub_1BCEF84F4(v0[6], v0[7], &v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_1BCEF6000, v8, v9, "Failed to execute handler for darwin notification: %s: %@", v15, 0x16u);
    sub_1BCF05050(v16);
    MEMORY[0x1BFB32D20](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB32D20](v17, -1, -1);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  else
  {
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1BCF12BF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - v6;
  swift_beginAccess();

  sub_1BCF21A3C();

  if ((v23 & 0x100000000) == 0)
  {
    v21 = v3;
    v9 = v23;
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1BCF2170C();
    __swift_project_value_buffer(v10, qword_1EDDD2780);
    (*(v5 + 16))(v7, a1, v4);
    v11 = sub_1BCF216EC();
    v12 = sub_1BCF21CCC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      HIDWORD(v19) = v9;
      v14 = v13;
      v15 = swift_slowAlloc();
      v20 = a1;
      v16 = v15;
      v22 = v15;
      *v14 = 136315138;
      sub_1BCF21B0C();
      (*(v5 + 8))(v7, v4);
      v17 = sub_1BCEF84F4(v23, v24, &v22);

      *(v14 + 4) = v17;
      _os_log_impl(&dword_1BCEF6000, v11, v12, "Unregistering darwin notification %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB32D20](v16, -1, -1);
      v18 = v14;
      v9 = HIDWORD(v19);
      MEMORY[0x1BFB32D20](v18, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    notify_cancel(v9);
    swift_beginAccess();
    sub_1BCF21A1C();
    sub_1BCF219FC();
    return swift_endAccess();
  }

  return result;
}

uint64_t DarwinDispatchListener.deinit()
{

  return v0;
}

uint64_t DarwinDispatchListener.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BCF12F90()
{
  result = qword_1EDDD1CC8[0];
  if (!qword_1EDDD1CC8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDD1CC8);
  }

  return result;
}

uint64_t sub_1BCF130D4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF099D4;

  return sub_1BCF12648(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1BCF13238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BCF0E6FC(a3, v22 - v9);
  v11 = sub_1BCF21C5C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BCEFAC9C(v10);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BCF21BDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BCF21AAC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BCEFAC9C(a3);

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

  sub_1BCEFAC9C(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BCF134B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BCF0E6FC(a3, v22 - v9);
  v11 = sub_1BCF21C5C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BCEFAC9C(v10);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BCF21BDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BCF21AAC() + 32;

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

      sub_1BCEFAC9C(a3);

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

  sub_1BCEFAC9C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t DispatchClientTable.__allocating_init()()
{
  v0 = swift_allocObject();
  DispatchClientTable.init()();
  return v0;
}

uint64_t sub_1BCF13758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v16 = type metadata accessor for DispatchClientTable.Priority(0, &v19);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  result = type metadata accessor for DispatchClientTable.Registration(0, &v19);
  v18 = (a8 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t *DispatchClientTable.init()()
{
  v1 = *v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v10 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v10;
  v12 = v3;
  v13 = v4;
  type metadata accessor for DispatchClientTable.Registration(255, &v11);
  v6 = sub_1BCF21BCC();
  swift_getTupleTypeMetadata2();
  v7 = sub_1BCF21B5C();
  v8 = sub_1BCF0408C(v7, AssociatedTypeWitness, v6, v4);

  v0[14] = v8;
  return v0;
}

uint64_t sub_1BCF139A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v31 = a2;
  v32 = a3;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 96);
  v8 = *(*v4 + 104);
  v36 = *(*v4 + 80);
  v5 = v36;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v29 = type metadata accessor for DispatchClientTable.Priority(0, &v36);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - v9;
  v36 = v5;
  v37 = v6;
  v33 = v6;
  v38 = v7;
  v39 = v8;
  v10 = type metadata accessor for DispatchClientTable.Registration(0, &v36);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v25 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25 - v14;
  sub_1BCF16A54();
  sub_1BCF21B0C();
  v16 = sub_1BCF1381C(&v36);
  sub_1BCF21BCC();
  v27 = v8;
  sub_1BCF21A1C();
  v17 = sub_1BCF21A2C();
  if (*v18)
  {
    v25 = v17;
    v19 = *(v26 + 2);
    v26 = v16;
    v20 = v30;
    v19(v30, v31, v29);
    v21 = swift_allocObject();
    v22 = v33;
    v23 = v34;
    *(v21 + 16) = v32;
    *(v21 + 24) = v23;
    sub_1BCF13758(v20, &unk_1BCF23478, v21, v5, v22, v7, v27, v28);

    sub_1BCF21B9C();
    v25(v35, 0);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    return (v26)(&v36, 0);
  }

  else
  {
    v17(v35, 0);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    return (v16)(&v36, 0);
  }
}

uint64_t sub_1BCF13D54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BCF099D4;

  return v6();
}

uint64_t sub_1BCF13E3C(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v54 = a6;
  v52 = a4;
  v55 = a3;
  v49 = a2;
  v8 = *(*v6 + 80);
  v51 = *(v8 - 8);
  v48 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v41 - v9;
  v11 = *(v10 + 104);
  v58 = *(v12 + 88);
  *&v13 = vdupq_laneq_s64(v58, 1).u64[0];
  v14.i64[0] = v8;
  *(&v13 + 1) = v11;
  *v60 = vzip1q_s64(v14, v58);
  *&v60[16] = v13;
  v44 = type metadata accessor for DispatchClientTable.Priority(0, v60);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v61 = &v41 - v15;
  *v60 = v8;
  *&v60[8] = v58;
  *&v60[24] = v11;
  v16 = type metadata accessor for DispatchClientTable.Registration(0, v60);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v41 - v17;
  v18 = v58.i64[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v41 - v20;
  sub_1BCF16A54();
  v46 = a1;
  v45 = v18;
  sub_1BCF21B0C();
  v22 = sub_1BCF1381C(v60);
  v23 = sub_1BCF21BCC();
  v57 = AssociatedTypeWitness;
  v24 = v11;
  sub_1BCF21A1C();
  v25 = sub_1BCF21A2C();
  if (*v26)
  {
    v42 = v25;
    v27 = v43[2];
    v43 = v26;
    v27(v61, v49, v44);
    v28 = v50;
    v29 = v51;
    (*(v51 + 16))(v50, v46, v8);
    v30 = *(v29 + 80);
    v46 = v23;
    v31 = (v30 + 64) & ~v30;
    v49 = v22;
    v32 = (v48 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v53;
    *(v33 + 2) = v8;
    *(v33 + 3) = v34;
    v53 = v58.i64[0];
    *(v33 + 4) = v58.i64[0];
    v35 = v45;
    v36 = v54;
    *(v33 + 5) = v45;
    *(v33 + 6) = v36;
    *(v33 + 7) = v24;
    (*(v29 + 32))(&v33[v31], v28, v8);
    v37 = &v33[v32];
    v39 = v52;
    v38 = v53;
    *v37 = v55;
    v37[1] = v39;
    sub_1BCF13758(v61, &unk_1BCF23488, v33, v8, v38, v35, v24, v47);

    sub_1BCF21B9C();
    v42(v59, 0);
    (*(v56 + 8))(v21, v57);
    return (v49)(v60, 0);
  }

  else
  {
    v25(v59, 0);
    (*(v56 + 8))(v21, v57);
    return (v22)(v60, 0);
  }
}

uint64_t sub_1BCF14380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[9] = v11;
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[10] = *(a6 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = *(a7 - 8);
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF144B4, 0, 0);
}

uint64_t sub_1BCF144B4()
{
  v33 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[4];
    v6 = sub_1BCF2170C();
    __swift_project_value_buffer(v6, qword_1EDDD2780);
    v7 = *(v3 + 16);
    v7(v2, v5, v4);
    v8 = sub_1BCF216EC();
    v9 = sub_1BCF21CBC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    if (v10)
    {
      v12 = v0[12];
      v13 = v0[10];
      v14 = v0[7];
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v15 = 136315138;
      v7(v12, v11, v14);
      v16 = sub_1BCF21A9C();
      v18 = v17;
      (*(v13 + 8))(v11, v14);
      v19 = sub_1BCEF84F4(v16, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BCEF6000, v8, v9, "Unexpected missing data for code: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFB32D20](v30, -1, -1);
      MEMORY[0x1BFB32D20](v15, -1, -1);
    }

    else
    {
      v24 = v0[10];
      v25 = v0[7];

      (*(v24 + 8))(v11, v25);
    }

    v29 = v0[1];

    return v29();
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[2];
    v23 = *(v20 + 16);
    sub_1BCEFC5E0(v22, v0[3]);
    sub_1BCF050B8(v22, v1);
    v23(v22, v1, v21, v20);
    v31 = (v0[5] + *v0[5]);
    v26 = swift_task_alloc();
    v0[16] = v26;
    *v26 = v0;
    v26[1] = sub_1BCF14A38;
    v27 = v0[15];

    return v31(v27);
  }
}

uint64_t sub_1BCF14A38()
{

  return MEMORY[0x1EEE6DFA0](sub_1BCF14B34, 0, 0);
}

uint64_t sub_1BCF14B34()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  sub_1BCF05424(v0[2], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF14BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v6 = sub_1BCF21C5C();
  *(v4 + 200) = v6;
  *(v4 + 208) = *(v6 - 8);
  *(v4 + 216) = swift_task_alloc();
  v7 = v5[10];
  *(v4 + 224) = v7;
  v8 = v5[11];
  *(v4 + 232) = v8;
  v9 = v5[12];
  *(v4 + 240) = v9;
  v10 = v5[13];
  *(v4 + 248) = v10;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  *(v4 + 32) = v12;
  *(v4 + 16) = v11;
  v13 = type metadata accessor for DispatchClientTable.Priority(0, v4 + 16);
  *(v4 + 256) = v13;
  *(v4 + 264) = *(v13 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 64) = v18;
  *(v4 + 48) = v19;
  v14 = type metadata accessor for DispatchClientTable.Registration(0, v4 + 48);
  *(v4 + 280) = v14;
  v15 = *(v14 - 8);
  *(v4 + 288) = v15;
  *(v4 + 296) = *(v15 + 64);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 328) = AssociatedTypeWitness;
  *(v4 + 336) = *(AssociatedTypeWitness - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF14EEC, v3, 0);
}

uint64_t sub_1BCF14EEC()
{
  v85 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 152);
  v5 = sub_1BCF2170C();
  __swift_project_value_buffer(v5, qword_1EDDD2780);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1BCF216EC();
  v8 = sub_1BCF21CCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 352);
  if (v9)
  {
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 328);
    v14 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v84 = v80;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_1BCF21A9C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1BCEF84F4(v15, v17, &v84);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v7, v8, "Dispatching: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x1BFB32D20](v80, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  else
  {
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);

    (*(v20 + 8))(v10, v19);
  }

  swift_beginAccess();
  sub_1BCF21BCC();

  sub_1BCF21A3C();

  v21 = *(v0 + 136);
  *(v0 + 360) = v21;
  if (v21)
  {
    if (sub_1BCF21B8C())
    {
      v22 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v22)
      {
        v23 = *(v0 + 288);
        v24 = *(v23 + 16);
        v24(*(v0 + 320), *(v0 + 360) + ((*(v23 + 80) + 32) & ~*(v23 + 80)), *(v0 + 280));
      }

      else
      {
        v68 = *(v0 + 296);
        v63 = sub_1BCF21E5C();
        if (v68 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DA10](v63, v66, v65, v67, v64);
        }

        v69 = *(v0 + 320);
        v70 = *(v0 + 280);
        v71 = *(v0 + 288);
        *(v0 + 144) = v63;
        v24 = *(v71 + 16);
        v24(v69, v0 + 144, v70);
        swift_unknownObjectRelease();
      }

      *(v0 + 368) = 1;
      v25 = *(v0 + 312);
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v28 = *(v0 + 256);
      v29 = *(v0 + 200);
      v30 = *(v0 + 208);
      v31 = *(*(v0 + 288) + 32);
      v31(v25, *(v0 + 320), *(v0 + 280));
      (*(v27 + 16))(v26, v25, v28);
      v32 = *(v30 + 48);
      v33 = v32(v26, 1, v29);
      v34 = *(v0 + 312);
      if (v33 == 1)
      {
        v35 = (v34 + *(*(v0 + 280) + 52));
        v82 = (*v35 + **v35);
        v36 = swift_task_alloc();
        *(v0 + 376) = v36;
        *v36 = v0;
        v36[1] = sub_1BCF15764;
        v38 = *(v0 + 160);
        v37 = *(v0 + 168);

        return v82(v38, v37);
      }

      v73 = *(v0 + 304);
      v74 = *(v0 + 296);
      v79 = v31;
      v81 = v32;
      v45 = *(v0 + 280);
      v44 = *(v0 + 288);
      v72 = v24;
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v49 = *(v0 + 192);
      v48 = *(v0 + 200);
      v83 = *(v0 + 184);
      v77 = *(v0 + 160);
      v78 = *(v0 + 168);
      v75 = *(v0 + 240);
      v76 = *(v0 + 224);
      (*(v46 + 32))(v47, *(v0 + 272), v48);
      (*(v46 + 16))(v49, v47, v48);
      (*(v46 + 56))(v49, 0, 1, v48);
      v72(v73, v34, v45);
      v50 = (*(v44 + 80) + 64) & ~*(v44 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = v76;
      *(v51 + 48) = v75;
      v79(v51 + v50, v73, v45);
      v52 = (v51 + ((v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v52 = v77;
      v52[1] = v78;
      sub_1BCF0E6FC(v49, v83);
      LODWORD(v48) = v81(v83, 1, v48);
      sub_1BCEFC5E0(v77, v78);

      if (v48 == 1)
      {
        sub_1BCEFAC9C(*(v0 + 184));
      }

      else
      {
        v53 = *(v0 + 200);
        v54 = *(v0 + 208);
        v55 = *(v0 + 184);
        sub_1BCF21C4C();
        (*(v54 + 8))(v55, v53);
      }

      v56 = *(v51 + 16);
      swift_unknownObjectRetain();

      if (v56)
      {
        swift_getObjectType();
        v57 = sub_1BCF21BDC();
        v59 = v58;
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      sub_1BCEFAC9C(*(v0 + 192));
      if (v59 | v57)
      {
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 96) = v57;
        *(v0 + 104) = v59;
      }

      v60 = MEMORY[0x1E69E7CA8];
      v61 = swift_task_create();
      *(v0 + 392) = v61;
      v62 = swift_task_alloc();
      *(v0 + 400) = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
      *v62 = v0;
      v62[1] = sub_1BCF15E9C;
      v64 = MEMORY[0x1E69E7288];
      v65 = v60 + 8;
      v66 = v61;
      v67 = v63;

      return MEMORY[0x1EEE6DA10](v63, v66, v65, v67, v64);
    }
  }

  else
  {
    v40 = sub_1BCF216EC();
    v41 = sub_1BCF21CCC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1BCEF6000, v40, v41, "No handlers registered", v42, 2u);
      MEMORY[0x1BFB32D20](v42, -1, -1);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1BCF15764()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_1BCF16604;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_1BCF1588C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1BCF1588C()
{
  (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));
  v1 = *(v0 + 368);
  if (v1 == sub_1BCF21B8C())
  {

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 368);
  v5 = sub_1BCF21B6C();
  sub_1BCF21B3C();
  if (v5)
  {
    v6 = *(v0 + 288);
    v7 = *(v6 + 16);
    v8 = v7(*(v0 + 320), *(v0 + 360) + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, *(v0 + 280));
  }

  else
  {
    v46 = *(v0 + 296);
    v8 = sub_1BCF21E5C();
    if (v46 != 8)
    {
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v8, v9, v10, v11, v12);
    }

    v47 = *(v0 + 320);
    v48 = *(v0 + 280);
    v49 = *(v0 + 288);
    *(v0 + 144) = v8;
    v7 = *(v49 + 16);
    v7(v47, v0 + 144, v48);
    v8 = swift_unknownObjectRelease();
  }

  *(v0 + 368) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v0 + 312);
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);
  v16 = *(v0 + 256);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = *(*(v0 + 288) + 32);
  v19(v13, *(v0 + 320), *(v0 + 280));
  (*(v15 + 16))(v14, v13, v16);
  v20 = *(v18 + 48);
  v21 = v20(v14, 1, v17);
  v22 = *(v0 + 312);
  if (v21 != 1)
  {
    v51 = *(v0 + 304);
    v52 = *(v0 + 296);
    v57 = v19;
    v58 = v20;
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v50 = v7;
    v29 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v60 = *(v0 + 184);
    v55 = *(v0 + 160);
    v56 = *(v0 + 168);
    v53 = *(v0 + 240);
    v54 = *(v0 + 224);
    (*(v29 + 32))(v30, *(v0 + 272), v31);
    (*(v29 + 16))(v32, v30, v31);
    (*(v29 + 56))(v32, 0, 1, v31);
    v50(v51, v22, v28);
    v33 = (*(v27 + 80) + 64) & ~*(v27 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v54;
    *(v34 + 48) = v53;
    v57(v34 + v33, v51, v28);
    v35 = (v34 + ((v52 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v55;
    v35[1] = v56;
    sub_1BCF0E6FC(v32, v60);
    LODWORD(v31) = v58(v60, 1, v31);
    sub_1BCEFC5E0(v55, v56);

    if (v31 == 1)
    {
      sub_1BCEFAC9C(*(v0 + 184));
    }

    else
    {
      v36 = *(v0 + 200);
      v37 = *(v0 + 208);
      v38 = *(v0 + 184);
      sub_1BCF21C4C();
      (*(v37 + 8))(v38, v36);
    }

    v39 = *(v34 + 16);
    swift_unknownObjectRetain();

    if (v39)
    {
      swift_getObjectType();
      v40 = sub_1BCF21BDC();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    sub_1BCEFAC9C(*(v0 + 192));
    if (v42 | v40)
    {
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = v40;
      *(v0 + 104) = v42;
    }

    v43 = MEMORY[0x1E69E7CA8];
    v44 = swift_task_create();
    *(v0 + 392) = v44;
    v45 = swift_task_alloc();
    *(v0 + 400) = v45;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    *v45 = v0;
    v45[1] = sub_1BCF15E9C;
    v12 = MEMORY[0x1E69E7288];
    v10 = v43 + 8;
    v9 = v44;
    v11 = v8;

    return MEMORY[0x1EEE6DA10](v8, v9, v10, v11, v12);
  }

  v23 = (v22 + *(*(v0 + 280) + 52));
  v59 = (*v23 + **v23);
  v24 = swift_task_alloc();
  *(v0 + 376) = v24;
  *v24 = v0;
  v24[1] = sub_1BCF15764;
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);

  return v59(v26, v25);
}

uint64_t sub_1BCF15E9C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_1BCF166F4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_1BCF15FC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1BCF15FC4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 368);
  if (v7 == sub_1BCF21B8C())
  {

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 368);
  v11 = sub_1BCF21B6C();
  sub_1BCF21B3C();
  if (v11)
  {
    v12 = *(v0 + 288);
    v13 = *(v12 + 16);
    v14 = v13(*(v0 + 320), *(v0 + 360) + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, *(v0 + 280));
  }

  else
  {
    v52 = *(v0 + 296);
    v14 = sub_1BCF21E5C();
    if (v52 != 8)
    {
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v14, v15, v16, v17, v18);
    }

    v53 = *(v0 + 320);
    v54 = *(v0 + 280);
    v55 = *(v0 + 288);
    *(v0 + 144) = v14;
    v13 = *(v55 + 16);
    v13(v53, v0 + 144, v54);
    v14 = swift_unknownObjectRelease();
  }

  *(v0 + 368) = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = *(v0 + 312);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 256);
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(*(v0 + 288) + 32);
  v25(v19, *(v0 + 320), *(v0 + 280));
  (*(v21 + 16))(v20, v19, v22);
  v26 = *(v24 + 48);
  v27 = v26(v20, 1, v23);
  v28 = *(v0 + 312);
  if (v27 != 1)
  {
    v57 = *(v0 + 304);
    v58 = *(v0 + 296);
    v63 = v25;
    v64 = v26;
    v34 = *(v0 + 280);
    v33 = *(v0 + 288);
    v56 = v13;
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    v66 = *(v0 + 184);
    v61 = *(v0 + 160);
    v62 = *(v0 + 168);
    v59 = *(v0 + 240);
    v60 = *(v0 + 224);
    (*(v35 + 32))(v36, *(v0 + 272), v37);
    (*(v35 + 16))(v38, v36, v37);
    (*(v35 + 56))(v38, 0, 1, v37);
    v56(v57, v28, v34);
    v39 = (*(v33 + 80) + 64) & ~*(v33 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v60;
    *(v40 + 48) = v59;
    v63(v40 + v39, v57, v34);
    v41 = (v40 + ((v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v41 = v61;
    v41[1] = v62;
    sub_1BCF0E6FC(v38, v66);
    LODWORD(v37) = v64(v66, 1, v37);
    sub_1BCEFC5E0(v61, v62);

    if (v37 == 1)
    {
      sub_1BCEFAC9C(*(v0 + 184));
    }

    else
    {
      v42 = *(v0 + 200);
      v43 = *(v0 + 208);
      v44 = *(v0 + 184);
      sub_1BCF21C4C();
      (*(v43 + 8))(v44, v42);
    }

    v45 = *(v40 + 16);
    swift_unknownObjectRetain();

    if (v45)
    {
      swift_getObjectType();
      v46 = sub_1BCF21BDC();
      v48 = v47;
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    sub_1BCEFAC9C(*(v0 + 192));
    if (v48 | v46)
    {
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = v46;
      *(v0 + 104) = v48;
    }

    v49 = MEMORY[0x1E69E7CA8];
    v50 = swift_task_create();
    *(v0 + 392) = v50;
    v51 = swift_task_alloc();
    *(v0 + 400) = v51;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    *v51 = v0;
    v51[1] = sub_1BCF15E9C;
    v18 = MEMORY[0x1E69E7288];
    v16 = v49 + 8;
    v15 = v50;
    v17 = v14;

    return MEMORY[0x1EEE6DA10](v14, v15, v16, v17, v18);
  }

  v29 = (v28 + *(*(v0 + 280) + 52));
  v65 = (*v29 + **v29);
  v30 = swift_task_alloc();
  *(v0 + 376) = v30;
  *v30 = v0;
  v30[1] = sub_1BCF15764;
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  return v65(v32, v31);
}

uint64_t sub_1BCF16604()
{
  (*(v0[36] + 8))(v0[39], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BCF166F4()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BCF16814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v10;
  v8[12] = v11;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF16848, 0, 0);
}

uint64_t sub_1BCF16848()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  v2 = (v1 + *(type metadata accessor for DispatchClientTable.Registration(0, v0 + 16) + 52));
  v7 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1BCF16960;
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  return v7(v5, v4);
}

uint64_t sub_1BCF16960()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BCF16A54()
{
  v1 = *v0;
  v2 = (*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15[1] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1BCF21B0C();
  swift_beginAccess();
  v11 = *(v1 + 104);
  *&v12 = v4;
  *(&v12 + 1) = *v2;
  v16 = v12;

  *&v13 = v3;
  *(&v13 + 1) = v11;
  v17[1] = v13;
  v17[0] = v16;
  type metadata accessor for DispatchClientTable.Registration(255, v17);
  *&v16 = sub_1BCF21BCC();
  sub_1BCF21A3C();

  (*(v6 + 8))(v10, AssociatedTypeWitness);
  if (v18)
  {
  }

  sub_1BCF21B0C();
  v18 = sub_1BCF21B5C();
  swift_beginAccess();
  sub_1BCF21A1C();
  sub_1BCF21A4C();
  return swift_endAccess();
}

uint64_t DispatchClientTable.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DispatchClientTable.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t DispatchClientTable<>.addReverseForwardingRoutes(to:priority:messageCodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v49 = a1;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  *&v65 = *(*v3 + 80);
  v5 = v65;
  *(&v65 + 1) = v6;
  v8 = MEMORY[0x1E69E7678];
  v66 = v7;
  v67 = MEMORY[0x1E69E7678];
  v47 = type metadata accessor for DispatchClientTable.Priority(0, &v65);
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v59 = &v41 - v10;
  *&v65 = v5;
  *(&v65 + 1) = v6;
  v48 = v6;
  v66 = v7;
  v67 = v8;
  v54 = type metadata accessor for DispatchClientTable.Registration(0, &v65);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v46 = &v41 - v12;
  v64 = *(v5 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v42 = v18;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  result = sub_1BCF21B8C();
  if (result)
  {
    v22 = 0;
    v61 = (v64 + 32);
    v62 = (v64 + 16);
    v44 = (v9 + 16);
    v43 = v42 + 7;
    v51 = (v64 + 8);
    v53 = a3;
    v52 = v20;
    while (1)
    {
      v34 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v34)
      {
        v35 = *(v64 + 16);
        result = (v35)(v20, a3 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v22, v5);
      }

      else
      {
        result = sub_1BCF21E5C();
        if (v42 != 8)
        {
          goto LABEL_14;
        }

        *&v65 = result;
        v35 = *v62;
        (*v62)(v20, &v65, v5);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v22, 1))
      {
        break;
      }

      v63 = v22 + 1;
      v60 = *v61;
      v60(v17, v20, v5);
      sub_1BCF16A54();
      sub_1BCF21B0C();
      v36 = v71;
      v37 = sub_1BCF1381C(v69);
      v70 = v36;
      v38 = sub_1BCF21BCC();
      sub_1BCF21A1C();
      v39 = sub_1BCF21A2C();
      if (*v40)
      {
        v58 = v39;
        v23 = *v44;
        v57 = v40;
        v23(v59, v50, v47);
        v24 = v17;
        v25 = v45;
        v35(v45, v24, v5);
        sub_1BCF049CC(v49, &v65);
        v26 = *(v64 + 80);
        v56 = v37;
        v27 = (v26 + 40) & ~v26;
        v55 = v38;
        v28 = (v43 + v27) & 0xFFFFFFFFFFFFFFF8;
        v29 = swift_allocObject();
        v30 = v7;
        v31 = v48;
        *(v29 + 2) = v5;
        *(v29 + 3) = v31;
        *(v29 + 4) = v30;
        v32 = v25;
        v17 = v24;
        v60(&v29[v27], v32, v5);
        sub_1BCF0543C(&v65, &v29[v28]);
        v33 = v31;
        v7 = v30;
        sub_1BCF13758(v59, &unk_1BCF23498, v29, v5, v33, v30, MEMORY[0x1E69E7678], v46);
        sub_1BCF21B9C();
        v58(v68, 0);
        (v56)(v69, 0);
        (*(v64 + 8))(v24, v5);
      }

      else
      {
        v39(v68, 0);
        (v37)(v69, 0);
        (*v51)(v17, v5);
      }

      a3 = v53;
      result = sub_1BCF21B8C();
      ++v22;
      v20 = v52;
      if (v63 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF173D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *(a5 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF17498, 0, 0);
}

uint64_t sub_1BCF17498()
{
  v32 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = sub_1BCF2170C();
  __swift_project_value_buffer(v5, qword_1EDDD2780);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1BCF216EC();
  v8 = sub_1BCF21CCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_1BCF21A9C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1BCEF84F4(v15, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v7, v8, "Reverse forwarding message: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFB32D20](v29, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v10, v20);
  }

  v21 = *(v0 + 40);
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_1BCF21B0C();
  v24 = *(v0 + 96);
  v30 = (*(v23 + 8) + **(v23 + 8));
  v25 = swift_task_alloc();
  *(v0 + 88) = v25;
  *v25 = v0;
  v25[1] = sub_1BCF177A8;
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);

  return v30(v24, v26, v27, v22, v23);
}

uint64_t sub_1BCF177A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BCF17908(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF0A158;

  return sub_1BCF13D54(a1, a2, v6);
}

uint64_t sub_1BCF179B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v14 = *(v2 + 24);
  v7 = (*(*(v6 - 8) + 80) + 64) & ~*(*(v6 - 8) + 80);
  v8 = (v2 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BCF099D4;

  return sub_1BCF14380(a1, a2, v2 + v7, v9, v10, v6, v14);
}

uint64_t sub_1BCF17B14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = (*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BCF0A158;

  return sub_1BCF173D0(a1, a2, v2 + v9, v2 + v10, v6, v7, v8);
}

unint64_t sub_1BCF17D5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v1;
  result = type metadata accessor for DispatchClientTable.Priority(319, v5);
  if (v3 <= 0x3F)
  {
    v6 = 0;
    *&v5[0] = result;
    result = sub_1BCF05000();
    if (v4 <= 0x3F)
    {
      v7 = 0;
      *(&v5[0] + 1) = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF17E14(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v3[2] = v4;
  v3[3] = v16;
  v3[4] = v6;
  v3[5] = v5;
  v7 = *(type metadata accessor for DispatchClientTable.Registration(0, (v3 + 2)) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  v3[6] = v14;
  *v14 = v3;
  v14[1] = sub_1BCF17F74;

  return sub_1BCF16814(a1, v9, v10, v1 + v8, v12, v13, v4, v16);
}

uint64_t sub_1BCF17F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BCF18068@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(type metadata accessor for NetworkDispatchClient.Connection(0, v5[10], v5[11], v5[12]) + 44);
  v7 = sub_1BCF215FC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t NetworkDispatchClient.__allocating_init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  NetworkDispatchClient.init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(a1, a2, v7, a4, a5);
  return v10;
}

uint64_t NetworkDispatchClient.init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v11 = *v5;
  swift_defaultActor_initialize();
  v12 = *(*v5 + 144);
  v13 = type metadata accessor for NetworkDispatchClient.Connection(0, v11[10], v11[11], v11[12]);
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 136) = a3;
  *(v5 + 128) = a4;
  *(v5 + 144) = a5;
  return v5;
}

uint64_t NetworkDispatchClient.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF182F4, v1, 0);
}

uint64_t sub_1BCF182F4()
{
  sub_1BCF21B0C();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BCF183AC;

  return sub_1BCF18514(v1, 0, 0xF000000000000000);
}

uint64_t sub_1BCF183AC(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v8 = *(v6 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1BCF0A36C, v8, 0);
  }

  else
  {
    sub_1BCF05424(a1, a2);
    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_1BCF18514(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1853C, v3, 0);
}

uint64_t sub_1BCF1853C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchClient sending %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1BCF18698;

  return sub_1BCF19A7C();
}

uint64_t sub_1BCF18698(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1BCF187E0, v7, 0);
  }
}

uint64_t sub_1BCF187E0()
{
  v1 = *(*(v0 + 32) + 136);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1BCF18888;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);

  return sub_1BCF1C738(v5, v1, v3, v4);
}

uint64_t sub_1BCF18888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[8] = v2;

  v7 = v6[4];
  if (v2)
  {
    v8 = sub_1BCF18A30;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v8 = sub_1BCF189C8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1BCF189C8()
{

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_1BCF18A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkDispatchClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF18AE4, v4, 0);
}

uint64_t sub_1BCF18AE4()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 72) = *(v1 + 96);
  sub_1BCF21B0C();
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1BCF18BA4;

  return sub_1BCF18514(v2, 0, 0xF000000000000000);
}

uint64_t sub_1BCF18BA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;

  v5 = v4[6];
  if (v2)
  {
    v6 = sub_1BCF18DB4;
  }

  else
  {
    v6 = sub_1BCF18CC0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BCF18CC0()
{
  if (v0[12] >> 60 == 15)
  {
    type metadata accessor for NetworkDispatchClient.Failure(0, v0[8], *(v0[7] + 88), v0[9]);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v0[5] + 16))(v0[11]);
  }

  v1 = v0[1];

  return v1();
}

uint64_t NetworkDispatchClient.send<A>(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF18E34, v4, 0);
}

uint64_t sub_1BCF18E34()
{
  v1 = (*(*(v0 + 40) + 8))(*(v0 + 32));
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = v1;
  v4 = v2;
  sub_1BCF21B0C();
  v5 = *(v0 + 96);
  sub_1BCF050B8(v3, v4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1BCF18F74;

  return sub_1BCF18514(v5, v3, v4);
}

uint64_t sub_1BCF18F74(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = sub_1BCF1912C;
  }

  else
  {
    v10 = v6[8];
    v9 = v6[9];
    v11 = v6[6];
    sub_1BCF05424(a1, a2);
    sub_1BCF0510C(v10, v9);
    v8 = sub_1BCF190C8;
    v7 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1BCF190C8()
{
  sub_1BCF0510C(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1BCF1912C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1BCF0510C(v1, v2);
  sub_1BCF0510C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t NetworkDispatchClient.send<A, B>(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = *v7;
  return MEMORY[0x1EEE6DFA0](sub_1BCF191F8, v7, 0);
}

uint64_t sub_1BCF191F8()
{
  v1 = (*(*(v0 + 56) + 8))(*(v0 + 40));
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  *(v0 + 104) = *(v5 + 80);
  *(v0 + 112) = *(v5 + 96);
  sub_1BCF21B0C();
  v6 = *(v0 + 152);
  sub_1BCF050B8(v3, v4);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1BCF19340;

  return sub_1BCF18514(v6, v3, v4);
}

uint64_t sub_1BCF19340(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v5 = v4[9];
    v6 = sub_1BCF19580;
  }

  else
  {
    v7 = v4[9];
    sub_1BCF0510C(v4[11], v4[12]);
    v6 = sub_1BCF1946C;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BCF1946C()
{
  if (v0[17] >> 60 == 15)
  {
    v2 = v0[11];
    v1 = v0[12];
    type metadata accessor for NetworkDispatchClient.Failure(0, v0[13], *(v0[10] + 88), v0[14]);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v3 = v2;
    v4 = v1;
  }

  else
  {
    (*(v0[8] + 16))(v0[16]);
    v3 = v0[11];
    v4 = v0[12];
  }

  sub_1BCF0510C(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF19580()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_1BCF0510C(v1, v2);
  sub_1BCF0510C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t NetworkDispatchClient.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF0903C;

  return sub_1BCF1AAB8(a1, a2, a3);
}

uint64_t NetworkDispatchClient.reverseForward(messageCode:messageData:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  *(v4 + 40) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BCF19770;

  return sub_1BCF18514(a1, a2, a3);
}

uint64_t sub_1BCF19770(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v8 = *(v6 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1BCF198D8, v8, 0);
  }

  else
  {
    sub_1BCF05424(a1, a2);
    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_1BCF198D8()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = v1;
  v4 = sub_1BCF216EC();
  v5 = sub_1BCF21CBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 10) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BCEF6000, v4, v5, "Error reverse forwarding message %u: %@", v9, 0x12u);
    sub_1BCF05050(v10);
    MEMORY[0x1BFB32D20](v10, -1, -1);
    MEMORY[0x1BFB32D20](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BCF19A7C()
{
  v1[8] = v0;
  v2 = *v0;
  v3 = sub_1BCF2173C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1BCF215FC();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = v2[10];
  v1[16] = v5;
  v6 = v2[11];
  v1[17] = v6;
  v7 = v2[12];
  v1[18] = v7;
  v8 = type metadata accessor for NetworkDispatchClient.Connection(255, v5, v6, v7);
  v1[19] = v8;
  v9 = sub_1BCF21D4C();
  v1[20] = v9;
  v1[21] = *(v9 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = *(v8 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF19CC4, v0, 0);
}

uint64_t sub_1BCF19CC4()
{
  v1 = v0 + 24;
  v2 = v0[24];
  v4 = v0 + 23;
  v3 = v0[23];
  v5 = v0 + 21;
  v6 = v0[21];
  v8 = v0 + 20;
  v7 = v0[20];
  v40 = v0 + 19;
  v9 = v0[8];
  v10 = *(*v9 + 144);
  v1[2] = v10;
  swift_beginAccess();
  (*(v6 + 16))(v3, v9 + v10, v7);
  if ((*(v2 + 48))(v3, 1) == 1)
  {
    v11 = v41;
LABEL_12:
    (*(*v5 + 8))(*v4, *v8);
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v29 = sub_1BCF2170C();
    v11[27] = __swift_project_value_buffer(v29, qword_1EDDD2780);
    v30 = sub_1BCF216EC();
    v31 = sub_1BCF21CCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BCEF6000, v30, v31, "NetworkDispatchClient starting device discovery", v32, 2u);
      MEMORY[0x1BFB32D20](v32, -1, -1);
    }

    v33 = v11[8];

    v35 = v33[14];
    v34 = v33[15];
    v36 = v33[16];
    type metadata accessor for NetworkDispatchBrowser();
    v37 = swift_allocObject();
    v11[28] = v37;

    swift_defaultActor_initialize();
    v37[14] = v35;
    v37[15] = v34;
    v37[16] = v36;
    v37[17] = 0;
    v38 = swift_task_alloc();
    v11[29] = v38;
    *v38 = v11;
    v38[1] = sub_1BCF1A150;
    v39 = v11[11];

    return sub_1BCF1EBF4(v39);
  }

  v4 = v41 + 25;
  v13 = v41[14];
  v12 = v41[15];
  v15 = v41[12];
  v14 = v41[13];
  (*(v41[24] + 32))(v41[25], v41[23], v41[19]);
  sub_1BCF215CC();
  sub_1BCF215EC();
  v16 = sub_1BCF215DC();
  v17 = *(v14 + 8);
  v17(v13, v15);
  v17(v12, v15);
  v11 = v41;
  if ((v16 & 1) == 0)
  {
    v5 = v1;
    v8 = v40;
    goto LABEL_12;
  }

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1BCF2170C();
  __swift_project_value_buffer(v18, qword_1EDDD2780);
  v19 = sub_1BCF216EC();
  v20 = sub_1BCF21CCC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BCEF6000, v19, v20, "NetworkDispatchClient reusing discovered device", v21, 2u);
    MEMORY[0x1BFB32D20](v21, -1, -1);
  }

  v23 = v41[24];
  v22 = v41[25];
  v24 = v41[19];

  v25 = *v22;
  v26 = *(v23 + 8);

  v26(v22, v24);

  v27 = v41[1];

  return v27(v25);
}

uint64_t sub_1BCF1A150()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1BCF1A60C;
  }

  else
  {
    v4 = sub_1BCF1A27C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF1A27C()
{
  v1 = v0[30];
  type metadata accessor for NetworkDispatchInterface(0, v0[16], v0[17], v0[18]);
  sub_1BCF0FEB4(0, 60.0);
  sub_1BCF2186C();
  sub_1BCF2183C();
  swift_getWitnessTable();
  v2 = sub_1BCF2165C();
  if (v1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[26];
    v7 = v0[24];
    v9 = v0[21];
    v8 = v0[22];
    v21 = v0[20];
    v20 = v0[19];
    v10 = v0[15];
    v11 = v0[8];

    sub_1BCF2181C();

    sub_1BCF215EC();
    v22 = v5;
    sub_1BCF18068(v5, v10, v8);
    (*(v7 + 56))(v8, 0, 1, v20);
    swift_beginAccess();
    (*(v9 + 40))(v11 + v6, v8, v21);
    swift_endAccess();
    v12 = sub_1BCF216EC();
    v13 = sub_1BCF21CCC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BCEF6000, v12, v13, "NetworkDispatchClient device found", v18, 2u);
      MEMORY[0x1BFB32D20](v18, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v15, v17);

    v19 = v0[1];

    return v19(v22);
  }
}

uint64_t sub_1BCF1A60C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BCF1A6BC(void *a1)
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = a1;
  oslog = sub_1BCF216EC();
  v4 = sub_1BCF21CBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_1BCEF6000, oslog, v4, "NetworkDispatchClient actor connection invalidated: %@", v5, 0xCu);
    sub_1BCF05050(v6);
    MEMORY[0x1BFB32D20](v6, -1, -1);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }
}

uint64_t **NetworkDispatchClient.deinit()
{
  v1 = *v0;

  v2 = (*v0)[18];
  type metadata accessor for NetworkDispatchClient.Connection(255, v1[10], v1[11], v1[12]);
  v3 = sub_1BCF21D4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkDispatchClient.__deallocating_deinit()
{
  NetworkDispatchClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF1A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF10A88;

  return sub_1BCF1AAB8(a1, a2, a3);
}

uint64_t sub_1BCF1AA08(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF099D4;

  return NetworkDispatchClient.reverseForward(messageCode:messageData:)(a1, a2, a3);
}

uint64_t sub_1BCF1AAB8(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF10A88;

  return sub_1BCF18514(a1, a2, a3);
}

uint64_t sub_1BCF1AB64(uint64_t *a1)
{
  type metadata accessor for NetworkDispatchClient.Connection(255, a1[10], a1[11], a1[12]);
  result = sub_1BCF21D4C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF1AC80(void *a1)
{
  result = type metadata accessor for NetworkDispatchInterface(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    result = sub_1BCF215FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DuetDispatchListener.__allocating_init()()
{
  v0 = swift_allocObject();
  DuetDispatchListener.init()();
  return v0;
}

void *DuetDispatchListener.init()()
{
  v1 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v1 + 96);
  v5 = MEMORY[0x1E69E6168];
  type metadata accessor for DispatchClientTable(0, &v3);
  v0[2] = DispatchClientTable.__allocating_init()();
  return v0;
}

uint64_t sub_1BCF1AE44(uint64_t a1)
{
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BCF1B170(a1);
}

uint64_t sub_1BCF1AF24(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v6 - v3;
  sub_1BCF21E4C();
  swift_getAssociatedConformanceWitness();
  sub_1BCF21AFC();
  return (*(v2 + 8))(v4, AssociatedTypeWitness);
}

uint64_t sub_1BCF1B084(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BCF1C44C(a1, v3[10], v3[11], v3[12], v3[13]);
}

void sub_1BCF1B170(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;
  v33 = v1;
  v5 = v3[10];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BCF2170C();
  __swift_project_value_buffer(v11, qword_1EDDD2780);
  v32 = *(v6 + 16);
  v32(v10, v2, v5);
  v12 = sub_1BCF216EC();
  v13 = sub_1BCF21CCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v4;
    v17 = v16;
    v35 = v16;
    *v15 = 136315138;
    sub_1BCF21B0C();
    (*(v6 + 8))(v10, v5);
    v18 = sub_1BCEF84F4(aBlock, v37, &v35);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v12, v13, "Registering scheduled task %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v19 = v17;
    v4 = v31;
    MEMORY[0x1BFB32D20](v19, -1, -1);
    v20 = v15;
    v2 = v30;
    MEMORY[0x1BFB32D20](v20, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v31 = [objc_opt_self() sharedScheduler];
  v21 = v4[13];
  sub_1BCF21B0C();
  v22 = v4;
  v23 = sub_1BCF21A7C();

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v34;
  v32(v34, v2, v5);
  v26 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v5;
  *(v27 + 3) = v22[11];
  *(v27 + 4) = v22[12];
  *(v27 + 5) = v21;
  (*(v6 + 32))(&v27[v26], v25, v5);
  *&v27[(v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;
  v40 = sub_1BCF1C1A0;
  v41 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1BCF1C00C;
  v39 = &block_descriptor_3;
  v28 = _Block_copy(&aBlock);

  v29 = v31;
  [v31 registerForTaskWithIdentifier:v23 usingQueue:0 launchHandler:v28];
  _Block_release(v28);
}

uint64_t sub_1BCF1B5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a5;
  v43 = a6;
  v45 = a3;
  v46 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v39 - v12;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v47 = a7;
  v18 = sub_1BCF2170C();
  __swift_project_value_buffer(v18, qword_1EDDD2780);
  v19 = *(v13 + 16);
  v41 = a2;
  v19(v17, a2, a4);
  v20 = sub_1BCF216EC();
  v21 = sub_1BCF21CCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v50 = v24;
    *v23 = 136315138;
    sub_1BCF21B0C();
    (*(v13 + 8))(v17, a4);
    v25 = sub_1BCEF84F4(v48, v49, &v50);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_1BCEF6000, v20, v21, "Received scheduled task %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFB32D20](v24, -1, -1);
    v26 = v23;
    v19 = v39;
    MEMORY[0x1BFB32D20](v26, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v17, a4);
  }

  v27 = v47;
  v28 = sub_1BCF21C5C();
  v29 = v44;
  (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
  v30 = v40;
  v19(v40, v41, a4);
  v31 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v35 = v42;
  v34 = v43;
  *(v33 + 4) = a4;
  *(v33 + 5) = v35;
  *(v33 + 6) = v34;
  *(v33 + 7) = v27;
  *(v33 + 8) = v45;
  (*(v13 + 32))(&v33[v31], v30, a4);
  v36 = v46;
  *&v33[v32] = v46;

  v37 = v36;
  sub_1BCF0E794(0, 0, v29, &unk_1BCF237F0, v33);
}

uint64_t sub_1BCF1B984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a7;
  v7[15] = v10;
  v7[12] = a5;
  v7[13] = a6;
  v7[11] = a4;
  v7[16] = *(a7 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1BA48, 0, 0);
}

uint64_t sub_1BCF1BA48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 144) = *(Strong + 16);

    sub_1BCF21B0C();
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    *(v0 + 152) = v3;
    *(v0 + 56) = v2;
    *(v0 + 64) = v3;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1BCF1BBB4;

    return sub_1BCF14BE8(v0 + 56, 0, 0xF000000000000000);
  }

  else
  {
    [*(v0 + 104) setTaskCompleted];

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1BCF1BBB4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1BCF1BD7C;
  }

  else
  {
    v2 = sub_1BCF1BD08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF1BD08()
{
  [*(v0 + 104) setTaskCompleted];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF1BD7C()
{
  v25 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1BCF216EC();
  v9 = sub_1BCF21CBC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 168);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  if (v10)
  {
    v14 = *(v0 + 112);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315394;
    sub_1BCF21B0C();
    (*(v13 + 8))(v12, v14);
    v18 = sub_1BCEF84F4(*(v0 + 72), *(v0 + 80), &v24);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_1BCEF6000, v8, v9, "Failed to execute handler for duet task: %s: %@", v15, 0x16u);
    sub_1BCF05050(v16);
    MEMORY[0x1BFB32D20](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB32D20](v17, -1, -1);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  else
  {
    v21 = *(v0 + 112);

    (*(v13 + 8))(v12, v21);
  }

  [*(v0 + 104) setTaskCompleted];

  v22 = *(v0 + 8);

  return v22();
}

void sub_1BCF1C00C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t DuetDispatchListener.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

char *sub_1BCF1C214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A870, &unk_1BCF237D8);
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

uint64_t sub_1BCF1C308(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[8];
  v8 = *(v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BCF099D4;

  return sub_1BCF1B984(a1, v5, v6, v7, v1 + v4, v8, v3);
}

void sub_1BCF1C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BCF2170C();
  __swift_project_value_buffer(v10, qword_1EDDD2780);
  (*(v7 + 16))(v9, a1, a2);
  v11 = sub_1BCF216EC();
  v12 = sub_1BCF21CCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    sub_1BCF21B0C();
    (*(v7 + 8))(v9, a2);
    v15 = sub_1BCEF84F4(v19[1], v19[2], v19);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1BCEF6000, v11, v12, "Unregistering scheduled task %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB32D20](v14, -1, -1);
    MEMORY[0x1BFB32D20](v13, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, a2);
  }

  v16 = [objc_opt_self() sharedScheduler];
  sub_1BCF21B0C();
  v17 = sub_1BCF21A7C();

  [v16 deregisterTaskWithIdentifier_];
}

uint64_t sub_1BCF1C6E8(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BCF1DAC8(a1, a2);
  return v4;
}

uint64_t sub_1BCF1C738(int a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 48) = a3;
  *(v5 + 216) = a1;
  *(v5 + 220) = a2;
  *(v5 + 72) = *v4;
  v6 = sub_1BCF216BC();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A878, &qword_1BCF23810);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A880, &qword_1BCF23818);
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v9 = sub_1BCF218FC();
  *(v5 + 160) = v9;
  *(v5 + 168) = *(v9 - 8);
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1C960, 0, 0);
}

uint64_t sub_1BCF1C960()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 72);
    sub_1BCF2182C();
    v2 = *(v1 + 80);
    sub_1BCF218EC();
    *(v0 + 208) = *(v0 + 216);
    sub_1BCF216DC();
    sub_1BCF218BC();
    *(v0 + 212) = *(v0 + 220);
    sub_1BCF216DC();
    sub_1BCF218BC();
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    *(v0 + 16) = v9;
    *(v0 + 24) = v10;
    sub_1BCEFC5E0(v9, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    sub_1BCF216DC();
    sub_1BCF1E12C(&qword_1EBD2A888, sub_1BCF1E0D8, MEMORY[0x1E69E7C88]);
    sub_1BCF1E12C(&qword_1EBD2A898, sub_1BCF1E1A4, MEMORY[0x1E69E7C70]);
    sub_1BCF218BC();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF218CC();
    sub_1BCF218DC();
    sub_1BCF218AC();
    v13 = *(v0 + 72);
    sub_1BCF216CC();
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    v15 = type metadata accessor for NetworkDispatchInterface(0, v2, *(v13 + 88), *(v13 + 96));
    swift_getWitnessTable();
    *v14 = v0;
    v14[1] = sub_1BCF1CF0C;
    v16 = *(v0 + 176);
    v17 = *(v0 + 96);
    v18 = *(v0 + 64);

    return MEMORY[0x1EEDD27A0](v0 + 32, v18, v17, v16, v12, v11, v15, v12);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = sub_1BCF1D168;
    v4 = *(v0 + 56);
    v5 = *(v0 + 48);
    v7 = *(v0 + 216);
    v6 = *(v0 + 220);

    return sub_1BCF1DD00(v7, v6, v5, v4);
  }
}

uint64_t sub_1BCF1CF0C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1BCF1D31C;
  }

  else
  {
    v2 = sub_1BCF1D020;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF1D020()
{
  v1 = v0[21];
  v15 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (*(v1 + 8))(v15, v2);
  v12 = v0[4];
  v11 = v0[5];

  v13 = v0[1];

  return v13(v12, v11);
}

uint64_t sub_1BCF1D168(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  v9 = *(v6 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1BCF1D31C()
{
  v1 = v0[21];
  v13 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (*(v1 + 8))(v13, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BCF1D458(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BCF2189C();
  v16 = *v6;
  v8 = a2[1];
  v3[6] = v8;
  v3[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v3[8] = v9;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BCF2189C();
  v14 = *v9;
  v10 = a2[2];
  v3[9] = v10;
  v3[10] = *(v10 - 8);
  v15 = swift_task_alloc();
  v3[11] = v15;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1BCF2189C();
  v12 = *v15;
  v11 = v15[1];
  v13 = swift_task_alloc();
  v3[12] = v13;
  *v13 = v3;
  v13[1] = sub_1BCF1D824;

  return sub_1BCF1C738(v16, v14, v12, v11);
}

uint64_t sub_1BCF1D824(uint64_t a1, uint64_t a2)
{
  v14 = *(*v2 + 88);
  v13 = *(*v2 + 80);
  v3 = *(*v2 + 72);
  v4 = *(*v2 + 64);
  v12 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v15 = *v2;
  *v9 = a1;
  v9[1] = a2;

  (*(v7 + 8))(v6, v8);
  (*(v12 + 8))(v4, v5);
  (*(v13 + 8))(v14, v3);

  v10 = *(v15 + 8);

  return v10();
}

uint64_t **sub_1BCF1DAC8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v13 = a2;
  v5 = *v2;
  v12 = sub_1BCF2190C();
  v6 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = qword_1EDDD2778;
  *(v3 + qword_1EDDD2778) = a1;
  type metadata accessor for NetworkDispatchInterface(0, v5[10], v5[11], v5[12]);
  v14 = a1;
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68], MEMORY[0x1E6977C58]);

  swift_getWitnessTable();
  sub_1BCF2163C();
  (*(v6 + 32))(v3 + qword_1EDDD2770, v8, v12);
  *(v3 + qword_1EDDD1AC0) = v13;
  v14 = *(v3 + v9);

  sub_1BCF2161C();

  return v3;
}

uint64_t sub_1BCF1DD00(int a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 56) = a3;
  *(v5 + 120) = a2;
  *(v5 + 52) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1DD2C, v4, 0);
}

uint64_t sub_1BCF1DD2C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 52);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchInterface received message: %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v0 + 120);

  *(v0 + 80) = os_transaction_create();
  *(v0 + 16) = v6;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1BCF1DED4;
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 52);

  return sub_1BCEFB608(v10, v0 + 16, v8, v9);
}

uint64_t sub_1BCF1DED4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  v7 = v6[9];
  if (v2)
  {
    v8 = sub_1BCF1E074;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v8 = sub_1BCF1E00C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1BCF1E00C()
{
  swift_unknownObjectRelease();
  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_1BCF1E074()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1BCF1E0D8()
{
  result = qword_1EBD2A890;
  if (!qword_1EBD2A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A890);
  }

  return result;
}

uint64_t sub_1BCF1E12C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCF1E1A4()
{
  result = qword_1EBD2A8A0;
  if (!qword_1EBD2A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8A0);
  }

  return result;
}

uint64_t sub_1BCF1E210(uint64_t a1)
{
  result = sub_1BCF2190C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF1E2BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NetworkDispatchInterface(0, v2[10], v2[11], v2[12]);
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68], MEMORY[0x1E6977C58]);
  swift_getWitnessTable();
  result = sub_1BCF2162C();
  if (!v3 && !result)
  {
    v7 = swift_distributedActor_remote_initialize();
    v8 = qword_1EDDD2770;
    v9 = sub_1BCF2190C();
    (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
    *(v7 + qword_1EDDD2778) = a2;

    return v7;
  }

  return result;
}

uint64_t sub_1BCF1E410()
{
  v1 = qword_1EDDD2770;
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68], MEMORY[0x1E6977C58]);
  sub_1BCF2164C();
  v2 = sub_1BCF2190C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BCF1E500()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = qword_1EDDD2770;
    v2 = sub_1BCF2190C();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1BCF1E410();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF1E59C()
{
  v1 = *v0;
  sub_1BCF21F4C();
  type metadata accessor for NetworkDispatchInterface(0, v1[10], v1[11], v1[12]);
  swift_getWitnessTable();
  sub_1BCF2167C();
  return sub_1BCF21F6C();
}

uint64_t **sub_1BCF1E64C()
{
  v1 = *v0;
  if ((sub_1BCF216AC() & 1) == 0)
  {
    type metadata accessor for NetworkDispatchInterface(0, v1[10], v1[11], v1[12]);
    swift_getWitnessTable();
    return sub_1BCF2160C();
  }

  return v0;
}

uint64_t sub_1BCF1E744(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NetworkDispatchInterface(0, a2[10], a2[11], a2[12]);
  swift_getWitnessTable();
  return sub_1BCF2167C();
}

uint64_t sub_1BCF1E7B4(uint64_t a1, uint64_t *a2)
{
  sub_1BCF21F4C();
  type metadata accessor for NetworkDispatchInterface(0, a2[10], a2[11], a2[12]);
  swift_getWitnessTable();
  sub_1BCF2167C();
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1E830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EDDD2770;
  v5 = sub_1BCF2190C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BCF1E8AC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = type metadata accessor for NetworkDispatchInterface(0, a3[10], a3[11], a3[12]);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6CC98](v3, v4, v5, WitnessTable);
}

uint64_t sub_1BCF1E92C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for NetworkDispatchInterface(0, a2[10], a2[11], a2[12]);
  swift_getWitnessTable();
  sub_1BCF1EBAC(&qword_1EBD2A8B0, MEMORY[0x1E6977D90], MEMORY[0x1E6977DA8]);
  result = sub_1BCF2169C();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1BCF1E9F0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NetworkDispatchInterface(0, a2[10], a2[11], a2[12]);
  swift_getWitnessTable();
  sub_1BCF1EBAC(&qword_1EBD2A8B8, MEMORY[0x1E6977D90], MEMORY[0x1E6977D98]);
  return sub_1BCF2168C();
}

uint64_t sub_1BCF1EBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BCF1EBF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BCF2191C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1ECB4, v1, 0);
}

uint64_t sub_1BCF1ECB4()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchBrowser looking for terminus endpoint", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = v0[3];

  if (*(v5 + 136))
  {
    sub_1BCF20068();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    v10 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    v13 = *(v12 + 120);
    *v10 = *(v12 + 112);
    v10[1] = v13;
    (*(v9 + 104))(v10, *MEMORY[0x1E6977DB0], v11);

    sub_1BCF0FEB4(0, 60.0);
    sub_1BCF2199C();
    swift_allocObject();
    v14 = sub_1BCF2193C();
    v0[7] = v14;
    v15 = *(v5 + 136);
    *(v5 + 136) = v14;

    sub_1BCF20058(v15);
    v16 = sub_1BCF200BC();
    v17 = swift_task_alloc();
    v0[8] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v12;
    v18 = swift_task_alloc();
    v0[9] = v18;
    v19 = sub_1BCF2173C();
    *v18 = v0;
    v18[1] = sub_1BCF1EF78;
    v20 = v0[2];

    return MEMORY[0x1EEE6DE38](v20, v12, v16, 0xD000000000000016, 0x80000001BCF26510, sub_1BCF20110, v17, v19);
  }
}

uint64_t sub_1BCF1EF78()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1BCF1F10C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1BCF1F0A0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF1F0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF1F10C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF1F198()
{
  v1 = *v0;
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](v1);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1F20C(uint64_t a1)
{
  v2 = *v1;
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](v2);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1F250()
{
  v1 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = sub_1BCF216EC();
  v4 = sub_1BCF21CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BCEF6000, v3, v4, "NetworkDispatchBrowser deinit", v5, 2u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v1 + 136);
  if (v6 >= 2)
  {

    sub_1BCF2198C();
    sub_1BCF20058(v6);
  }

  sub_1BCF20058(*(v1 + 136));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1BCF1F368()
{
  sub_1BCF1F250();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t get_enum_tag_for_layout_string_15FitnessDispatch07NetworkB7BrowserC5State33_075526CA0CCBF12FC5A9790C70E57C9ELLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BCF1F3D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCF1F424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BCF1F480(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BCF1F4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_1BCF219BC();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v28 = *(v10 + 16);
  v28(v13, a1, v9);
  v15 = *(v10 + 80);
  v27[0] = a1;
  v16 = swift_allocObject();
  v27[1] = v11;
  v17 = a3;
  *(v16 + 16) = v14;
  v18 = *(v10 + 32);
  v18(v16 + ((v15 + 24) & ~v15), v13, v9);

  sub_1BCF2192C();

  v19 = sub_1BCF21C5C();
  v20 = v29;
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
  v28(v13, v27[0], v9);
  v21 = sub_1BCF200BC();
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v21;
  v22[4] = v17;
  v18(v22 + ((v15 + 40) & ~v15), v13, v9);
  swift_retain_n();
  sub_1BCF134B4(0, 0, v20, &unk_1BCF23B68, v22);

  sub_1BCF12F90();
  v24 = v30;
  v23 = v31;
  v25 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x1E69E7F98], v32);
  v26 = sub_1BCF21CEC();
  (*(v23 + 8))(v24, v25);
  sub_1BCF2194C();
}

uint64_t sub_1BCF1F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1BCF21C5C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a4, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  *(v17 + 5) = a1;
  *(v17 + 6) = a2;
  (*(v9 + 32))(&v17[v16], v11, v8);

  sub_1BCF0EA84(0, 0, v14, &unk_1BCF23B78, v17);
}

uint64_t sub_1BCF1FAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1FACC, 0, 0);
}

uint64_t sub_1BCF1FACC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF1FB90, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1BCF1FB90()
{
  sub_1BCF203C4(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1BCF1FC04, 0, 0);
}

uint64_t sub_1BCF1FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1FC4C, a4, 0);
}

uint64_t sub_1BCF1FC4C(unint64_t a1)
{
  v3 = *(*(v1 + 16) + 128);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_1BCF1FD44;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1BCF1FD44()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1BCF1FE88, v6, 0);
  }
}

uint64_t sub_1BCF1FE88()
{
  sub_1BCF1FEEC();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1BCF1FEEC()
{
  v1 = *(v0 + 136);
  if (v1 >= 2)
  {
    v2 = v0;
    v3 = qword_1EDDD22E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1BCF2170C();
    __swift_project_value_buffer(v4, qword_1EDDD2780);
    v5 = sub_1BCF216EC();
    v6 = sub_1BCF21CCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BCEF6000, v5, v6, "NetworkDispatchBrowser timed out", v7, 2u);
      MEMORY[0x1BFB32D20](v7, -1, -1);
    }

    sub_1BCF2198C();
    v8 = *(v2 + 136);
    *(v2 + 136) = 1;
    sub_1BCF20058(v8);
    sub_1BCF20068();
    swift_allocError();
    *v9 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
    sub_1BCF21BFC();
    return sub_1BCF20058(v1);
  }

  return result;
}

unint64_t sub_1BCF20058(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1BCF20068()
{
  result = qword_1EBD2A8C0;
  if (!qword_1EBD2A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8C0);
  }

  return result;
}

unint64_t sub_1BCF200BC()
{
  result = qword_1EBD2A8C8;
  if (!qword_1EBD2A8C8)
  {
    type metadata accessor for NetworkDispatchBrowser();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8C8);
  }

  return result;
}

uint64_t sub_1BCF20118(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BCF1F898(a1, a2, v6, v7);
}

uint64_t sub_1BCF201A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BCF099D4;

  return sub_1BCF1FC2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BCF202AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BCF099D4;

  return sub_1BCF1FAA8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1BCF203C4(uint64_t a1, void (*a2)(uint8_t *, uint64_t))
{
  v3 = v2;
  v77 = a2;
  v94 = a1;
  v71 = sub_1BCF2173C();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_1BCF2197C();
  v7 = *(v83 - 8);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v64[-v11];
  v95 = sub_1BCF2195C();
  v92 = *(v95 - 8);
  v12 = MEMORY[0x1EEE9AC00](v95);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v64[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v64[-v18];
  if (qword_1EDDD22E0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v93 = v17;
    v87 = v14;
    v82 = v10;
    v76 = v6;
    v19 = sub_1BCF2170C();
    v79 = __swift_project_value_buffer(v19, qword_1EDDD2780);
    v20 = sub_1BCF216EC();
    v10 = sub_1BCF21CCC();
    if (os_log_type_enabled(v20, v10))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BCEF6000, v20, v10, "NetworkDispatchBrowser results changed", v17, 2u);
      MEMORY[0x1BFB32D20](v17, -1, -1);
    }

    v21 = v94 + 56;
    v22 = 1 << *(v94 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v14 = v23 & *(v94 + 56);
    v24 = (v22 + 63) >> 6;
    v25 = v92 + 16;
    v89 = v92 + 32;
    v85 = (v92 + 88);
    v84 = *MEMORY[0x1E6977DD0];
    v91 = (v92 + 8);
    v75 = (v92 + 96);
    v74 = (v7 + 32);
    v73 = (v7 + 16);
    v72 = v7 + 8;
    v70 = (v4 + 8);

    v6 = 0;
    *&v26 = 136315138;
    v69 = v26;
    v78 = v3;
    v86 = v25;
    if (v14)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v28 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
      }

      v14 = *(v21 + 8 * v28);
      ++v6;
      if (v14)
      {
        v6 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_13:
  while (1)
  {
    v29 = v95;
    v30 = v92;
    v31 = *(v92 + 16);
    v32 = v90;
    v31(v90, *(v94 + 48) + *(v92 + 72) * (__clz(__rbit64(v14)) | (v6 << 6)), v95);
    v33 = *(v30 + 32);
    v34 = v93;
    v33(v93, v32, v29);
    v7 = *(v3 + 17);
    if (v7 < 2)
    {
      break;
    }

    v35 = v3;
    v14 &= v14 - 1;
    v4 = v87;
    v36 = v95;
    v31(v87, v34, v95);
    v37 = (*v85)(v4, v36);
    if (v37 == v84)
    {
      (*v75)(v4, v95);
      v38 = v88;
      v39 = v83;
      (*v74)(v88, v4, v83);
      v40 = v82;
      (*v73)(v82, v38, v39);

      v41 = sub_1BCF216EC();
      v42 = sub_1BCF21CCC();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v72;
      v81 = v72 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v66 = v45;
        v68 = swift_slowAlloc();
        v96 = v68;
        *v45 = v69;
        v46 = v76;
        v67 = v41;
        v47 = v82;
        sub_1BCF2196C();
        v48 = sub_1BCF2172C();
        v65 = v42;
        v50 = v49;
        (*v70)(v46, v71);
        v51 = v47;
        v4 = v83;
        v80 = *v44;
        v80(v51, v83);
        v52 = sub_1BCEF84F4(v48, v50, &v96);

        v53 = v66;
        *(v66 + 1) = v52;
        v54 = v67;
        v55 = v53;
        _os_log_impl(&dword_1BCEF6000, v67, v65, "Connection added %s", v53, 0xCu);
        v56 = v68;
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1BFB32D20](v56, -1, -1);
        MEMORY[0x1BFB32D20](v55, -1, -1);
      }

      else
      {

        v80 = *v44;
        v80(v40, v39);
        v4 = v39;
      }

      sub_1BCF2198C();
      v17 = v78;
      v57 = *(v78 + 17);
      *(v78 + 17) = 1;
      sub_1BCF20058(v57);
      v58 = v88;
      sub_1BCF2196C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
      v10 = v77;
      sub_1BCF21C0C();
      sub_1BCF20058(v7);
      v59 = v58;
      v3 = v17;
      v80(v59, v4);
      (*v91)(v93, v95);
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = v91;
      v10 = *v91;
      v27 = v34;
      v17 = v95;
      (*v91)(v27, v95);
      (v10)(v4, v17);
      v3 = v35;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  v61 = sub_1BCF216EC();
  v62 = sub_1BCF21CCC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1BCEF6000, v61, v62, "Ignoring, state is no longer browsing", v63, 2u);
    MEMORY[0x1BFB32D20](v63, -1, -1);
  }

  return (*v91)(v93, v95);
}

uint64_t getEnumTagSinglePayload for NetworkDispatchBrowser.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkDispatchBrowser.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BCF20D58()
{
  result = qword_1EBD2A8D8;
  if (!qword_1EBD2A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8D8);
  }

  return result;
}

id sub_1BCF20E14(uint64_t a1, uint64_t a2)
{
  sub_1BCF210F4(a1, a2);
  v4 = sub_1BCF20F94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E0, &qword_1BCF23C40);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7470697263736544;
  *(inited + 16) = xmmword_1BCF232E0;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_1BCF21ECC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_1BCF213A4(inited);
  swift_setDeallocating();
  sub_1BCF214B4(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1BCF21A7C();

  v8 = sub_1BCF219EC();

  v9 = [v6 initWithDomain:v7 code:v4 userInfo:v8];

  return v9;
}

id sub_1BCF20F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1BCF21EBC();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1BCF2159C();

  v11 = [v10 code];
  return v11;
}

uint64_t sub_1BCF210F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1BCF21EBC();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1BCF2159C();

  v11 = [v10 domain];
  v12 = sub_1BCF21A8C();

  return v12;
}

unint64_t sub_1BCF21274(uint64_t a1, uint64_t a2)
{
  sub_1BCF21F4C();
  sub_1BCF21ABC();
  v4 = sub_1BCF21F6C();

  return sub_1BCF212EC(a1, a2, v4);
}

unint64_t sub_1BCF212EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BCF21EDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BCF213A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A8F0, &qword_1BCF23C50);
    v3 = sub_1BCF21E9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BCF2151C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BCF21274(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BCF2158C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BCF214B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E8, &qword_1BCF23C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCF2151C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E8, &qword_1BCF23C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BCF2158C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}