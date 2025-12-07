uint64_t sub_1E67875A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1E6787658;

  return sub_1E6784478(a5, a6);
}

uint64_t sub_1E6787658(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6787770, v2, 0);
}

uint64_t sub_1E6787770()
{
  sub_1E6784248(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E67877E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1E678271C(a3, v26 - v11);
  v13 = sub_1E68B3460();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E67826B4(v12);
  }

  else
  {
    sub_1E68B3450();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E68B3400();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E68B31C0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1E67826B4(a3);

      return v24;
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

  sub_1E67826B4(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E6787AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1E678271C(a3, v26 - v11);
  v13 = sub_1E68B3460();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E67826B4(v12);
  }

  else
  {
    sub_1E68B3450();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E68B3400();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E68B31C0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AB8, &qword_1E68B7F28);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1E67826B4(a3);

      return v23;
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

  sub_1E67826B4(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AB8, &qword_1E68B7F28);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E6787D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v58 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v60 = &v51 - v6;
  v7 = sub_1E68B1950();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = v9;
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v51 - v12;
  v55 = *(v3 + 88);
  v13 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v63 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v15 = sub_1E68B35C0();
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v16 = sub_1E68B1AE0();
  __swift_project_value_buffer(v16, qword_1EE2F8440);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v17 = sub_1E68B1AC0();
  v18 = sub_1E68B3740();

  v19 = os_log_type_enabled(v17, v18);
  v54 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v64[0] = v53;
    *v20 = 136315650;
    v65 = v2;
    v21 = sub_1E68B31B0();
    v23 = sub_1E683B478(v21, v22, v64);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2048;
    v24 = sub_1E68B35B0();

    *(v20 + 14) = v24;

    *(v20 + 22) = 2048;
    v25 = sub_1E68B35B0();

    *(v20 + 24) = v25;

    _os_log_impl(&dword_1E6725000, v17, v18, "%s Fetchable: %ld/%ld", v20, 0x20u);
    v26 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1E6952A70](v26, -1, -1);
    MEMORY[0x1E6952A70](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  if (sub_1E68B35D0())
  {
  }

  v28 = v59;
  v29 = sub_1E68B1940();
  v52 = &v51;
  v64[0] = v15;
  MEMORY[0x1EEE9AC00](v29, v30);
  v53 = v15;
  v31 = v63;
  v32 = v55;
  *(&v51 - 4) = v63;
  *(&v51 - 3) = v32;
  *(&v51 - 2) = v28;
  v33 = sub_1E68B3630();
  type metadata accessor for DataItemResolver.FetchState(255, v31, v32, v34);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = AssociatedConformanceWitness;
  v36 = TupleTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v39 = sub_1E6840A10(sub_1E678A738, (&v51 - 6), v33, v36, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v38);
  v52 = &v51;
  v65 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v51 - 2) = v31;
  *(&v51 - 1) = v32;
  v41 = v54;
  swift_beginAccess();
  sub_1E68B30E0();
  sub_1E68B33B0();
  swift_getWitnessTable();
  sub_1E68B3080();
  swift_endAccess();
  v42 = sub_1E68B3460();
  v43 = v60;
  (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
  v45 = v61;
  v44 = v62;
  v46 = v57;
  (*(v61 + 16))(v57, v28, v62);
  v47 = swift_getWitnessTable();
  v48 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = v41;
  *(v49 + 3) = v47;
  *(v49 + 4) = v63;
  *(v49 + 5) = v32;
  v50 = v53;
  *(v49 + 6) = v41;
  *(v49 + 7) = v50;
  (*(v45 + 32))(&v49[v48], v46, v44);
  swift_retain_n();
  sub_1E67877E0(0, 0, v43, &unk_1E68B7F70, v49);

  return (*(v45 + 8))(v28, v44);
}

BOOL sub_1E6788488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 80);
  State = type metadata accessor for DataItemResolver.FetchState(255, v4, *(*a2 + 88), a4);
  v6 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3110();
  swift_endAccess();
  v10 = *(State - 8);
  v11 = (*(v10 + 48))(v9, 1, State);
  if (v11 != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      (*(v10 + 8))(v9, State);
    }

    else if (EnumCaseMultiPayload)
    {
      v14 = sub_1E68B1950();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v14 - 8) + 8))(&v9[*(TupleTypeMetadata2 + 48)], v14);
      (*(*(v4 - 8) + 8))(v9, v4);
    }

    else
    {
      v13 = sub_1E68B1950();
      (*(*(v13 - 8) + 8))(v9, v13);
    }
  }

  return v11 == 1;
}

uint64_t sub_1E6788734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for DataItemResolver.FetchState(255, a3, a4, v11);
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a5, a1, AssociatedTypeWitness);
  v13 = sub_1E68B1950();
  (*(*(v13 - 8) + 16))(a5 + v12, a2, v13);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6788854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1E6788904;

  return sub_1E6784478(a5, a6);
}

uint64_t sub_1E6788904(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E678A9C0, v2, 0);
}

uint64_t sub_1E6788A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  State = type metadata accessor for DataItemResolver.FetchState(0, a2, a3, a5);
  v10 = *(State - 8);
  MEMORY[0x1EEE9AC00](State, v11);
  v13 = v28 - v12;
  v14 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, State, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v10 + 8))(v13, State);
      goto LABEL_9;
    }

    v22 = *(v14 + 32);
    v22(v19, v13, a2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = sub_1E68B1950();
      (*(*(v21 - 8) + 8))(v13, v21);
LABEL_9:
      v26 = 1;
      return (*(v14 + 56))(a4, v26, 1, a2);
    }

    v23 = sub_1E68B1950();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v28[1] = v5;
    v25 = *(TupleTypeMetadata2 + 48);
    v22 = *(v14 + 32);
    v22(v19, v13, a2);
    (*(*(v23 - 8) + 8))(&v13[v25], v23);
  }

  v22(a4, v19, a2);
  v26 = 0;
  return (*(v14 + 56))(a4, v26, 1, a2);
}

uint64_t sub_1E6788CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  State = type metadata accessor for DataItemResolver.FetchState(255, a2, a3, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12);
  v14 = &v32 - v13;
  v15 = *(State - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v32 - v19;
  v22 = *(v21 + 48);
  v23 = *(v15 + 16);
  v35 = a1;
  v23(v20, a1 + v22, State, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v33 = v4;
    if (EnumCaseMultiPayload)
    {
      v26 = sub_1E68B1950();
      v27 = swift_getTupleTypeMetadata2();
      (*(*(v26 - 8) + 8))(&v20[*(v27 + 48)], v26);
      (*(*(a2 - 8) + 8))(v20, a2);
    }

    else
    {
      v25 = sub_1E68B1950();
      (*(*(v25 - 8) + 8))(v20, v25);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v4;
    (*(v15 + 8))(v20, State);
LABEL_7:
    (*(v34 + 16))(v14, v35, TupleTypeMetadata2);
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = *(AssociatedTypeWitness - 8);
    v30 = v36;
    (*(v29 + 32))(v36, v14, AssociatedTypeWitness);
    (*(v29 + 56))(v30, 0, 1, AssociatedTypeWitness);
    return (*(v15 + 8))(&v14[v28], State);
  }

  (*(v15 + 8))(v20, State);
  return (*(*(AssociatedTypeWitness - 8) + 56))(v36, 1, 1, AssociatedTypeWitness);
}

void *DataItemResolver.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DataItemResolver.__deallocating_deinit()
{
  DataItemResolver.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E678912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E678914C, a4, 0);
}

uint64_t sub_1E678914C()
{
  sub_1E6787D74(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E67891CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E67891EC, a4, 0);
}

uint64_t sub_1E67891EC()
{
  sub_1E6783D58(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E678926C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14 - v9;
  v11 = sub_1E68B3460();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a1;

  sub_1E67877E0(0, 0, v10, a3, v12);
}

uint64_t sub_1E6789380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E67893A0, a4, 0);
}

uint64_t sub_1E67893A0()
{
  sub_1E67867A0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DataItemResolver.registerResolvedItemInterest(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{

  sub_1E673B160(a1, sub_1E6789C9C, v2, a2, v5);
}

uint64_t sub_1E6789474(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1E68B3460();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *(v3 + 80);
  v10[5] = *(v3 + 88);
  v10[6] = v9;
  v10[7] = a1;

  sub_1E6787AA0(0, 0, v7, &unk_1E68B7F10, v10);
}

uint64_t sub_1E67895E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6789608, 0, 0);
}

uint64_t sub_1E6789608()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E67896CC, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1E67896CC()
{
  sub_1E6783D58(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1E678973C, 0, 0);
}

uint64_t sub_1E678980C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E6789900;

  return v5(v2 + 32);
}

uint64_t sub_1E6789900()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E6789A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E678912C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E6789AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E67891CC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6789BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E6789380(a1, v4, v5, v7, v6);
}

void sub_1E6789D54(uint64_t a1)
{
  sub_1E678A1E0();
  if (v1 <= 0x3F)
  {
    sub_1E68B1950();
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E6789E08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E68B1950() - 8);
  v7 = *(v6 + 64);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 64);
  v10 = ((v9 + *(v6 + 80)) & ~*(v6 + 80)) + v7;
  if (v10 > v7)
  {
    v7 = v10;
  }

  if (v9 > v7)
  {
    v7 = *(v8 + 64);
  }

  v11 = 40;
  if (v7 > 0x28)
  {
    v11 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 252) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = *(a1 + v11);
      if (v18 >= 4)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 253;
}

void sub_1E6789FB4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E68B1950() - 8);
  v9 = *(v8 + 64);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 64);
  v12 = ((v11 + *(v8 + 80)) & ~*(v8 + 80)) + v9;
  if (v12 > v9)
  {
    v9 = v12;
  }

  if (v11 > v9)
  {
    v9 = *(v10 + 64);
  }

  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v13 = v9 + 1;
  if (a3 < 0xFD)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 252) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFC)
  {
    v15 = a2 - 253;
    if (v13 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v9 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_43:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v9] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_28;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

void sub_1E678A1E0()
{
  if (!qword_1EE2EDE80)
  {
    v0 = sub_1E68B1950();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EDE80);
    }
  }
}

void sub_1E678A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1E678A26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E67825C0;

  return sub_1E67895E4(a1, v4, v5, v7, v6);
}

uint64_t sub_1E678A340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return sub_1E678980C(a1, v4);
}

uint64_t sub_1E678A3F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E67825C0;

  return sub_1E678980C(a1, v4);
}

uint64_t sub_1E678A54C(uint64_t a1)
{
  v4 = *(sub_1E68B1950() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E6782994;

  return sub_1E67875A8(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1E678A670()
{
  result = qword_1EE2EDE70;
  if (!qword_1EE2EDE70)
  {
    sub_1E68B1950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE70);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = sub_1E68B1950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E678A8A4(uint64_t a1)
{
  v4 = *(sub_1E68B1950() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E6782994;

  return sub_1E6788854(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1E678A9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E678AA64(uint64_t a1)
{
  v2 = sub_1E678AD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E678AAA0(uint64_t a1)
{
  v2 = sub_1E678AD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E678AADC(uint64_t a1)
{
  v2 = sub_1E678AD80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E678AB18(uint64_t a1)
{
  v2 = sub_1E678AD80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaceholderReasons.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC8, &qword_1E68B7F80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AD0, &qword_1E68B7F88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E678AD2C();
  sub_1E68B3BD0();
  sub_1E678AD80();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E678AD2C()
{
  result = qword_1ED097AD8;
  if (!qword_1ED097AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097AD8);
  }

  return result;
}

unint64_t sub_1E678AD80()
{
  result = qword_1ED097AE0;
  if (!qword_1ED097AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097AE0);
  }

  return result;
}

uint64_t PlaceholderReasons.hashValue.getter()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

uint64_t PlaceholderReasons.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AE8, &qword_1E68B7F90);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AF0, &qword_1E68B7F98);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E678AD2C();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1E68B3A10();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1E676F5BC() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1E68B3870();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v18 = &type metadata for PlaceholderReasons;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_1E678AD80();
  sub_1E68B3970();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1E678B1A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC8, &qword_1E68B7F80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AD0, &qword_1E68B7F88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E678AD2C();
  sub_1E68B3BD0();
  sub_1E678AD80();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E678B37C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    swift_getTupleTypeMetadata2();

    return (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
  }

  else
  {
    sub_1E678DEE0();
    swift_allocError();
    swift_willThrow();
    return (*(v3 + 8))(v6, a1);
  }
}

uint64_t static DataItemDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v49 = a2;
  v42[2] = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v43 = v42 - v8;
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v42[0] = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = a4;
  v13 = type metadata accessor for DataItemDescriptor(0, a3, a4, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v42 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v23);
  v26 = v42 - v25;
  v28 = v42 + *(v27 + 48) - v25;
  v29 = *(v14 + 16);
  v29(v42 - v25, v48, v13, v24);
  (v29)(v28, v49, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v29)(v21, v26, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = v45;
      v39 = v42[0];
      (*(v45 + 32))(v42[0], v28, a3);
      v37 = sub_1E68B3190();
      v40 = *(v38 + 8);
      v40(v39, a3);
      v40(v21, a3);
      goto LABEL_11;
    }

    (*(v45 + 8))(v21, a3);
    goto LABEL_8;
  }

  (v29)(v17, v26, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
  v30 = v47;
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    (*(v46 + 8))(v17, v30);
LABEL_8:
    v37 = 0;
    v14 = v44;
    v13 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v49 = *&v28[v31];
  v32 = v46;
  v33 = v43;
  (*(v46 + 32))();
  swift_getAssociatedConformanceWitness();
  v34 = sub_1E68B3190();
  v35 = *(v32 + 8);
  v35(v17, v30);
  if (v34)
  {
    v36 = v33;
    v37 = sub_1E676F958();

    v35(v36, v30);
  }

  else
  {
    v35(v33, v30);

    v37 = 0;
  }

LABEL_11:
  (*(v14 + 8))(v26, v13);
  return v37 & 1;
}

uint64_t sub_1E678BA60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E678BB30(char a1)
{
  if (a1)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1E678BB68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E678BC2C(char a1)
{
  if (a1)
  {
    return 0x736E6F73616572;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E678BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E678BA60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E678BCB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E678BD04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E678BD58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E678BDAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E678BE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E678BE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E678BB68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E678BE98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E678BEEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DataItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = *(a2 + 16);
  v25 = *(*(a2 + 24) + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v25 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v3, a2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    v22 = *&v20[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v7 + 32))(v10, v20, AssociatedTypeWitness);
    v23 = v26;
    MEMORY[0x1E69523D0](1);
    swift_getAssociatedConformanceWitness();
    sub_1E68B3140();
    sub_1E6772708(v23, v22);

    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  else
  {
    (*(v11 + 32))(v15, v20, v5);
    MEMORY[0x1E69523D0](0);
    sub_1E68B3140();
    return (*(v11 + 8))(v15, v5);
  }
}

uint64_t DataItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  DataItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E678C2A0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  DataItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t DataItemDescriptor.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    swift_getTupleTypeMetadata2();

    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v12, AssociatedTypeWitness);
  }

  else
  {
    (*(v5 + 32))(v7, v12, v4);
    sub_1E68B3830();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t DataItemDescriptor<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v66 = a4;
  v77 = a5;
  v8 = type metadata accessor for DataItemDescriptor.PlaceholderCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v75 = v8;
  v68 = sub_1E68B3A20();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v9);
  v78 = &v61 - v10;
  v12 = type metadata accessor for DataItemDescriptor.ItemCodingKeys(255, a2, a3, v11);
  v71 = swift_getWitnessTable();
  v72 = v12;
  v65 = sub_1E68B3A20();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v13);
  v73 = &v61 - v14;
  type metadata accessor for DataItemDescriptor.CodingKeys(255, a2, a3, v15);
  swift_getWitnessTable();
  v16 = sub_1E68B3A20();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - v18;
  v70 = a2;
  v69 = a3;
  v21 = type metadata accessor for DataItemDescriptor(0, a2, a3, v20);
  v76 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v61 - v31;
  v33 = a1;
  v34 = a1[3];
  v87 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v81 = v19;
  v35 = v82;
  sub_1E68B3BC0();
  if (!v35)
  {
    v63 = v28;
    v82 = v24;
    v62 = v32;
    v36 = v78;
    v37 = v80;
    v38 = v81;
    *&v83 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v85 = sub_1E68B37A0();
    *(&v85 + 1) = v39;
    *&v86 = v40;
    *(&v86 + 1) = v41;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v42 = v83;
    if (v83 == 2 || (v61 = v85, v83 = v85, v84 = v86, (sub_1E68B36E0() & 1) == 0))
    {
      v47 = sub_1E68B3870();
      swift_allocError();
      v48 = v37;
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v50 = v21;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v47);
      swift_willThrow();
      (*(v79 + 8))(v38, v48);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v83) = 1;
        v43 = v36;
        sub_1E68B3970();
        v44 = v77;
        swift_getAssociatedTypeWitness();
        LOBYTE(v83) = 0;
        v45 = v82;
        v46 = v68;
        sub_1E68B3A00();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
        swift_getTupleTypeMetadata2();
        LOBYTE(v83) = 1;
        sub_1E678D648(&qword_1ED097AF8, sub_1E678D5F4, MEMORY[0x1E69E6510]);
        sub_1E68B3A00();
        (*(v67 + 8))(v43, v46);
        (*(v79 + 8))(v81, v80);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v57 = v45;
        v58 = v76;
      }

      else
      {
        LOBYTE(v83) = 0;
        v51 = v73;
        sub_1E68B3970();
        v58 = v76;
        v53 = v63;
        v54 = v51;
        v55 = v65;
        sub_1E68B3A00();
        v56 = v79;
        (*(v64 + 8))(v54, v55);
        (*(v56 + 8))(v38, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v57 = v53;
        v44 = v77;
      }

      v59 = *(v58 + 32);
      v60 = v62;
      v59(v62, v57, v21);
      v59(v44, v60, v21);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t DataItemDescriptor<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v56 = type metadata accessor for DataItemDescriptor.PlaceholderCodingKeys(255, v6, v7, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E68B3AC0();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = v46 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v63 = v46 - v13;
  v15 = type metadata accessor for DataItemDescriptor.ItemCodingKeys(255, v6, v7, v14);
  v16 = swift_getWitnessTable();
  v48 = v15;
  v46[1] = v16;
  v17 = sub_1E68B3AC0();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = v46 - v19;
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46[0] = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v6;
  v55 = v7;
  type metadata accessor for DataItemDescriptor.CodingKeys(255, v6, v7, v28);
  swift_getWitnessTable();
  v66 = sub_1E68B3AC0();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v29);
  v31 = v46 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v23 + 16))(v27, v62, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    v33 = v53;
    v62 = v32;
    v34 = *&v27[*(swift_getTupleTypeMetadata2() + 48)];
    v35 = v52;
    (*(v52 + 32))(v63, v27, v33);
    v71 = 1;
    v36 = v59;
    sub_1E68B3A30();
    v70 = 0;
    v37 = v61;
    v38 = v65;
    sub_1E68B3AB0();
    if (v38)
    {

      (*(v60 + 8))(v36, v37);
      (*(v35 + 8))(v63, v33);
      return (*(v64 + 8))(v31, v66);
    }

    else
    {
      v67 = v34;
      v69 = 1;
      sub_1E678D648(&qword_1ED097B08, sub_1E678D6C0, MEMORY[0x1E69E64F0]);
      sub_1E68B3AB0();
      (*(v60 + 8))(v36, v37);
      (*(v35 + 8))(v63, v33);
      (*(v64 + 8))(v31, v66);
    }
  }

  else
  {
    v40 = v49;
    v41 = v46[0];
    v42 = v57;
    (*(v49 + 32))(v46[0], v27, v57);
    v68 = 0;
    v43 = v47;
    v44 = v66;
    sub_1E68B3A30();
    v45 = v51;
    sub_1E68B3AB0();
    (*(v50 + 8))(v43, v45);
    (*(v40 + 8))(v41, v42);
    return (*(v64 + 8))(v31, v44);
  }
}

unint64_t sub_1E678D5F4()
{
  result = qword_1ED097B00;
  if (!qword_1ED097B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097B00);
  }

  return result;
}

uint64_t sub_1E678D648(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E678D6C0()
{
  result = qword_1ED097B10[0];
  if (!qword_1ED097B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED097B10);
  }

  return result;
}

unint64_t sub_1E678D718()
{
  result = qword_1EE2EB720[0];
  if (!qword_1EE2EB720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EB720);
  }

  return result;
}

uint64_t sub_1E678D7B8(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1E678D888(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1E678DA0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1E678DC30()
{
  result = qword_1ED097C98;
  if (!qword_1ED097C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097C98);
  }

  return result;
}

unint64_t sub_1E678DD84()
{
  result = qword_1ED097CA0;
  if (!qword_1ED097CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CA0);
  }

  return result;
}

unint64_t sub_1E678DDDC()
{
  result = qword_1ED097CA8;
  if (!qword_1ED097CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CA8);
  }

  return result;
}

unint64_t sub_1E678DE34()
{
  result = qword_1ED097CB0;
  if (!qword_1ED097CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CB0);
  }

  return result;
}

unint64_t sub_1E678DE8C()
{
  result = qword_1ED097CB8;
  if (!qword_1ED097CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CB8);
  }

  return result;
}

unint64_t sub_1E678DEE0()
{
  result = qword_1EE2EC278;
  if (!qword_1EE2EC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC278);
  }

  return result;
}

int *StandardLockupConfiguration.init(dynamicTypeSize:caption:artwork:title:subtitle:onSelection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v16 = sub_1E68B1DE0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for StandardLockupConfiguration(0);
  *(a8 + result[5]) = v13;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = v14;
  *(a8 + result[8]) = v15;
  v18 = (a8 + result[9]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t type metadata accessor for StandardLockupConfiguration(uint64_t a1)
{
  result = qword_1EE2EACC0;
  if (!qword_1EE2EACC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardLockupConfiguration.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1DE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StandardLockupConfiguration.caption.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration(0) + 20));
}

uint64_t StandardLockupConfiguration.artwork.getter()
{
  type metadata accessor for StandardLockupConfiguration(0);
}

uint64_t StandardLockupConfiguration.title.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration(0) + 28));
}

uint64_t StandardLockupConfiguration.subtitle.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardLockupConfiguration(0) + 32));
}

uint64_t StandardLockupConfiguration.onSelection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandardLockupConfiguration(0) + 36));

  return v1;
}

void sub_1E678E214(uint64_t a1)
{
  sub_1E68B1DE0();
  if (v1 <= 0x3F)
  {
    sub_1E677AAF8();
    if (v2 <= 0x3F)
    {
      sub_1E67482E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E678E2C4(uint64_t *a1)
{
  v63 = sub_1E68B1820();
  v2 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v3);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v69 = &v59 - v7;
  v73 = type metadata accessor for TextContent.Component(0);
  MEMORY[0x1EEE9AC00](v73, v8);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v59 - v14;
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v70 = *(v13 + 72);
    v61 = (v2 + 32);
    v60 = (v2 + 16);
    v59 = (v2 + 8);
    v74 = MEMORY[0x1E69E7CC0];
    v21 = 0xE000000000000000;
    v71 = &v59 - v14;
    v72 = v10;
    while (1)
    {
      sub_1E678E730(v20, v15);
      sub_1E678E730(v15, v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v35 = v10[1];
        v75 = *v10;
        v76 = v35;
        sub_1E67612A8();
        v36 = sub_1E68B26E0();
        v38 = v37;
        v40 = v39;
        v41 = v21;
        v42 = sub_1E68B2680();
        v66 = v43;
        v67 = v42;
        v68 = v44;
        v65 = v45;
        v46 = v40 & 1;
        v47 = v36;
        v48 = v38;
LABEL_9:
        sub_1E673F0D4(v47, v48, v46);

        sub_1E673F0D4(v18, v41, v19 & 1);

        goto LABEL_4;
      }

      v22 = *v61;
      v64 = v18;
      v23 = v69;
      v24 = v63;
      v22(v69, v10, v63);
      (*v60)(v62, v23, v24);
      v25 = sub_1E68B26D0();
      v27 = v26;
      v29 = v28;
      v30 = sub_1E68B2680();
      v66 = v31;
      v67 = v30;
      v68 = v32;
      v65 = v33;
      sub_1E673F0D4(v25, v27, v29 & 1);

      sub_1E673F0D4(v64, v21, v19 & 1);

      (*v59)(v69, v24);
LABEL_4:
      v21 = v66;
      v18 = v67;
      v74 = v65;
      v19 = v68;
      v15 = v71;
      sub_1E678E794(v71);
      v20 += v70;
      --v17;
      v10 = v72;
      if (!v17)
      {
        return v18;
      }
    }

    sub_1E68B2BA0();
    v49 = sub_1E68B26F0();
    v51 = v50;
    v41 = v21;
    v53 = v52;
    v54 = sub_1E68B2680();
    v66 = v55;
    v67 = v54;
    v68 = v56;
    v65 = v57;
    v46 = v53 & 1;
    v47 = v49;
    v48 = v51;
    goto LABEL_9;
  }

  v18 = 0;
  v74 = MEMORY[0x1E69E7CC0];
  return v18;
}

uint64_t sub_1E678E730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E678E794(uint64_t a1)
{
  v2 = type metadata accessor for TextContent.Component(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI10ActionViewO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E678E820(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E678E868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E678E8AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E678E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v16[0] = sub_1E678F9F0;
  v16[1] = v12;
  type metadata accessor for DataItemDescriptor(255, a3, a5, v13);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v16, FunctionTypeMetadata2, &v17);
  return v17;
}

uint64_t (*sub_1E678E994(uint64_t a1))(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = swift_allocObject();
  v6 = *(a1 + 32);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return sub_1E678F9B8;
}

double DataStoreView.init(descriptors:resolver:itemViewBuilder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for DataItemResolver(0, a6, a8, a4);

  v22 = DataItemResolver.__allocating_init(batchFetch:)(a2, a3);
  WitnessTable = swift_getWitnessTable();
  DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)(a1, &v22, a4, a5, a6, a7, v18, a10, &v23, WitnessTable);

  v20 = v24;
  result = *&v23;
  *a9 = v23;
  *(a9 + 16) = v20;
  return result;
}

uint64_t DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t **a9@<X8>, uint64_t a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for DataStore(0, a5, AssociatedConformanceWitness, v19);
  *a9 = sub_1E67822D0(a1, 10, a2, a7, a10);
  v20 = sub_1E678E8D4(a3, a4, a5, a6, AssociatedConformanceWitness, a8);
  v22 = v21;
  result = (*(*(a7 - 8) + 8))(a2, a7);
  a9[1] = v20;
  a9[2] = v22;
  return result;
}

double DataStoreView.init(descriptors:itemViewBuilder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  nullsub_5();
  v17 = type metadata accessor for NullDataItemResolver(0, a4, a6, v16);
  WitnessTable = swift_getWitnessTable();
  DataStoreView.init<A>(descriptors:resolver:itemViewBuilder:)(a1, v19, a2, a3, a4, a5, v17, a7, &v22, WitnessTable);
  v20 = v23;
  result = *&v22;
  *a8 = v22;
  *(a8 + 16) = v20;
  return result;
}

uint64_t DataStoreView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = a1[2];
  v6 = a1[4];
  v30 = type metadata accessor for DataItemDescriptor(255, v5, v6, a2);
  swift_getTupleTypeMetadata2();
  v7 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a1[3];
  sub_1E68B1D10();
  v27 = sub_1E68B1E40();
  v35 = v7;
  v36 = AssociatedTypeWitness;
  v37 = v27;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1E68B2D40();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = *(v3 + 2);
  v25 = *v3;
  sub_1E67820BC();
  v17 = swift_allocObject();
  v18 = a1[5];
  *&v19 = v6;
  *(&v19 + 1) = v18;
  *&v20 = v5;
  *(&v20 + 1) = v26;
  *(v17 + 16) = v20;
  *(v17 + 32) = v19;
  *(v17 + 48) = v25;
  *(v17 + 64) = v16;
  v21 = sub_1E678F6DC();
  v33 = v18;
  v34 = v21;

  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v32 = v22;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v23 = *(v29 + 8);
  v23(v11, v8);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v23)(v15, v8);
}

uint64_t sub_1E678F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a6;
  v60 = a5;
  v61 = a4;
  v59 = a3;
  v68 = a1;
  v69 = a2;
  v76 = a9;
  v16 = sub_1E68B3460();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a6;
  v20 = a8;
  v58 = a8;
  v67 = type metadata accessor for DataItemDescriptor(0, v19, a8, v21);
  v22 = *(v67 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v67, v24);
  v65 = &v57 - v25;
  v71 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v62 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1D10();
  v29 = a7;
  v57 = a7;
  v64 = sub_1E68B1E40();
  v72 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v30);
  v66 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v70 = &v57 - v34;
  v79[4] = a3;
  v79[5] = a4;
  v79[6] = a5;
  v35 = v63;
  v79[0] = v63;
  v79[1] = v29;
  v79[2] = v20;
  v79[3] = a10;
  v36 = type metadata accessor for DataStoreView(0, v79);
  v37 = sub_1E678E994(v36);
  v38 = v68;
  v39 = v69;
  (v37)(v68, v69);

  v40 = v65;
  v41 = v67;
  (*(v22 + 16))(v65, v39, v67);
  v42 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v43 = (v23 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 2) = v35;
  v45 = v57;
  v46 = v58;
  *(v44 + 3) = v57;
  *(v44 + 4) = v46;
  *(v44 + 5) = a10;
  (*(v22 + 32))(&v44[v42], v40, v41);
  v47 = &v44[v43];
  v48 = v61;
  *v47 = v59;
  v47[1] = v48;
  v47[2] = v60;
  *&v44[(v43 + 31) & 0xFFFFFFFFFFFFFFF8] = v38;

  v49 = v73;
  sub_1E68B3440();
  v50 = v66;
  v51 = v62;
  sub_1E68B29E0();

  (*(v74 + 8))(v49, v75);
  (*(v71 + 8))(v51, v45);
  v52 = sub_1E678F6DC();
  v77 = a10;
  v78 = v52;
  v53 = v64;
  swift_getWitnessTable();
  v54 = v70;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v55 = *(v72 + 8);
  v55(v50, v53);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v55)(v54, v53);
}

uint64_t sub_1E678F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a5;
  v8[2] = a1;
  sub_1E68B3430();
  v8[7] = sub_1E68B3420();
  v10 = sub_1E68B3400();

  return MEMORY[0x1EEE6DFA0](sub_1E678F5FC, v10, v9);
}

uint64_t sub_1E678F5FC()
{
  v1 = v0[6];
  v2 = v0[5];

  v4 = type metadata accessor for DataItemDescriptor(0, v2, v1, v3);
  sub_1E678B37C(v4);
  sub_1E68B3500();
  sub_1E6781C68(v0[4]);
  v5 = v0[1];

  return v5();
}

unint64_t sub_1E678F6DC()
{
  result = qword_1EE2EA868;
  if (!qword_1EE2EA868)
  {
    sub_1E68B1D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA868);
  }

  return result;
}

uint64_t sub_1E678F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E678F7B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E678F7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E678F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v20 = v4[3];
  v7 = v4[4];
  v8 = *(type metadata accessor for DataItemDescriptor(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v4 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = *(v4 + v11);
  v17 = swift_task_alloc();
  *(v5 + 16) = v17;
  *v17 = v5;
  v17[1] = sub_1E67825C0;

  return sub_1E678F558(v4 + v9, v13, v14, v15, v16, v6, v20, v7);
}

uint64_t sub_1E678F9B8(uint64_t a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

uint64_t View.standardLockupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1E68B27B0();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1E678FAF8()
{
  result = qword_1EE2EA5C8;
  if (!qword_1EE2EA5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CC0, &unk_1E68B8900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5C8);
  }

  return result;
}

uint64_t sub_1E678FB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component(0) - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_1E678E730(v15, v12);
        sub_1E678E730(v16, v7);
        v18 = sub_1E6793C74(v12, v7);
        sub_1E678E794(v7);
        sub_1E678E794(v12);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1E678FCD0(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  v6 = sub_1E68B17D0();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextContent.Component(0);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v40 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E68B17E0();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E68B17F0();
  v18 = sub_1E6793C2C(&qword_1EE2EDEA8, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  v19 = sub_1E68B3670();
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
    return v20;
  }

  v43 = MEMORY[0x1E69E7CC0];
  v37 = v19;
  sub_1E68B0F30(0, v19 & ~(v19 >> 63), 0);
  v20 = v43;
  v39 = v17;
  sub_1E68B3660();
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = v18;
    v41 = v16;
    v21 = 0;
    v32 = (v33 + 2);
    ++v33;
    v31 = v9;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v23 = v5;
      v24 = sub_1E68B36F0();
      (*v32)(v9);
      v24(v42, 0);
      v35(v9);
      if (v4)
      {
        goto LABEL_13;
      }

      v4 = 0;
      (*v33)(v9, v6);
      v43 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1E68B0F30((v25 > 1), v26 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v26 + 1;
      sub_1E67935FC(v40, v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26);
      v5 = v23;
      sub_1E68B36A0();
      ++v21;
      v9 = v31;
      if (v22 == v37)
      {
        (*(v29 + 8))(v41, v30);
        return v20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  (*v33)(v9, v6);
  (*(v29 + 8))(v41, v30);

  __break(1u);
  return result;
}

uint64_t sub_1E67900C8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_1E68B2DB0();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1E68B0F74(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v12 = 0;
    v11 = v31;
    v13 = v28;
    if (v28 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    v23 = v27 + 32;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v30 = a3 + v12;
      v15 = v9;
      v16 = v29;
      v25(&v30);
      v29 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v31 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E68B0F74((v17 > 1), v18 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18;
      v9 = v15;
      (*(v27 + 32))(v19, v15, v24);
      if (v28 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

FitnessCanvasUI::TextContent __swiftcall TextContent.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
  v5 = *(type metadata accessor for TextContent.Component(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E68B74F0;
  v8 = (v7 + v6);
  *v8 = countAndFlagsBits;
  v8[1] = object;
  result.components._rawValue = swift_storeEnumTagMultiPayload();
  *v4 = v7;
  return result;
}

uint64_t type metadata accessor for TextContent.Component(uint64_t a1)
{
  result = qword_1EE2EC430;
  if (!qword_1EE2EC430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6790430(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D58, &qword_1E68B8D80);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v2);
  v37 = &v34 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D60, &qword_1E68B8D88);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v38 = &v34 - v5;
  v6 = sub_1E68B1820();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D68, &qword_1E68B8D90);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for TextContent.Component(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D70, &qword_1E68B8D98);
  v17 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v18);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6793ADC();
  sub_1E68B3BD0();
  sub_1E678E730(v45, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v39;
      v23 = v36;
      v24 = v16;
      v25 = v40;
      (*(v39 + 32))(v36, v24, v40);
      v48 = 1;
      sub_1E6793B84();
      v26 = v38;
      v27 = v46;
      sub_1E68B3A30();
      sub_1E6793C2C(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      v28 = v44;
      sub_1E68B3AB0();
      (*(v42 + 8))(v26, v28);
      (*(v22 + 8))(v23, v25);
      return (*(v17 + 8))(v20, v27);
    }

    else
    {
      v49 = 2;
      sub_1E6793B30();
      v31 = v37;
      v32 = v46;
      sub_1E68B3A30();
      v33 = v43;
      sub_1E68B3A70();

      (*(v41 + 8))(v31, v33);
      return (*(v17 + 8))(v20, v32);
    }
  }

  else
  {
    v47 = 0;
    sub_1E6793BD8();
    v30 = v46;
    sub_1E68B3A30();
    sub_1E68B3A70();

    (*(v35 + 8))(v12, v9);
    return (*(v17 + 8))(v20, v30);
  }
}

uint64_t sub_1E67909D8(uint64_t a1)
{
  v2 = sub_1E68B1820();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextContent.Component(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E678E730(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      MEMORY[0x1E69523D0](1);
      sub_1E6793C2C(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E68B3140();
      return (*(v3 + 8))(v6, v2);
    }

    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E69523D0](v13);
  sub_1E68B31F0();
}

uint64_t sub_1E6790BBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D98, &qword_1E68B8DA0);
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v3);
  v78 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DA0, &qword_1E68B8DA8);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v73 = &v62 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DA8, &qword_1E68B8DB0);
  v68 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v8);
  v75 = &v62 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DB0, &unk_1E68B8DB8);
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for TextContent.Component(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v62 - v27;
  v29 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E6793ADC();
  v30 = v79;
  sub_1E68B3BC0();
  if (!v30)
  {
    v63 = v24;
    v64 = v16;
    v65 = v20;
    v31 = v75;
    v32 = v76;
    v66 = 0;
    v33 = v28;
    v79 = v13;
    v34 = v74;
    v36 = v77;
    v35 = v78;
    v37 = sub_1E68B3A10();
    v38 = (2 * *(v37 + 16)) | 1;
    v81 = v37;
    v82 = v37 + 32;
    v83 = 0;
    v84 = v38;
    v39 = sub_1E676F5C0();
    if (v39 == 3 || v83 != v84 >> 1)
    {
      v44 = sub_1E68B3870();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v46 = v79;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
    }

    else if (v39)
    {
      v76 = v33;
      if (v39 == 1)
      {
        v85 = 1;
        sub_1E6793B84();
        v40 = v66;
        sub_1E68B3970();
        if (!v40)
        {
          sub_1E68B1820();
          sub_1E6793C2C(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
          v41 = v65;
          v42 = v70;
          v43 = v73;
          sub_1E68B3A00();
          (*(v69 + 8))(v43, v42);
          (*(v34 + 8))(v12, v36);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v76;
          v54 = v72;
LABEL_15:
          sub_1E67935FC(v41, v53);
          sub_1E67935FC(v53, v54);
          return __swift_destroy_boxed_opaque_existential_1(v80);
        }
      }

      else
      {
        v85 = 2;
        sub_1E6793B30();
        v51 = v66;
        sub_1E68B3970();
        v54 = v72;
        if (!v51)
        {
          v52 = v67;
          v58 = sub_1E68B39C0();
          v60 = v59;
          (*(v71 + 8))(v35, v52);
          (*(v34 + 8))(v12, v36);
          swift_unknownObjectRelease();
          v61 = v64;
          *v64 = v58;
          v61[1] = v60;
          swift_storeEnumTagMultiPayload();
          v41 = v61;
          v53 = v76;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v85 = 0;
      sub_1E6793BD8();
      v48 = v66;
      sub_1E68B3970();
      v53 = v33;
      if (!v48)
      {
        v49 = v12;
        v50 = sub_1E68B39C0();
        v66 = 0;
        v55 = v50;
        v57 = v56;
        (*(v68 + 8))(v31, v32);
        (*(v34 + 8))(v49, v36);
        swift_unknownObjectRelease();
        v41 = v63;
        *v63 = v55;
        *(v41 + 8) = v57;
        swift_storeEnumTagMultiPayload();
        v54 = v72;
        goto LABEL_15;
      }
    }

    (*(v34 + 8))(v12, v36);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_1E6791384(uint64_t a1)
{
  v2 = sub_1E6793B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67913C0(uint64_t a1)
{
  v2 = sub_1E6793B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E67913FC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x676E69727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1E6791454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E67945D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6791488(uint64_t a1)
{
  v2 = sub_1E6793ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67914C4(uint64_t a1)
{
  v2 = sub_1E6793ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791500(uint64_t a1)
{
  v2 = sub_1E6793B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E679153C(uint64_t a1)
{
  v2 = sub_1E6793B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791578(uint64_t a1)
{
  v2 = sub_1E6793BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67915B4(uint64_t a1)
{
  v2 = sub_1E6793BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6791620()
{
  sub_1E68B3B70();
  sub_1E67909D8(v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6791664(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E67909D8(v2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67916CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E679175C(uint64_t a1)
{
  v2 = sub_1E6791980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6791798(uint64_t a1)
{
  v2 = sub_1E6791980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CC8, &qword_1E68B8918);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6791980();

  sub_1E68B3BD0();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CD8, &qword_1E68B8920);
  sub_1E6793448(&qword_1ED097CE0, &qword_1ED097CE8, &unk_1E68B8D04, MEMORY[0x1E69E6300]);
  sub_1E68B3AB0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E6791980()
{
  result = qword_1ED097CD0;
  if (!qword_1ED097CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097CD0);
  }

  return result;
}

uint64_t TextContent.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  sub_1E6793184(v3, v1);
  return sub_1E68B3BB0();
}

uint64_t TextContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CF0, &qword_1E68B8928);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6791980();
  sub_1E68B3BC0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097CD8, &qword_1E68B8920);
    sub_1E6793448(&qword_1ED097CF8, &qword_1ED097D00, &unk_1E68B8CDC, MEMORY[0x1E69E6330]);
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E6791C0C()
{
  v1 = *v0;
  sub_1E68B3B70();
  sub_1E6793184(v3, v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6791C5C(uint64_t a1)
{
  v2 = *v1;
  sub_1E68B3B70();
  sub_1E6793184(v4, v2);
  return sub_1E68B3BB0();
}

void TextContent.init(attributedString:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08, &qword_1E68B8930);
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v3);
  v61 = &v50 - v4;
  v65 = sub_1E68B17E0();
  v5 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v6);
  v64 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E68B17D0();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v9);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D10, &qword_1E68B8938);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - v14;
  v16 = sub_1E68B17F0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50 - v23;
  v54 = a1;
  sub_1E68B1800();
  v52 = v17;
  v25 = *(v17 + 16);
  v51 = v24;
  v25(v20, v24, v16);
  v26 = MEMORY[0x1E69687C8];
  sub_1E6793C2C(&qword_1EE2EDEB0, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
  v50 = v20;
  sub_1E68B32C0();
  v27 = *(v12 + 44);
  sub_1E6793C2C(&qword_1EE2EDEA8, v26, MEMORY[0x1E69687E0]);
  v28 = 0;
  v63 = (v5 + 8);
  ++v56;
  v57 = (v8 + 16);
  v55 = (v8 + 8);
  v58 = v27;
  while (1)
  {
    v31 = v64;
    sub_1E68B3690();
    sub_1E6793C2C(&qword_1EE2EDEB8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v32 = v65;
    v33 = sub_1E68B3190();
    (*v63)(v31, v32);
    if (v33)
    {
      break;
    }

    v34 = sub_1E68B36F0();
    v35 = v59;
    v36 = v60;
    (*v57)(v59);
    v34(&v66, 0);
    v37 = v16;
    sub_1E68B36A0();
    swift_getKeyPath();
    sub_1E67934E4();
    v38 = v61;
    sub_1E68B17B0();

    swift_getKeyPath();
    sub_1E6793538();
    v39 = v62;
    sub_1E68B1900();

    (*v56)(v38, v39);
    (*v55)(v35, v36);
    if (v67)
    {
      sub_1E679358C(v66, v67, v68, v69, v70, v71);
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = __OFADD__(v28, v29);
    v28 += v29;
    v16 = v37;
    if (v30)
    {
      __break(1u);
      return;
    }
  }

  sub_1E6744A10(v15, &qword_1ED097D10, &qword_1E68B8938);
  v40 = *(v52 + 8);
  v40(v51, v16);
  if (v28 <= 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
    v46 = *(type metadata accessor for TextContent.Component(0) - 8);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1E68B74F0;
    v48 = sub_1E68B1820();
    v42 = v54;
    (*(*(v48 - 8) + 16))(v45 + v47, v54, v48);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v41 = v50;
    v42 = v54;
    v43 = sub_1E68B1800();
    MEMORY[0x1EEE9AC00](v43, v44);
    *(&v50 - 2) = v42;
    v45 = sub_1E678FCD0(sub_1E67935DC, (&v50 - 4));
    v40(v41, v16);
  }

  *v53 = v45;
  v49 = sub_1E68B1820();
  (*(*(v49 - 8) + 8))(v42, v49);
}

uint64_t sub_1E679241C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_1E68B18D0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC8, &qword_1E68B8DD0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08, &qword_1E68B8930);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  swift_getKeyPath();
  sub_1E67934E4();
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E6793538();
  sub_1E68B1900();

  (*(v9 + 8))(v12, v8);
  v13 = v24;
  if (v24)
  {
    v14 = v27;
    v15 = v28;
    v17 = v25;
    v16 = v26;
    v18 = v23;

    sub_1E679358C(v18, v13, v17, v16, v14, v15);
    v19 = v22;
    *v22 = v18;
    v19[1] = v13;
  }

  else
  {
    sub_1E68B17C0();
    sub_1E6793FCC();
    sub_1E68B1850();
    sub_1E6744A10(v7, &qword_1ED097DC8, &qword_1E68B8DD0);
    sub_1E68B1860();
  }

  type metadata accessor for TextContent.Component(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E67926D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
  v5 = *(type metadata accessor for TextContent.Component(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E68B74F0;
  v8 = (v7 + v6);
  *v8 = v3;
  v8[1] = v4;
  result = swift_storeEnumTagMultiPayload();
  *a2 = v7;
  return result;
}

uint64_t TextContent.appendInterpolation(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TextContent.Component(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E68B1820();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1E6792FAC(0, v9[2] + 1, 1, v9);
    *v1 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1E6792FAC((v11 > 1), v12 + 1, 1, v9);
    *v1 = v9;
  }

  v9[2] = v12 + 1;
  result = sub_1E67935FC(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12);
  *v1 = v9;
  return result;
}

uint64_t sub_1E6792964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TextContent.Component(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();
  v10 = *v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1E6792FAC(0, v10[2] + 1, 1, v10);
    *v3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1E6792FAC((v12 > 1), v13 + 1, 1, v10);
    *v3 = v10;
  }

  v10[2] = v13 + 1;
  result = sub_1E67935FC(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  *v3 = v10;
  return result;
}

uint64_t TextContent.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for TextContent.Component(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1E68B3AE0();
  v9 = v16;
  *v8 = v15;
  v8[1] = v9;
  swift_storeEnumTagMultiPayload();
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1E6792FAC(0, v10[2] + 1, 1, v10);
    *v3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1E6792FAC((v12 > 1), v13 + 1, 1, v10);
    *v3 = v10;
  }

  v10[2] = v13 + 1;
  result = sub_1E67935FC(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
  *v3 = v10;
  return result;
}

uint64_t sub_1E6792C58(void *a1)
{
  v3 = type metadata accessor for TextContent.Component(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[1];
  *v6 = *a1;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v8 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1E6792FAC(0, v8[2] + 1, 1, v8);
    *v1 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1E6792FAC((v10 > 1), v11 + 1, 1, v8);
    *v1 = v8;
  }

  v8[2] = v11 + 1;
  result = sub_1E67935FC(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  *v1 = v8;
  return result;
}

char *sub_1E6792DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD8, &unk_1E68B8DE0);
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

char *sub_1E6792EB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD0, &qword_1E68B8DD8);
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

void *sub_1E6792FAC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097870, &qword_1E68B8910);
  v10 = *(type metadata accessor for TextContent.Component(0) - 8);
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
  v15 = *(type metadata accessor for TextContent.Component(0) - 8);
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

uint64_t sub_1E6793184(uint64_t a1, uint64_t a2)
{
  v26 = sub_1E68B1820();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v4);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextContent.Component(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v23 - v14;
  v16 = *(a2 + 16);
  result = MEMORY[0x1E69523D0](v16, v13);
  if (v16)
  {
    v18 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    v23 = (v3 + 8);
    v24 = (v3 + 32);
    while (1)
    {
      sub_1E678E730(v18, v15);
      sub_1E678E730(v15, v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        MEMORY[0x1E69523D0](2);
        sub_1E68B31F0();
LABEL_9:

        goto LABEL_4;
      }

      v20 = v25;
      v21 = v26;
      (*v24)(v25, v10, v26);
      MEMORY[0x1E69523D0](1);
      sub_1E6793C2C(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E68B3140();
      (*v23)(v20, v21);
LABEL_4:
      result = sub_1E678E794(v15);
      v18 += v19;
      if (!--v16)
      {
        return result;
      }
    }

    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1E6793448(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CD8, &qword_1E68B8920);
    sub_1E6793C2C(a2, type metadata accessor for TextContent.Component, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E67934E4()
{
  result = qword_1EE2EDF38;
  if (!qword_1EE2EDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF38);
  }

  return result;
}

unint64_t sub_1E6793538()
{
  result = qword_1EE2EBC70[0];
  if (!qword_1EE2EBC70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EBC70);
  }

  return result;
}

void sub_1E679358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1E67935FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextContent.Component(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6793664()
{
  result = qword_1EE2EC390[0];
  if (!qword_1EE2EC390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC390);
  }

  return result;
}

unint64_t sub_1E67936BC()
{
  result = qword_1ED097D18;
  if (!qword_1ED097D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D18);
  }

  return result;
}

unint64_t sub_1E6793714()
{
  result = qword_1ED097D20;
  if (!qword_1ED097D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D20);
  }

  return result;
}

unint64_t sub_1E679376C()
{
  result = qword_1ED097D28;
  if (!qword_1ED097D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D28);
  }

  return result;
}

unint64_t sub_1E67937D0()
{
  result = qword_1ED097D30;
  if (!qword_1ED097D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D30);
  }

  return result;
}

uint64_t sub_1E679383C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E6793884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6793920(uint64_t a1)
{
  result = sub_1E68B1820();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E67939D8()
{
  result = qword_1ED097D40;
  if (!qword_1ED097D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D40);
  }

  return result;
}

unint64_t sub_1E6793A30()
{
  result = qword_1ED097D48;
  if (!qword_1ED097D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D48);
  }

  return result;
}

unint64_t sub_1E6793A88()
{
  result = qword_1ED097D50;
  if (!qword_1ED097D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D50);
  }

  return result;
}

unint64_t sub_1E6793ADC()
{
  result = qword_1ED097D78;
  if (!qword_1ED097D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D78);
  }

  return result;
}

unint64_t sub_1E6793B30()
{
  result = qword_1ED097D80;
  if (!qword_1ED097D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D80);
  }

  return result;
}

unint64_t sub_1E6793B84()
{
  result = qword_1ED097D88;
  if (!qword_1ED097D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D88);
  }

  return result;
}

unint64_t sub_1E6793BD8()
{
  result = qword_1ED097D90;
  if (!qword_1ED097D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097D90);
  }

  return result;
}

uint64_t sub_1E6793C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6793C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E68B1820();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextContent.Component(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v35 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC0, &qword_1E68B8DC8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - v22;
  v25 = (&v35 + *(v24 + 56) - v22);
  sub_1E678E730(a1, &v35 - v22);
  sub_1E678E730(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E678E730(v23, v19);
    v31 = *v19;
    v30 = v19[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E678E730(v23, v11);
    v31 = *v11;
    v30 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_8:
      if (v31 == *v25 && v30 == v25[1])
      {
      }

      else
      {
        v33 = sub_1E68B3B00();

        if ((v33 & 1) == 0)
        {
          sub_1E678E794(v23);
LABEL_16:
          v28 = 0;
          return v28 & 1;
        }
      }

      sub_1E678E794(v23);
      v28 = 1;
      return v28 & 1;
    }

LABEL_6:

LABEL_15:
    sub_1E6744A10(v23, &qword_1ED097DC0, &qword_1E68B8DC8);
    goto LABEL_16;
  }

  sub_1E678E730(v23, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v36 + 8))(v15, v4);
    goto LABEL_15;
  }

  v27 = v36;
  (*(v36 + 32))(v7, v25, v4);
  v28 = sub_1E68B17A0();
  v29 = *(v27 + 8);
  v29(v7, v4);
  v29(v15, v4);
  sub_1E678E794(v23);
  return v28 & 1;
}

unint64_t sub_1E6793FCC()
{
  result = qword_1EE2EA468;
  if (!qword_1EE2EA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097DC8, &qword_1E68B8DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA468);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextContent.Component.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextContent.Component.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E67941B4()
{
  result = qword_1ED097DE0;
  if (!qword_1ED097DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DE0);
  }

  return result;
}

unint64_t sub_1E679420C()
{
  result = qword_1ED097DE8;
  if (!qword_1ED097DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DE8);
  }

  return result;
}

unint64_t sub_1E6794264()
{
  result = qword_1ED097DF0;
  if (!qword_1ED097DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DF0);
  }

  return result;
}

unint64_t sub_1E67942BC()
{
  result = qword_1ED097DF8;
  if (!qword_1ED097DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097DF8);
  }

  return result;
}

unint64_t sub_1E6794314()
{
  result = qword_1ED097E00;
  if (!qword_1ED097E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E00);
  }

  return result;
}

unint64_t sub_1E679436C()
{
  result = qword_1ED097E08;
  if (!qword_1ED097E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E08);
  }

  return result;
}

unint64_t sub_1E67943C4()
{
  result = qword_1ED097E10;
  if (!qword_1ED097E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E10);
  }

  return result;
}

unint64_t sub_1E679441C()
{
  result = qword_1ED097E18;
  if (!qword_1ED097E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E18);
  }

  return result;
}

unint64_t sub_1E6794474()
{
  result = qword_1ED097E20;
  if (!qword_1ED097E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E20);
  }

  return result;
}

unint64_t sub_1E67944CC()
{
  result = qword_1ED097E28;
  if (!qword_1ED097E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E28);
  }

  return result;
}

unint64_t sub_1E6794524()
{
  result = qword_1ED097E30;
  if (!qword_1ED097E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E30);
  }

  return result;
}

unint64_t sub_1E679457C()
{
  result = qword_1ED097E38;
  if (!qword_1ED097E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E38);
  }

  return result;
}

uint64_t sub_1E67945D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2AC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t VerticalMonogramStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_1E68B1EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StandardLockupConfiguration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097E40, &qword_1E68B9270);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v20 - v14;
  sub_1E677B3B8(a1, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1E677B41C(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097E48, &qword_1E68B9278);
  sub_1E6794C7C();
  sub_1E68B2C20();
  v18 = &v15[*(v12 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E10, &unk_1E68B4740);
  sub_1E68B1F50();
  *v18 = swift_getKeyPath();
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E67951E4();
  sub_1E677D800();
  sub_1E68B2790();
  (*(v4 + 8))(v7, v3);
  return sub_1E6744A10(v15, &qword_1ED097E40, &qword_1E68B9270);
}

double sub_1E67949B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B21C0();
  v29 = 0;
  sub_1E6794DEC(a1, &v14);
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v31 = v14;
  v32 = v15;
  v45[10] = v24;
  v45[11] = v25;
  v45[12] = v26;
  v45[6] = v20;
  v45[7] = v21;
  v45[8] = v22;
  v45[9] = v23;
  v45[2] = v16;
  v45[3] = v17;
  v45[4] = v18;
  v45[5] = v19;
  v44 = v27;
  v46 = v27;
  v45[0] = v14;
  v45[1] = v15;
  sub_1E67612FC(&v31, v13, &qword_1ED097E98, &qword_1E68B9328);
  sub_1E6744A10(v45, &qword_1ED097E98, &qword_1E68B9328);
  *&v28[167] = v41;
  *&v28[183] = v42;
  *&v28[199] = v43;
  v28[215] = v44;
  *&v28[103] = v37;
  *&v28[119] = v38;
  *&v28[135] = v39;
  *&v28[151] = v40;
  *&v28[39] = v33;
  *&v28[55] = v34;
  *&v28[71] = v35;
  *&v28[87] = v36;
  *&v28[7] = v31;
  *&v28[23] = v32;
  LOBYTE(a1) = v29;
  sub_1E68B2E60();
  sub_1E68B1C50();
  *&v30[7] = v14;
  *&v30[23] = v15;
  *&v30[39] = v16;
  v5 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v5;
  *(a2 + 209) = *&v28[192];
  v6 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v6;
  v7 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v7;
  v8 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v8;
  v9 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v9;
  v10 = *&v28[16];
  *(a2 + 17) = *v28;
  *(a2 + 33) = v10;
  v11 = *&v30[16];
  *(a2 + 233) = *v30;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 225) = *&v28[208];
  *(a2 + 249) = v11;
  result = *&v30[32];
  *(a2 + 265) = *&v30[32];
  *(a2 + 280) = *&v30[47];
  *(a2 + 288) = 0;
  return result;
}

unint64_t sub_1E6794C7C()
{
  result = qword_1ED097E50;
  if (!qword_1ED097E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E48, &qword_1E68B9278);
    sub_1E6794D34();
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E50);
  }

  return result;
}

unint64_t sub_1E6794D34()
{
  result = qword_1ED097E58;
  if (!qword_1ED097E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E60, &qword_1E68B9280);
    sub_1E673F530(&qword_1ED097E68, &qword_1ED097E70, &qword_1E68B9288, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E58);
  }

  return result;
}

uint64_t sub_1E6794DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardLockupConfiguration(0);
  v36 = *(a1 + v4[6]);

  sub_1E68B2E80();
  sub_1E68B1C50();
  v34 = v55;
  v35 = v53;
  v32 = v58;
  v33 = v57;
  v61 = 1;
  v60 = v54;
  v59 = v56;
  v46[0] = *(a1 + v4[7]);

  v5 = sub_1E678E2C4(v46);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  KeyPath = swift_getKeyPath();
  v13 = v9 & 1;
  LOBYTE(v46[0]) = v9 & 1;
  LOBYTE(v44[0]) = 0;
  v14 = *(a1 + v4[8]);
  if (v14)
  {
    v46[0] = *(a1 + v4[8]);
    v15 = sub_1E678E2C4(v46);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = swift_getKeyPath();
    LOBYTE(v46[0]) = v19 & 1;
    LOBYTE(v44[0]) = 0;
    v23 = v19 & 1;
    v24 = 256;
    v14 = 2;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
  }

  v25 = v61;
  v26 = v60;
  v27 = v59;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  LOBYTE(v39) = v13;
  *(&v39 + 1) = v11;
  *v40 = 256;
  *&v40[8] = KeyPath;
  *&v40[16] = 2;
  v40[24] = 0;
  *&v41 = v15;
  *(&v41 + 1) = v17;
  *&v42 = v23;
  *(&v42 + 1) = v21;
  *v43 = v24;
  *&v43[8] = v22;
  *&v43[16] = v14;
  v43[24] = 0;
  *&v37[48] = *&v43[9];
  *&v37[39] = *v43;
  *&v37[23] = v42;
  *&v37[7] = v41;
  *a2 = v36;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 19) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = v25;
  *(a2 + 40) = v35;
  *(a2 + 48) = v26;
  *(a2 + 56) = v34;
  *(a2 + 64) = v27;
  *(a2 + 72) = v33;
  *(a2 + 80) = v32;
  v28 = v38;
  v29 = v39;
  v30 = *v40;
  *(a2 + 129) = *&v40[9];
  *(a2 + 120) = v30;
  *(a2 + 104) = v29;
  *(a2 + 88) = v28;
  *(a2 + 193) = *&v37[48];
  *(a2 + 177) = *&v37[32];
  *(a2 + 161) = *&v37[16];
  *(a2 + 145) = *v37;
  v44[0] = v15;
  v44[1] = v17;
  v44[2] = v23;
  v44[3] = v21;
  v44[4] = v24;
  v44[5] = v22;
  v44[6] = v14;
  v45 = 0;

  sub_1E67612FC(&v38, v46, &qword_1ED096E38, &unk_1E68B76E0);
  sub_1E67612FC(&v41, v46, &qword_1ED096E00, &unk_1E68B4730);
  sub_1E6744A10(v44, &qword_1ED096E00, &unk_1E68B4730);
  v46[0] = v5;
  v46[1] = v7;
  v47 = v13;
  v48 = v11;
  v49 = 256;
  v50 = KeyPath;
  v51 = 2;
  v52 = 0;
  sub_1E6744A10(v46, &qword_1ED096E38, &unk_1E68B76E0);
}

uint64_t sub_1E679511C(uint64_t a1)
{
  v2 = sub_1E68B1F60();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1E68B1FF0();
}

unint64_t sub_1E67951E4()
{
  result = qword_1ED097E78;
  if (!qword_1ED097E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E40, &qword_1E68B9270);
    sub_1E673F530(&qword_1ED097E80, &qword_1ED097E88, &qword_1E68B92C0, MEMORY[0x1E697D680]);
    sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10, &unk_1E68B4740, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E78);
  }

  return result;
}

unint64_t sub_1E67952E4(uint64_t a1)
{
  result = sub_1E679530C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E679530C()
{
  result = qword_1ED097E90;
  if (!qword_1ED097E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097E90);
  }

  return result;
}

int *StandardActionLockupConfiguration.init(dynamicTypeSize:caption:title:subtitle:artwork:primaryAction:secondaryAction:onSelection:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = sub_1E68B1DE0();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for StandardActionLockupConfiguration(0);
  *(a9 + result[5]) = v16;
  *(a9 + result[6]) = v17;
  *(a9 + result[7]) = v18;
  *(a9 + result[8]) = a5;
  *(a9 + result[9]) = a6;
  *(a9 + result[10]) = a7;
  v21 = (a9 + result[11]);
  *v21 = a8;
  v21[1] = a10;
  return result;
}

uint64_t type metadata accessor for StandardActionLockupConfiguration(uint64_t a1)
{
  result = qword_1EE2EAB20;
  if (!qword_1EE2EAB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardActionLockupConfiguration.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E68B1DE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StandardActionLockupConfiguration.caption.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration(0) + 20));
}

uint64_t StandardActionLockupConfiguration.title.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration(0) + 24));
}

uint64_t StandardActionLockupConfiguration.subtitle.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StandardActionLockupConfiguration(0) + 28));
}

uint64_t StandardActionLockupConfiguration.artwork.getter()
{
  type metadata accessor for StandardActionLockupConfiguration(0);
}

uint64_t StandardActionLockupConfiguration.primaryAction.getter()
{
  type metadata accessor for StandardActionLockupConfiguration(0);
}

uint64_t StandardActionLockupConfiguration.secondaryAction.getter()
{
  type metadata accessor for StandardActionLockupConfiguration(0);
}

uint64_t StandardActionLockupConfiguration.onSelection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StandardActionLockupConfiguration(0) + 44));

  return v1;
}

void sub_1E67956D8(uint64_t a1)
{
  sub_1E68B1DE0();
  if (v1 <= 0x3F)
  {
    sub_1E677AAF8();
    if (v2 <= 0x3F)
    {
      sub_1E67482E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HorizontalStackStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1E68B2400();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E68B1EB0();
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StandardLockupConfiguration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA0, &qword_1E68B93D0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA8, &qword_1E68B93D8);
  MEMORY[0x1EEE9AC00](v30, v19);
  v21 = &v28 - v20;
  v22 = *v2;
  *v21 = sub_1E68B2140();
  *(v21 + 1) = 0;
  v21[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB0, &qword_1E68B93E0);
  sub_1E677B3B8(a1, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = swift_allocObject();
  sub_1E677B41C(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v36 = v22;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB8, &qword_1E68B93E8);
  sub_1E673F530(&qword_1ED097EC0, &qword_1ED097EB8, &qword_1E68B93E8, MEMORY[0x1E6981870]);
  sub_1E68B2C20();
  v18[*(v15 + 36)] = 0;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E6795C54();
  sub_1E677D800();
  v25 = v31;
  sub_1E68B2790();
  (*(v32 + 8))(v10, v25);
  sub_1E6744A10(v18, &qword_1ED097EA0, &qword_1E68B93D0);
  v26 = v29;
  sub_1E68B23F0();
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8, &qword_1E68B93D8, MEMORY[0x1E69817F8]);
  sub_1E68B2920();
  (*(v33 + 8))(v26, v35);
  return sub_1E6744A10(v21, &qword_1ED097EA8, &qword_1E68B93D8);
}

uint64_t sub_1E6795BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = sub_1E68B21D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EF0, &qword_1E68B9478);
  return sub_1E6795D38(a1, a2 + *(v6 + 44), a3);
}

unint64_t sub_1E6795C54()
{
  result = qword_1ED097EC8;
  if (!qword_1ED097EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097EA0, &qword_1E68B93D0);
    sub_1E673F530(&qword_1ED097ED0, &qword_1ED097ED8, &unk_1E68B93F0, MEMORY[0x1E697D680]);
    sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097EC8);
  }

  return result;
}

uint64_t sub_1E6795D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v28[1] = a2;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EF8, &qword_1E68B9480);
  MEMORY[0x1EEE9AC00](v28[0], v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F00, &qword_1E68B9488);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F08, &qword_1E68B9490);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v28 - v14);
  v16 = sub_1E68B1DE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(type metadata accessor for StandardLockupConfiguration(0) + 24));
  v30 = a1;
  (*(v17 + 104))(v20, *MEMORY[0x1E697E6C0], v16);
  LOBYTE(a1) = sub_1E68B1DD0();
  (*(v17 + 8))(v20, v16);
  if (a1)
  {
    *v15 = sub_1E68B2140();
    v15[1] = a3;
    *(v15 + 16) = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F28, &qword_1E68B94A0);
    sub_1E6796AA4(v21, sub_1E67978D8, v29, v15 + *(v22 + 44));
    sub_1E67612FC(v15, v11, &qword_1ED097F08, &qword_1E68B9490);
    swift_storeEnumTagMultiPayload();
    sub_1E673F530(&qword_1ED097F18, &qword_1ED097F08, &qword_1E68B9490, MEMORY[0x1E69817F8]);
    sub_1E673F530(&qword_1ED097F20, &qword_1ED097EF8, &qword_1E68B9480, MEMORY[0x1E6981870]);
    sub_1E68B2210();
    v23 = v15;
    v24 = &qword_1ED097F08;
    v25 = &qword_1E68B9490;
  }

  else
  {
    *v7 = sub_1E68B21D0();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F10, &qword_1E68B9498);
    sub_1E6796F08(v21, sub_1E67978D8, v29, &v7[*(v26 + 44)], a3);
    sub_1E67612FC(v7, v11, &qword_1ED097EF8, &qword_1E68B9480);
    swift_storeEnumTagMultiPayload();
    sub_1E673F530(&qword_1ED097F18, &qword_1ED097F08, &qword_1E68B9490, MEMORY[0x1E69817F8]);
    sub_1E673F530(&qword_1ED097F20, &qword_1ED097EF8, &qword_1E68B9480, MEMORY[0x1E6981870]);
    sub_1E68B2210();
    v23 = v7;
    v24 = &qword_1ED097EF8;
    v25 = &qword_1E68B9480;
  }

  return sub_1E6744A10(v23, v24, v25);
}

uint64_t sub_1E6796178@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = sub_1E68B21D0();
  v42 = 0;
  sub_1E679673C(a1, &v29);
  v52 = *&v30[112];
  v53 = *&v30[128];
  v48 = *&v30[48];
  v49 = *&v30[64];
  v50 = *&v30[80];
  v51 = *&v30[96];
  v44 = v29;
  v45 = *v30;
  v46 = *&v30[16];
  v47 = *&v30[32];
  v55[8] = *&v30[112];
  v55[9] = *&v30[128];
  v55[4] = *&v30[48];
  v55[5] = *&v30[64];
  v55[6] = *&v30[80];
  v55[7] = *&v30[96];
  v55[0] = v29;
  v55[1] = *v30;
  v54 = v30[144];
  v56 = v30[144];
  v55[2] = *&v30[16];
  v55[3] = *&v30[32];
  sub_1E67612FC(&v44, __src, &qword_1ED097970, &unk_1E68B78C0);
  sub_1E6744A10(v55, &qword_1ED097970, &unk_1E68B78C0);
  *&v41[119] = v51;
  *&v41[135] = v52;
  *&v41[151] = v53;
  *&v41[55] = v47;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[7] = v44;
  *&v41[23] = v45;
  v41[167] = v54;
  *&v41[39] = v46;
  v3 = v42;
  sub_1E68B2E90();
  sub_1E68B1F30();
  *(&v43[6] + 7) = *&v43[21];
  *(&v43[8] + 7) = *&v43[23];
  *(&v43[10] + 7) = *&v43[25];
  *(&v43[12] + 7) = *&v43[27];
  *(v43 + 7) = *&v43[15];
  *(&v43[2] + 7) = *&v43[17];
  *(&v43[4] + 7) = *&v43[19];
  v4 = sub_1E68B2BA0();
  v5 = sub_1E68B2620();
  KeyPath = swift_getKeyPath();
  sub_1E68B2EA0();
  sub_1E68B1F30();
  *(&__src[16] + 1) = *&v41[112];
  *(&__src[18] + 1) = *&v41[128];
  *(&__src[20] + 1) = *&v41[144];
  *(&__src[8] + 1) = *&v41[48];
  *(&__src[10] + 1) = *&v41[64];
  *(&__src[12] + 1) = *&v41[80];
  *(&__src[14] + 1) = *&v41[96];
  *(&__src[2] + 1) = *v41;
  *(&__src[4] + 1) = *&v41[16];
  *(&__src[6] + 1) = *&v41[32];
  *(&__src[33] + 1) = *&v43[10];
  *(&__src[35] + 1) = *&v43[12];
  *(&__src[31] + 1) = *&v43[8];
  *(&__src[23] + 1) = *v43;
  *(&__src[25] + 1) = *&v43[2];
  *(&__src[27] + 1) = *&v43[4];
  __src[0] = v8;
  __src[1] = 0;
  LOBYTE(__src[2]) = v3;
  *(&__src[22] + 1) = *&v41[160];
  __src[37] = *(&v43[13] + 7);
  *(&__src[29] + 1) = *&v43[6];
  LOBYTE(__src[38]) = 0;
  memcpy(__dst, __src, 0x131uLL);
  *&v20[104] = v17;
  *&v20[88] = v16;
  *&v20[72] = v15;
  *&v20[56] = v14;
  *&v20[24] = v12;
  *&v19 = v4;
  *(&v19 + 1) = KeyPath;
  *v20 = v5;
  *&v20[8] = v11;
  *&v20[40] = v13;
  *&__dst[51] = *&v20[80];
  *&__dst[53] = *&v20[96];
  *&__dst[39] = v19;
  *&__dst[41] = *v20;
  *&__dst[43] = *&v20[16];
  *&__dst[45] = *&v20[32];
  *&__dst[47] = *&v20[48];
  *&__dst[49] = *&v20[64];
  __dst[55] = *(&v17 + 1);
  memcpy(a2, __dst, 0x1C0uLL);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v11;
  v23 = v12;
  v21[0] = v4;
  v21[1] = KeyPath;
  v21[2] = v5;
  v24 = v13;
  sub_1E67612FC(__src, &v29, &qword_1ED097978, &qword_1E68B9530);
  sub_1E67612FC(&v19, &v29, qword_1ED097F88, &qword_1E68B9538);
  sub_1E6744A10(v21, qword_1ED097F88, &qword_1E68B9538);
  *&v30[113] = *&v41[112];
  *&v30[129] = *&v41[128];
  v31 = *&v41[144];
  *&v30[49] = *&v41[48];
  *&v30[65] = *&v41[64];
  *&v30[81] = *&v41[80];
  *&v30[97] = *&v41[96];
  *&v30[1] = *v41;
  *&v30[17] = *&v41[16];
  *&v30[33] = *&v41[32];
  v38 = *&v43[10];
  *v39 = *&v43[12];
  v37 = *&v43[8];
  v33 = *v43;
  v34 = *&v43[2];
  v35 = *&v43[4];
  v29 = v8;
  v30[0] = v3;
  v32 = *&v41[160];
  *&v39[15] = *(&v43[13] + 7);
  v36 = *&v43[6];
  v40 = 0;
  return sub_1E6744A10(&v29, &qword_1ED097978, &qword_1E68B9530);
}

uint64_t sub_1E679673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StandardLockupConfiguration(0);
  if (*(a1 + v4[5]))
  {
    v44 = *(a1 + v4[5]);
    v5 = sub_1E678E2C4(&v44);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v40 = v7;
    v41 = v5;
    v39 = v9 & 1;
    sub_1E673F26C(v5, v7, v9 & 1);
    v43 = v11;

    v42 = KeyPath;

    v38 = 2;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v43 = 0;
    v42 = 0;
    v38 = 0;
  }

  v44 = *(a1 + v4[7]);

  v13 = sub_1E678E2C4(&v44);
  v31 = v14;
  v32 = v13;
  v16 = v15;
  v33 = v17;

  v30 = swift_getKeyPath();
  if (*(a1 + v4[8]))
  {
    v44 = *(a1 + v4[8]);
    v18 = sub_1E678E2C4(&v44);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = swift_getKeyPath();
    v37 = v18;
    v35 = v20;
    v29 = v22 & 1;
    sub_1E673F26C(v18, v20, v22 & 1);
    v34 = v24;

    v26 = v25;

    v36 = 2;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v29 = 0;
    v26 = 0;
  }

  LOBYTE(v44) = v16 & 1;
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v41, v40, v39, v43, v42);
  sub_1E673F26C(v32, v31, v16 & 1);

  sub_1E677EFE4(v37, v35, v29, v34, v26);
  sub_1E677F034(v41, v40, v39, v43, v42);
  sub_1E677F034(v37, v35, v29, v34, v26);
  sub_1E673F0D4(v32, v31, v16 & 1);

  v27 = v44;
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39;
  *(a2 + 24) = v43;
  *(a2 + 32) = v42;
  *(a2 + 40) = v38;
  *(a2 + 48) = 0;
  *(a2 + 56) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v27;
  *(a2 + 80) = v33;
  *(a2 + 88) = v30;
  *(a2 + 96) = 2;
  *(a2 + 104) = 0;
  *(a2 + 112) = v37;
  *(a2 + 120) = v35;
  *(a2 + 128) = v29;
  *(a2 + 136) = v34;
  *(a2 + 144) = v26;
  *(a2 + 152) = v36;
  *(a2 + 160) = 0;
  sub_1E677F034(v37, v35, v29, v34, v26);
  sub_1E673F0D4(v32, v31, v16 & 1);

  return sub_1E677F034(v41, v40, v39, v43, v42);
}

uint64_t sub_1E6796AA4@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a2;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F30, &qword_1E68B94A8);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38, &qword_1E68B94B0);
  MEMORY[0x1EEE9AC00](v39, v9);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;

  v19 = sub_1E68B2DF0();
  v20 = 0x4020000000000000;
  v50[0] = a1;
  v50[1] = 0x3FFC71C71C71C71CLL;
  LOWORD(v50[2]) = 0;
  if (v19)
  {
    v20 = 0x4030000000000000;
  }

  v50[3] = v20;
  LOBYTE(v50[4]) = 0;
  sub_1E68B24B0();
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F40, &qword_1E68B94B8);
  sub_1E67978E0();
  sub_1E68B2960();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E68B77B0;
  v22 = sub_1E68B2510();
  *(v21 + 32) = v22;
  v23 = sub_1E68B2520();
  *(v21 + 33) = v23;
  v24 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v22)
  {
    v24 = sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v23)
  {
    v24 = sub_1E68B2540();
  }

  sub_1E68B1B30();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v40 + 32))(v14, v8, v41);
  v33 = &v14[*(v39 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_1E672C214(v14, v18);
  v43(v50, v34);
  memcpy(v47, v50, sizeof(v47));
  memcpy(v48, v50, sizeof(v48));
  sub_1E67612FC(v47, v49, &qword_1ED097F60, &qword_1E68B94D0);
  sub_1E6744A10(v48, &qword_1ED097F60, &qword_1E68B94D0);
  v35 = v44;
  sub_1E67612FC(v18, v44, &qword_1ED097F38, &qword_1E68B94B0);
  memcpy(v46, v47, sizeof(v46));
  v36 = v45;
  sub_1E67612FC(v35, v45, &qword_1ED097F38, &qword_1E68B94B0);
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F68, &qword_1E68B94D8) + 48);
  memcpy(v49, v46, sizeof(v49));
  memcpy((v36 + v37), v46, 0x1C0uLL);
  sub_1E67612FC(v49, v50, &qword_1ED097F60, &qword_1E68B94D0);
  sub_1E6744A10(v18, &qword_1ED097F38, &qword_1E68B94B0);
  memcpy(v50, v46, 0x1C0uLL);
  sub_1E6744A10(v50, &qword_1ED097F60, &qword_1E68B94D0);
  return sub_1E6744A10(v35, &qword_1ED097F38, &qword_1E68B94B0);
}

uint64_t sub_1E6796F08@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v45 = a3;
  v46 = a2;
  v48 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F30, &qword_1E68B94A8);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38, &qword_1E68B94B0);
  MEMORY[0x1EEE9AC00](v42, v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F70, &qword_1E68B94E0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v42 - v19);
  *v20 = sub_1E68B2140();
  v20[1] = a5;
  *(v20 + 16) = 0;

  v21 = sub_1E68B2DF0();
  v22 = 0x4020000000000000;
  v53[0] = a1;
  v53[1] = 0x3FFC71C71C71C71CLL;
  LOWORD(v53[2]) = 0;
  if (v21)
  {
    v22 = 0x4030000000000000;
  }

  v53[3] = v22;
  LOBYTE(v53[4]) = 0;
  sub_1E68B24B0();
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F40, &qword_1E68B94B8);
  sub_1E67978E0();
  sub_1E68B2960();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E68B77B0;
  v24 = sub_1E68B2510();
  *(v23 + 32) = v24;
  v25 = sub_1E68B2520();
  *(v23 + 33) = v25;
  v26 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v24)
  {
    v26 = sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v25)
  {
    v26 = sub_1E68B2540();
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F78, &qword_1E68B94E8) + 44);
  sub_1E68B1B30();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v43 + 32))(v13, v10, v44);
  v36 = &v13[*(v42 + 36)];
  *v36 = v26;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1E672C214(v13, v20 + v27);
  v46(v53, v37);
  memcpy(v50, v53, sizeof(v50));
  memcpy(v51, v53, sizeof(v51));
  sub_1E67612FC(v50, v52, &qword_1ED097F60, &qword_1E68B94D0);
  sub_1E6744A10(v51, &qword_1ED097F60, &qword_1E68B94D0);
  v38 = v47;
  sub_1E67612FC(v20, v47, &qword_1ED097F70, &qword_1E68B94E0);
  memcpy(v49, v50, sizeof(v49));
  v39 = v48;
  sub_1E67612FC(v38, v48, &qword_1ED097F70, &qword_1E68B94E0);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F80, &unk_1E68B94F0) + 48);
  memcpy(v52, v49, sizeof(v52));
  memcpy((v39 + v40), v49, 0x1C0uLL);
  sub_1E67612FC(v52, v53, &qword_1ED097F60, &qword_1E68B94D0);
  sub_1E6744A10(v20, &qword_1ED097F70, &qword_1E68B94E0);
  memcpy(v53, v49, 0x1C0uLL);
  sub_1E6744A10(v53, &qword_1ED097F60, &qword_1E68B94D0);
  return sub_1E6744A10(v38, &qword_1ED097F70, &qword_1E68B94E0);
}

uint64_t sub_1E67973D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1E68B2400();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E68B1EB0();
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StandardLockupConfiguration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA0, &qword_1E68B93D0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EA8, &qword_1E68B93D8);
  MEMORY[0x1EEE9AC00](v30, v19);
  v21 = &v28 - v20;
  v22 = *v2;
  *v21 = sub_1E68B2140();
  *(v21 + 1) = 0;
  v21[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB0, &qword_1E68B93E0);
  sub_1E677B3B8(a1, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = swift_allocObject();
  sub_1E677B41C(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v36 = v22;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097EB8, &qword_1E68B93E8);
  sub_1E673F530(&qword_1ED097EC0, &qword_1ED097EB8, &qword_1E68B93E8, MEMORY[0x1E6981870]);
  sub_1E68B2C20();
  v18[*(v15 + 36)] = 0;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  sub_1E6795C54();
  sub_1E677D800();
  v25 = v31;
  sub_1E68B2790();
  (*(v32 + 8))(v10, v25);
  sub_1E6744A10(v18, &qword_1ED097EA0, &qword_1E68B93D0);
  v26 = v29;
  sub_1E68B23F0();
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8, &qword_1E68B93D8, MEMORY[0x1E69817F8]);
  sub_1E68B2920();
  (*(v33 + 8))(v26, v35);
  return sub_1E6744A10(v21, &qword_1ED097EA8, &qword_1E68B93D8);
}

unint64_t sub_1E679784C(uint64_t a1)
{
  result = sub_1E6797874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E6797874()
{
  result = qword_1ED097EE8;
  if (!qword_1ED097EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097EE8);
  }

  return result;
}

unint64_t sub_1E67978E0()
{
  result = qword_1ED097F48;
  if (!qword_1ED097F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097F40, &qword_1E68B94B8);
    sub_1E679796C();
    sub_1E67979F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097F48);
  }

  return result;
}

unint64_t sub_1E679796C()
{
  result = qword_1ED097F50;
  if (!qword_1ED097F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097F58, &unk_1E68B94C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097F50);
  }

  return result;
}

unint64_t sub_1E67979F0()
{
  result = qword_1EE2EB048[0];
  if (!qword_1EE2EB048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EB048);
  }

  return result;
}

uint64_t sub_1E6797A4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1E6797B8C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1E6797D94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6797E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v30 = *(a2 - 8);
  v31 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssumeEquatable.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = sub_1E68B3A20();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v16 = type metadata accessor for AssumeEquatable(0, a2, v14, v15);
  v26 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v33;
  sub_1E68B3BC0();
  if (!v20)
  {
    v33 = v16;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    sub_1E68B3A00();
    (*(v21 + 8))(v13, v22);
    (*(v23 + 32))(v19, v32, a2);
    (*(v26 + 32))(v27, v19, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E67980D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a3;
  type metadata accessor for AssumeEquatable.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_1E68B3AC0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  sub_1E68B3AB0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E6798248(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  sub_1E68B3140();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67982C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6797D94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E67982F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6761AEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E6798320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6798374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6798430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1E68B3B70();
  sub_1E6798240(v6, a2, v4);
  return sub_1E68B3BB0();
}

uint64_t sub_1E679850C(uint64_t a1)
{
  v2 = sub_1E6798DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798548(uint64_t a1)
{
  v2 = sub_1E6798DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6798584(uint64_t a1)
{
  v2 = sub_1E6798D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67985C0(uint64_t a1)
{
  v2 = sub_1E6798D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67985FC(uint64_t a1)
{
  v2 = sub_1E6798CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798638(uint64_t a1)
{
  v2 = sub_1E6798CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6798674()
{
  v1 = 0x654C6D6F74746F62;
  v2 = 0x654C7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x696461654C706F74;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_1E67986F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6799AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E679872C(uint64_t a1)
{
  v2 = sub_1E6798C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6798768(uint64_t a1)
{
  v2 = sub_1E6798C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67987A4(uint64_t a1)
{
  v2 = sub_1E6798CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67987E0(uint64_t a1)
{
  v2 = sub_1E6798CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBrickDisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098010, &qword_1E68B9790);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098018, &qword_1E68B9798);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098020, &qword_1E68B97A0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098028, &qword_1E68B97A8);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098030, &qword_1E68B97B0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6798C54();
  sub_1E68B3BD0();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_1E6798CFC();
      v23 = v32;
      sub_1E68B3A30();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_1E6798CA8();
      v23 = v35;
      sub_1E68B3A30();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_1E6798D50();
    v23 = v29;
    sub_1E68B3A30();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_1E6798DA4();
  sub_1E68B3A30();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_1E6798C54()
{
  result = qword_1ED098038;
  if (!qword_1ED098038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098038);
  }

  return result;
}

unint64_t sub_1E6798CA8()
{
  result = qword_1ED098040;
  if (!qword_1ED098040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098040);
  }

  return result;
}

unint64_t sub_1E6798CFC()
{
  result = qword_1ED098048;
  if (!qword_1ED098048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098048);
  }

  return result;
}

unint64_t sub_1E6798D50()
{
  result = qword_1ED098050;
  if (!qword_1ED098050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098050);
  }

  return result;
}

unint64_t sub_1E6798DA4()
{
  result = qword_1ED098058;
  if (!qword_1ED098058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098058);
  }

  return result;
}

uint64_t DynamicBrickDisplayStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098060, &qword_1E68B97B8);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v3);
  v49 = &v39 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098068, &qword_1E68B97C0);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v48 = &v39 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098070, &qword_1E68B97C8);
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098078, &qword_1E68B97D0);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098080, &unk_1E68B97D8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E6798C54();
  v20 = v51;
  sub_1E68B3BC0();
  if (!v20)
  {
    v21 = v13;
    v39 = v10;
    v40 = 0;
    v22 = v9;
    v23 = v48;
    v24 = v49;
    v51 = v15;
    v25 = v50;
    v26 = v18;
    v27 = sub_1E68B3A10();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_1E676F5C4();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_1E68B3870();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v33 = &type metadata for DynamicBrickDisplayStyle;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
LABEL_9:
      (*(v51 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v57 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        v58 = 1;
        sub_1E6798D50();
        v37 = v40;
        sub_1E68B3970();
        if (!v37)
        {
          (*(v41 + 8))(v22, v45);
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0;
        sub_1E6798DA4();
        v30 = v40;
        sub_1E68B3970();
        if (!v30)
        {
          (*(v42 + 8))(v21, v39);
LABEL_17:
          (*(v51 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v25 = v57;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }
      }

      goto LABEL_9;
    }

    v35 = v51;
    if (v29 == 2)
    {
      v58 = 2;
      sub_1E6798CFC();
      v36 = v40;
      sub_1E68B3970();
      if (!v36)
      {
        (*(v43 + 8))(v23, v47);
LABEL_21:
        (*(v35 + 8))(v26, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v58 = 3;
      sub_1E6798CA8();
      v38 = v40;
      sub_1E68B3970();
      if (!v38)
      {
        (*(v44 + 8))(v24, v46);
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v26, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t DynamicBrickDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E67994FC()
{
  result = qword_1ED098088;
  if (!qword_1ED098088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMargins.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentMargins.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E67996F4()
{
  result = qword_1ED098090;
  if (!qword_1ED098090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098090);
  }

  return result;
}

unint64_t sub_1E679974C()
{
  result = qword_1ED098098;
  if (!qword_1ED098098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098098);
  }

  return result;
}

unint64_t sub_1E67997A4()
{
  result = qword_1ED0980A0;
  if (!qword_1ED0980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980A0);
  }

  return result;
}

unint64_t sub_1E67997FC()
{
  result = qword_1ED0980A8;
  if (!qword_1ED0980A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980A8);
  }

  return result;
}

unint64_t sub_1E6799854()
{
  result = qword_1ED0980B0;
  if (!qword_1ED0980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980B0);
  }

  return result;
}

unint64_t sub_1E67998AC()
{
  result = qword_1ED0980B8;
  if (!qword_1ED0980B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980B8);
  }

  return result;
}

unint64_t sub_1E6799904()
{
  result = qword_1ED0980C0;
  if (!qword_1ED0980C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980C0);
  }

  return result;
}

unint64_t sub_1E679995C()
{
  result = qword_1ED0980C8;
  if (!qword_1ED0980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980C8);
  }

  return result;
}

unint64_t sub_1E67999B4()
{
  result = qword_1ED0980D0;
  if (!qword_1ED0980D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980D0);
  }

  return result;
}

unint64_t sub_1E6799A0C()
{
  result = qword_1ED0980D8;
  if (!qword_1ED0980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980D8);
  }

  return result;
}

unint64_t sub_1E6799A64()
{
  result = qword_1ED0980E0;
  if (!qword_1ED0980E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980E0);
  }

  return result;
}

uint64_t sub_1E6799AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C7265746E6563 && a2 == 0xED0000676E696461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E6799C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2B20 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1E6799EE0(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    v5 = 0x656C746974627573;
    if (a1 != 4)
    {
      v5 = 0x6E6F6974706163;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x74756F79616CLL;
    v2 = 0x656C797473;
    if (a1 != 2)
    {
      v2 = 0x656C746974;
    }

    if (a1)
    {
      v1 = 0x6B726F77747261;
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

uint64_t sub_1E6799FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61436E6F69746361 && a2 == 0xEA00000000006472;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xED00006D65744968 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xEE00656761745368 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463416F666E69 && a2 == 0xEE00647261436E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697242656772616CLL && a2 == 0xEA00000000006B63 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E28B0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E28D0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E28F0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xEC00000064726143 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E2910 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2930 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x437972616D6D7573 && a2 == 0xEB00000000647261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x647261436C6C6174 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2950 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C69754277656976 && a2 == 0xEB00000000726564 || (sub_1E68B3B00() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6369724265646977 && a2 == 0xE90000000000006BLL)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_1E679A4F4(char a1)
{
  result = 0x61436E6F69746361;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x746469576C6C7566;
      break;
    case 3:
      result = 0x697463416F666E69;
      break;
    case 4:
      result = 0x697242656772616CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 10:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x647261646E617473;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x437972616D6D7573;
      break;
    case 12:
      result = 0x647261436C6C6174;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6C69754277656976;
      break;
    case 15:
      result = 0x6369724265646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E679A6D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x637365446D657469 && a2 == 0xEE00726F74706972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E679A758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2B20 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69566D6F74737563 && a2 == 0xEA00000000007765)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

unint64_t sub_1E679AA40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74756F79616CLL;
    v6 = 0x656C797473;
    if (a1 != 2)
    {
      v6 = 0x656C746974;
    }

    if (a1)
    {
      v5 = 0x6B726F77747261;
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
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0x69566D6F74737563;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C746974627573;
    if (a1 != 4)
    {
      v3 = 0x6E6F6974706163;
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

uint64_t sub_1E679AB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679ACBC(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x7470697263736564;
  if (a1 != 2)
  {
    v2 = 0x75426E6F69746361;
  }

  if (a1)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1E679AD40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679AEA0(unsigned __int8 a1)
{
  v1 = 0x6B726F77747261;
  v2 = 0x656C746974627573;
  if (a1 != 2)
  {
    v2 = 0x656C746974;
  }

  if (a1)
  {
    v1 = 0x65746F6E746F6F66;
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

uint64_t sub_1E679AF18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679B074(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  if (a1 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
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

uint64_t sub_1E679B0E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E679B294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEA0000000000656CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E679B4E4(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x74695470756F7267;
  if (a1 != 5)
  {
    v2 = 0x726F737365636361;
  }

  v3 = 0x656C746974627573;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974706163;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6B726F77747261;
  if (a1 != 1)
  {
    v4 = 0x656C746974;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679B5C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2AE0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679B7C4(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974627573;
  v3 = 0x6E6F6974706163;
  if (a1 != 4)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6B726F77747261;
  if (a1 != 1)
  {
    v4 = 0x656C746974;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E679B87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679B9D8(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  if (a1 != 2)
  {
    v2 = 0x79616C7265766FLL;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
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

uint64_t sub_1E679BA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E679BBF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E679BC70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E679BD84(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x656C746974;
}

uint64_t sub_1E679BE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679BEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679BF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_1E679BFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C110(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C1AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C2F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result;
  return result;
}

uint64_t sub_1E679C48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C5B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C60C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C864(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C8B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679C954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679C9A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CA2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CA80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CAD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E679CBF4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E679CC38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CC8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E679CD20(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  return sub_1E68B3BB0();
}

uint64_t sub_1E679CDE4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result;
  return result;
}

uint64_t sub_1E679CE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E679CE78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasItemContent.encode(to:)(char *a1, void *a2)
{
  v710 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  *&v735 = a2[2];
  v4 = v735;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v5;
  v9 = v5;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v626 = type metadata accessor for CanvasItemContent.WideBrickCodingKeys(255, &v735);
  WitnessTable = swift_getWitnessTable();
  v633 = sub_1E68B3AC0();
  v632 = *(v633 - 8);
  MEMORY[0x1EEE9AC00](v633, v10);
  v630 = v559 - v11;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v9;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v12 = type metadata accessor for CanvasItemContent.ViewBuilderCodingKeys(255, &v735);
  v13 = swift_getWitnessTable();
  v613 = v12;
  v611 = v13;
  v14 = sub_1E68B3AC0();
  v615 = *(v14 - 8);
  v616 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v612 = v559 - v16;
  v614 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v610 = v559 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v9;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v20 = type metadata accessor for CanvasItemContent.VerticalStackCardCodingKeys(255, &v735);
  v21 = swift_getWitnessTable();
  v619 = v20;
  v617 = v21;
  v641 = sub_1E68B3AC0();
  v634 = *(v641 - 8);
  MEMORY[0x1EEE9AC00](v641, v22);
  v631 = v559 - v23;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v9;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v24 = type metadata accessor for CanvasItemContent.TallCardCodingKeys(255, &v735);
  v606 = swift_getWitnessTable();
  v607 = v24;
  v624 = sub_1E68B3AC0();
  v623 = *(v624 - 8);
  MEMORY[0x1EEE9AC00](v624, v25);
  v620 = v559 - v26;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v9;
  v27 = v9;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v28 = type metadata accessor for CanvasItemContent.SummaryCardCodingKeys(255, &v735);
  v604 = swift_getWitnessTable();
  v605 = v28;
  v629 = sub_1E68B3AC0();
  v628 = *(v629 - 8);
  MEMORY[0x1EEE9AC00](v629, v29);
  v627 = v559 - v30;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E88, &qword_1E68B9CF0);
  MEMORY[0x1EEE9AC00](v594, v31);
  v644 = v559 - v32;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v33 = type metadata accessor for CanvasItemContent.StandardVerticalStackCodingKeys(255, &v735);
  v34 = swift_getWitnessTable();
  v600 = v33;
  v598 = v34;
  v704 = sub_1E68B3AC0();
  v609 = *(v704 - 8);
  MEMORY[0x1EEE9AC00](v704, v35);
  v608 = v559 - v36;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v37 = type metadata accessor for CanvasItemContent.StandardHorizontalStackCodingKeys(255, &v735);
  v38 = swift_getWitnessTable();
  v599 = v37;
  v595 = v38;
  v621 = sub_1E68B3AC0();
  v622 = *(v621 - 8);
  MEMORY[0x1EEE9AC00](v621, v39);
  v618 = v559 - v40;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v41 = type metadata accessor for CanvasItemContent.StandardCardCodingKeys(255, &v735);
  v591 = swift_getWitnessTable();
  v592 = v41;
  v42 = sub_1E68B3AC0();
  v602 = *(v42 - 8);
  v603 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v601 = v559 - v44;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v45 = type metadata accessor for CanvasItemContent.SmallDynamicBrickCodingKeys(255, &v735);
  v585 = swift_getWitnessTable();
  v586 = v45;
  v46 = sub_1E68B3AC0();
  v596 = *(v46 - 8);
  v597 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v703 = v559 - v48;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v49 = type metadata accessor for CanvasItemContent.MonogramVerticalStackCodingKeys(255, &v735);
  v50 = swift_getWitnessTable();
  v582 = v49;
  v579 = v50;
  v643 = sub_1E68B3AC0();
  v590 = *(v643 - 8);
  MEMORY[0x1EEE9AC00](v643, v51);
  v587 = v559 - v52;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v53 = type metadata accessor for CanvasItemContent.MediumDynamicBrickCodingKeys(255, &v735);
  v573 = swift_getWitnessTable();
  v574 = v53;
  v54 = sub_1E68B3AC0();
  v588 = *(v54 - 8);
  v589 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v702 = v559 - v56;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v57 = type metadata accessor for CanvasItemContent.LargeBrickCodingKeys(255, &v735);
  v571 = swift_getWitnessTable();
  v572 = v57;
  v58 = sub_1E68B3AC0();
  v583 = *(v58 - 8);
  v584 = v58;
  MEMORY[0x1EEE9AC00](v58, v59);
  v580 = v559 - v60;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v61 = type metadata accessor for CanvasItemContent.InfoActionCardCodingKeys(255, &v735);
  v567 = swift_getWitnessTable();
  v568 = v61;
  v62 = sub_1E68B3AC0();
  v577 = *(v62 - 8);
  v578 = v62;
  MEMORY[0x1EEE9AC00](v62, v63);
  v575 = v559 - v64;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v65 = type metadata accessor for CanvasItemContent.FullWidthStageCodingKeys(255, &v735);
  v569 = swift_getWitnessTable();
  v570 = v65;
  v636 = sub_1E68B3AC0();
  v593 = *(v636 - 8);
  MEMORY[0x1EEE9AC00](v636, v66);
  v635 = v559 - v67;
  v687 = sub_1E68B3750();
  v639 = *(v687 - 8);
  MEMORY[0x1EEE9AC00](v687, v68);
  v654 = v559 - v69;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v714 = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v70 = type metadata accessor for CanvasItemContent.FullWidthItemCodingKeys(255, &v735);
  v559[1] = swift_getWitnessTable();
  v559[2] = v70;
  v71 = sub_1E68B3AC0();
  v563 = *(v71 - 8);
  v564 = v71;
  MEMORY[0x1EEE9AC00](v71, v72);
  v560 = v559 - v73;
  v75 = type metadata accessor for FullWidthItemDescriptor(0, v3, v7, v74);
  v561 = *(v75 - 8);
  v562 = v75;
  MEMORY[0x1EEE9AC00](v75, v76);
  v559[0] = v559 - v77;
  *&v735 = v4;
  *(&v735 + 1) = v3;
  *&v736 = v6;
  *(&v736 + 1) = v27;
  *&v737 = v7;
  *(&v737 + 1) = v8;
  v78 = type metadata accessor for CanvasItemContent.ActionCardCodingKeys(255, &v735);
  v565 = swift_getWitnessTable();
  v566 = v78;
  v705 = sub_1E68B3AC0();
  v581 = *(v705 - 8);
  MEMORY[0x1EEE9AC00](v705, v79);
  v576 = v559 - v80;
  v707 = sub_1E68B3750();
  v706 = *(v707 - 8);
  MEMORY[0x1EEE9AC00](v707, v81);
  v642 = v559 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v665 = v559 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v689 = v559 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v690 = v559 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v653 = v559 - v94;
  v640 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v95, v96);
  v671 = v559 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v709, v98);
  v663 = v559 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v698 = v559 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v655 = v559 - v105;
  MEMORY[0x1EEE9AC00](v106, v107);
  v677 = v559 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v666 = v559 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v650 = v559 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v656 = v559 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v678 = v559 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v685 = v559 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v651 = v559 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v652 = v559 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v684 = v559 - v132;
  MEMORY[0x1EEE9AC00](v133, v134);
  v667 = v559 - v135;
  MEMORY[0x1EEE9AC00](v136, v137);
  v692 = v559 - v138;
  MEMORY[0x1EEE9AC00](v139, v140);
  v669 = v559 - v141;
  MEMORY[0x1EEE9AC00](v142, v143);
  v686 = v559 - v144;
  MEMORY[0x1EEE9AC00](v145, v146);
  v649 = v559 - v147;
  MEMORY[0x1EEE9AC00](v148, v149);
  v664 = v559 - v150;
  MEMORY[0x1EEE9AC00](v151, v152);
  v683 = v559 - v153;
  MEMORY[0x1EEE9AC00](v154, v155);
  v648 = v559 - v156;
  MEMORY[0x1EEE9AC00](v157, v158);
  v697 = v559 - v159;
  MEMORY[0x1EEE9AC00](v160, v161);
  v646 = v559 - v162;
  MEMORY[0x1EEE9AC00](v163, v164);
  v682 = v559 - v165;
  MEMORY[0x1EEE9AC00](v166, v167);
  v647 = v559 - v168;
  MEMORY[0x1EEE9AC00](v169, v170);
  v696 = v559 - v171;
  MEMORY[0x1EEE9AC00](v172, v173);
  v645 = v559 - v174;
  MEMORY[0x1EEE9AC00](v175, v176);
  v659 = v559 - v177;
  MEMORY[0x1EEE9AC00](v178, v179);
  v694 = v559 - v180;
  MEMORY[0x1EEE9AC00](v181, v182);
  v681 = v559 - v183;
  MEMORY[0x1EEE9AC00](v184, v185);
  v695 = v559 - v186;
  MEMORY[0x1EEE9AC00](v187, v188);
  v673 = v559 - v189;
  MEMORY[0x1EEE9AC00](v190, v191);
  v688 = v559 - v192;
  MEMORY[0x1EEE9AC00](v193, v194);
  v679 = v559 - v195;
  MEMORY[0x1EEE9AC00](v196, v197);
  v672 = v559 - v198;
  MEMORY[0x1EEE9AC00](v199, v200);
  v674 = v559 - v201;
  MEMORY[0x1EEE9AC00](v202, v203);
  v668 = v559 - v204;
  v715 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v205, v206);
  v657 = v559 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v208, v209);
  v662 = v559 - v210;
  MEMORY[0x1EEE9AC00](v211, v212);
  v693 = v559 - v213;
  MEMORY[0x1EEE9AC00](v214, v215);
  v699 = v559 - v216;
  MEMORY[0x1EEE9AC00](v217, v218);
  v660 = v559 - v219;
  MEMORY[0x1EEE9AC00](v220, v221);
  v700 = v559 - v222;
  MEMORY[0x1EEE9AC00](v223, v224);
  v661 = v559 - v225;
  MEMORY[0x1EEE9AC00](v226, v227);
  v676 = v559 - v228;
  MEMORY[0x1EEE9AC00](v229, v230);
  v680 = v559 - v231;
  MEMORY[0x1EEE9AC00](v232, v233);
  v675 = v559 - v234;
  MEMORY[0x1EEE9AC00](v235, v236);
  v658 = v559 - v237;
  MEMORY[0x1EEE9AC00](v238, v239);
  v701 = v559 - v240;
  MEMORY[0x1EEE9AC00](v241, v242);
  v670 = v559 - v243;
  v244 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v245, v246);
  v248 = v559 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
  v691 = v4;
  *&v735 = v4;
  v718 = v3;
  *(&v735 + 1) = v3;
  v637 = v6;
  *&v736 = v6;
  *(&v736 + 1) = v714;
  v708 = v7;
  *&v737 = v7;
  v638 = v8;
  *(&v737 + 1) = v8;
  type metadata accessor for CanvasItemContent.CodingKeys(255, &v735);
  swift_getWitnessTable();
  v717 = sub_1E68B3AC0();
  v713 = *(v717 - 8);
  MEMORY[0x1EEE9AC00](v717, v249);
  v251 = v559 - v250;
  __swift_project_boxed_opaque_existential_1(v710, *(v710 + 3));
  v716 = v251;
  v252 = v248;
  sub_1E68B3BD0();
  (*(v244 + 16))(v248, v711, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v414 = v561;
      v413 = v562;
      v415 = v559[0];
      (*(v561 + 32))();
      LOBYTE(v735) = 1;
      v416 = v560;
      v282 = v717;
      v383 = v716;
      sub_1E68B3A30();
      swift_getWitnessTable();
      v417 = v564;
      sub_1E68B3AB0();
      (*(v563 + 8))(v416, v417);
      (*(v414 + 8))(v415, v413);
      goto LABEL_23;
    case 2:
      v350 = *(v248 + 11);
      v745 = *(v248 + 10);
      v746 = v350;
      v351 = *(v248 + 13);
      v747 = *(v248 + 12);
      v748 = v351;
      v352 = *(v248 + 7);
      v741 = *(v248 + 6);
      v742 = v352;
      v353 = *(v248 + 9);
      v743 = *(v248 + 8);
      v744 = v353;
      v354 = *(v248 + 3);
      v737 = *(v248 + 2);
      v738 = v354;
      v355 = *(v248 + 5);
      v739 = *(v248 + 4);
      v740 = v355;
      v356 = *(v248 + 1);
      v735 = *v248;
      v736 = v356;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-14], "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v719 = &type metadata for FullWidthStageViewLayout;
      v357 = v718;
      *(&v719 + 1) = v718;
      *&v720 = &type metadata for FullWidthStageViewStyle;
      *(&v720 + 1) = v709;
      *&v721 = v709;
      *(&v721 + 1) = v709;
      v358 = v248;
      v359 = v707;
      *&v722 = v707;
      *(&v722 + 1) = v707;
      v360 = v687;
      *&v723 = v687;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v362 = TupleTypeMetadata[12];
      LODWORD(v705) = v358[TupleTypeMetadata[16]];
      v363 = TupleTypeMetadata[20];
      v364 = TupleTypeMetadata[24];
      v365 = TupleTypeMetadata[28];
      v709 = TupleTypeMetadata[32];
      v710 = TupleTypeMetadata[36];
      *&v711 = TupleTypeMetadata[40];
      (*(v715 + 32))(v701, &v358[v362], v357);
      sub_1E6761420(&v358[v363], v679, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v358[v364], v688, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v358[v365], v673, &qword_1ED096E68, &qword_1E68B4840);
      v366 = v706;
      v367 = *(v706 + 32);
      v367(v690, &v358[v709], v359);
      v367(v689, &v710[v358], v359);
      v368 = v639;
      v369 = v360;
      v370 = v654;
      (*(v639 + 32))(v654, &v358[v711], v369);
      LOBYTE(v719) = 2;
      v371 = v635;
      sub_1E68B3A30();
      v729 = v745;
      v730 = v746;
      v731 = v747;
      v732 = v748;
      v725 = v741;
      v726 = v742;
      v727 = v743;
      v728 = v744;
      v721 = v737;
      v722 = v738;
      v723 = v739;
      v724 = v740;
      v719 = v735;
      v720 = v736;
      v751 = 0;
      sub_1E676B104();
      v372 = v636;
      v373 = v712;
      sub_1E68B3AB0();
      if (v373)
      {
        (*(v593 + 8))(v371, v372);
        (*(v368 + 8))(v370, v687);
        v374 = *(v366 + 8);
        v374(v689, v359);
        v374(v690, v359);
        sub_1E6744A10(v673, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v688, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v679, &qword_1ED096E68, &qword_1E68B4840);
        v375 = *(v715 + 8);
        v376 = v701;
        goto LABEL_15;
      }

      v492 = v705;
      LOBYTE(v719) = 1;
      sub_1E68B3AB0();
      LOBYTE(v719) = v492;
      v751 = 2;
      sub_1E67A3E40();
      sub_1E68B3AB0();
      LOBYTE(v719) = 3;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      LOBYTE(v719) = 4;
      sub_1E68B3A60();
      LOBYTE(v719) = 5;
      sub_1E68B3A60();
      LOBYTE(v719) = 6;
      sub_1E68B3A60();
      LOBYTE(v719) = 7;
      sub_1E68B3A60();
      LOBYTE(v719) = 8;
      sub_1E68B3A60();
      (*(v593 + 8))(v635, v636);
      (*(v639 + 8))(v654, v687);
      v557 = *(v706 + 8);
      v558 = v707;
      v557(v689, v707);
      v557(v690, v558);
      sub_1E6744A10(v673, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v688, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v679, &qword_1ED096E68, &qword_1E68B4840);
      (*(v715 + 8))(v701, v718);
      goto LABEL_53;
    case 3:
      v386 = *(v248 + 1);
      v735 = *v248;
      v736 = v386;
      v387 = *(v248 + 3);
      v737 = *(v248 + 2);
      v738 = v387;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout title description actionButton ");
      *&v719 = &type metadata for InfoActionCardViewLayout;
      *(&v719 + 1) = v709;
      *&v720 = v709;
      v388 = v707;
      *(&v720 + 1) = v707;
      v389 = swift_getTupleTypeMetadata();
      v390 = v389[16];
      v391 = v389[20];
      sub_1E6761420(&v248[v389[12]], v695, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v248[v390], v681, &qword_1ED096E68, &qword_1E68B4840);
      v392 = v706;
      (*(v706 + 32))(v665, &v248[v391], v388);
      LOBYTE(v719) = 3;
      v393 = v575;
      v394 = v717;
      v395 = v716;
      sub_1E68B3A30();
      v719 = v735;
      v720 = v736;
      v721 = v737;
      v722 = v738;
      v751 = 0;
      sub_1E676B05C();
      v396 = v578;
      v397 = v712;
      sub_1E68B3AB0();
      if (v397)
      {
        (*(v577 + 8))(v393, v396);
        (*(v392 + 8))(v665, v388);
        sub_1E6744A10(v681, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v695, &qword_1ED096E68, &qword_1E68B4840);
        return (*(v713 + 8))(v395, v394);
      }

      LOBYTE(v719) = 1;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      LOBYTE(v719) = 2;
      sub_1E68B3A60();
      LOBYTE(v719) = 3;
      v531 = v665;
      sub_1E68B3A60();
      v532 = v396;
      v533 = v717;
      v534 = v716;
      (*(v577 + 8))(v393, v532);
      (*(v392 + 8))(v531, v707);
      sub_1E6744A10(v681, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v695, &qword_1ED096E68, &qword_1E68B4840);
      v285 = *(v713 + 8);
      v286 = v534;
      goto LABEL_59;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "artwork footnote subtitle title ");
      v303 = v718;
      *&v735 = v718;
      *(&v735 + 1) = v709;
      *&v736 = v709;
      *(&v736 + 1) = v709;
      v304 = swift_getTupleTypeMetadata();
      v305 = v304[12];
      v306 = v304[16];
      v307 = v304[20];
      (*(v715 + 32))(v658, v252, v303);
      sub_1E6761420(&v252[v305], v694, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v306], v659, &qword_1ED096E68, &qword_1E68B4840);
      v308 = &v252[v307];
      v309 = v645;
      sub_1E6761420(v308, v645, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 4;
      v310 = v580;
      v311 = v717;
      v312 = v716;
      sub_1E68B3A30();
      LOBYTE(v735) = 0;
      v313 = v584;
      v314 = v712;
      sub_1E68B3AB0();
      if (v314)
      {
        (*(v583 + 8))(v310, v313);
        sub_1E6744A10(v309, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v659, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v694, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v658, v303);
        return (*(v713 + 8))(v312, v311);
      }

      else
      {
        LOBYTE(v735) = 1;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        sub_1E68B3A60();
        LOBYTE(v735) = 2;
        v510 = v659;
        sub_1E68B3A60();
        v511 = v645;
        v512 = v658;
        LOBYTE(v735) = 3;
        sub_1E68B3A60();
        (*(v583 + 8))(v310, v313);
        sub_1E6744A10(v511, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v510, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v694, &qword_1ED096E68, &qword_1E68B4840);
        v375 = *(v715 + 8);
        v376 = v512;
LABEL_15:
        v375(v376, v718);
        return (*(v713 + 8))(v716, v717);
      }

    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "artwork caption displayStyle layout title ");
      v419 = v718;
      *&v735 = v718;
      *(&v735 + 1) = v709;
      *&v736 = &type metadata for DynamicBrickDisplayStyle;
      *(&v736 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v737 = v709;
      v420 = swift_getTupleTypeMetadata();
      v421 = v420[12];
      LODWORD(v714) = v252[v420[16]];
      v422 = &v252[v420[20]];
      v423 = *v422;
      v424 = *(v422 + 1);
      v425 = v420[24];
      v426 = v252;
      v427 = v715;
      (*(v715 + 32))(v675, v426, v419);
      sub_1E6761420(&v426[v421], v696, &qword_1ED096E68, &qword_1E68B4840);
      v428 = v647;
      sub_1E6761420(&v426[v425], v647, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 5;
      v408 = v717;
      v409 = v716;
      sub_1E68B3A30();
      LOBYTE(v735) = 0;
      v429 = v718;
      v430 = v589;
      v431 = v712;
      sub_1E68B3AB0();
      if (v431)
      {
        (*(v588 + 8))(v702, v430);
        sub_1E6744A10(v428, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v696, &qword_1ED096E68, &qword_1E68B4840);
        (*(v427 + 8))(v675, v429);
        goto LABEL_27;
      }

      v501 = v714;
      LOBYTE(v735) = 1;
      v502 = sub_1E68B1820();
      v503 = sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      *&v711 = v503;
      v712 = v502;
      LOBYTE(v735) = v501;
      LOBYTE(v719) = 2;
      sub_1E67A3DEC();
      sub_1E68B3AB0();
      v521 = v718;
      *&v735 = v423;
      *(&v735 + 1) = v424;
      LOBYTE(v719) = 3;
      sub_1E676AE64();
      sub_1E68B3AB0();
      v533 = v717;
      LOBYTE(v735) = 4;
      v545 = v647;
      v546 = v702;
      sub_1E68B3A60();
      v547 = v696;
      (*(v588 + 8))(v546, v430);
      sub_1E6744A10(v545, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v547, &qword_1ED096E68, &qword_1E68B4840);
      (*(v427 + 8))(v675, v521);
      goto LABEL_58;
    case 6:
      v714 = *v248;
      v449 = *(v248 + 2);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout artwork title subtitle ");
      *&v735 = &type metadata for MonogramVerticalStackViewLayout;
      v450 = v718;
      *(&v735 + 1) = v718;
      *&v736 = v709;
      *(&v736 + 1) = v709;
      v451 = swift_getTupleTypeMetadata();
      v452 = v451[16];
      v453 = v451[20];
      v454 = v715;
      (*(v715 + 32))(v680, &v248[v451[12]], v450);
      sub_1E6761420(&v248[v452], v682, &qword_1ED096E68, &qword_1E68B4840);
      v455 = v646;
      sub_1E6761420(&v248[v453], v646, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 6;
      v456 = v587;
      v457 = v717;
      v458 = v716;
      sub_1E68B3A30();
      v735 = v714;
      *&v736 = v449;
      LOBYTE(v719) = 0;
      sub_1E676AF0C();
      v459 = v643;
      v460 = v712;
      sub_1E68B3AB0();
      if (v460)
      {
        (*(v590 + 8))(v456, v459);
        sub_1E6744A10(v455, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v682, &qword_1ED096E68, &qword_1E68B4840);
        (*(v454 + 8))(v680, v718);
        return (*(v713 + 8))(v458, v457);
      }

      LOBYTE(v735) = 1;
      v506 = v680;
      v507 = v718;
      sub_1E68B3AB0();
      LOBYTE(v735) = 2;
      v523 = sub_1E68B1820();
      *&v714 = 0;
      v524 = v523;
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      v525 = v682;
      v712 = v524;
      v526 = v714;
      sub_1E68B3A60();
      if (v526)
      {
        (*(v590 + 8))(v456, v643);
        sub_1E6744A10(v646, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v525, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v506, v507);
        v489 = *(v713 + 8);
        v490 = v458;
      }

      else
      {
        v535 = v458;
        LOBYTE(v735) = 3;
        v536 = v646;
        v537 = v643;
        sub_1E68B3A60();
        (*(v590 + 8))(v456, v537);
        sub_1E6744A10(v536, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v682, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v680, v507);
        v489 = *(v713 + 8);
        v490 = v535;
      }

      goto LABEL_54;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "artwork caption displayStyle layout title ");
      v398 = v718;
      *&v735 = v718;
      *(&v735 + 1) = v709;
      *&v736 = &type metadata for DynamicBrickDisplayStyle;
      *(&v736 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v737 = v709;
      v399 = swift_getTupleTypeMetadata();
      v400 = v399[12];
      LODWORD(v714) = v252[v399[16]];
      v401 = &v252[v399[20]];
      v402 = *v401;
      v403 = *(v401 + 1);
      v404 = v399[24];
      v405 = v252;
      v406 = v715;
      (*(v715 + 32))(v676, v405, v398);
      sub_1E6761420(&v405[v400], v697, &qword_1ED096E68, &qword_1E68B4840);
      v407 = v648;
      sub_1E6761420(&v405[v404], v648, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 7;
      v408 = v717;
      v409 = v716;
      sub_1E68B3A30();
      LOBYTE(v735) = 0;
      v410 = v718;
      v411 = v597;
      v412 = v712;
      sub_1E68B3AB0();
      if (v412)
      {
        (*(v596 + 8))(v703, v411);
        sub_1E6744A10(v407, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v697, &qword_1ED096E68, &qword_1E68B4840);
        (*(v406 + 8))(v676, v410);
LABEL_27:
        v285 = *(v713 + 8);
        v286 = v409;
        v418 = v408;
      }

      else
      {
        v496 = v714;
        LOBYTE(v735) = 1;
        v497 = sub_1E68B1820();
        v498 = sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        sub_1E68B3A60();
        *&v711 = v498;
        v712 = v497;
        LOBYTE(v735) = v496;
        LOBYTE(v719) = 2;
        sub_1E67A3DEC();
        sub_1E68B3AB0();
        v519 = v718;
        *&v735 = v402;
        *(&v735 + 1) = v403;
        LOBYTE(v719) = 3;
        sub_1E676AE64();
        sub_1E68B3AB0();
        v533 = v717;
        LOBYTE(v735) = 4;
        v542 = v648;
        v543 = v703;
        sub_1E68B3A60();
        v544 = v697;
        (*(v596 + 8))(v543, v411);
        sub_1E6744A10(v542, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v544, &qword_1ED096E68, &qword_1E68B4840);
        (*(v406 + 8))(v676, v519);
LABEL_58:
        v285 = *(v713 + 8);
        v286 = v716;
LABEL_59:
        v418 = v533;
      }

      goto LABEL_28;
    case 8:
      *&v741 = *(v248 + 12);
      v476 = *(v248 + 5);
      v739 = *(v248 + 4);
      v740 = v476;
      v477 = *(v248 + 1);
      v735 = *v248;
      v736 = v477;
      v478 = *(v248 + 2);
      v738 = *(v248 + 3);
      v737 = v478;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout artwork title subtitle caption ");
      *&v719 = &type metadata for StandardCardViewLayout;
      v479 = v718;
      *(&v719 + 1) = v718;
      *&v720 = v709;
      *(&v720 + 1) = v709;
      *&v721 = v709;
      v480 = swift_getTupleTypeMetadata();
      v481 = v480[16];
      v482 = v480[20];
      v483 = v480[24];
      v484 = v715;
      (*(v715 + 32))(v661, &v248[v480[12]], v479);
      sub_1E6761420(&v248[v481], v683, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v248[v482], v664, &qword_1ED096E68, &qword_1E68B4840);
      v485 = v649;
      sub_1E6761420(&v248[v483], v649, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v719) = 8;
      v486 = v601;
      v445 = v717;
      v446 = v716;
      sub_1E68B3A30();
      v723 = v739;
      v724 = v740;
      *&v725 = v741;
      v719 = v735;
      v720 = v736;
      v722 = v738;
      v721 = v737;
      v751 = 0;
      sub_1E676ADBC();
      v487 = v603;
      v488 = v712;
      sub_1E68B3AB0();
      if (v488)
      {
        (*(v602 + 8))(v486, v487);
        sub_1E6744A10(v485, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v664, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v683, &qword_1ED096E68, &qword_1E68B4840);
        (*(v484 + 8))(v661, v718);
        goto LABEL_38;
      }

      LOBYTE(v719) = 1;
      v509 = v661;
      sub_1E68B3AB0();
      LOBYTE(v719) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      v528 = v649;
      LOBYTE(v719) = 3;
      v539 = v664;
      sub_1E68B3A60();
      LOBYTE(v719) = 4;
      sub_1E68B3A60();
      (*(v602 + 8))(v486, v487);
      sub_1E6744A10(v528, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v539, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v683, &qword_1ED096E68, &qword_1E68B4840);
      (*(v715 + 8))(v509, v718);
      goto LABEL_53;
    case 9:
      v330 = *(v248 + 7);
      v741 = *(v248 + 6);
      v742 = v330;
      v331 = *(v248 + 9);
      v743 = *(v248 + 8);
      v744 = v331;
      v332 = *(v248 + 3);
      v737 = *(v248 + 2);
      v738 = v332;
      v333 = *(v248 + 5);
      v739 = *(v248 + 4);
      v740 = v333;
      v334 = *(v248 + 1);
      v735 = *v248;
      v736 = v334;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-10], "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v719 = &type metadata for StandardHorizontalStackViewLayout;
      v335 = v718;
      *(&v719 + 1) = v718;
      *&v720 = v709;
      *(&v720 + 1) = v709;
      *&v721 = v709;
      *(&v721 + 1) = v709;
      v336 = v707;
      *&v722 = v707;
      v337 = swift_getTupleTypeMetadata();
      v338 = v337[12];
      v339 = v337[16];
      v340 = v337[20];
      v341 = v337[24];
      v342 = v337[28];
      *&v711 = v337[32];
      (*(v715 + 32))(v700, &v252[v338], v335);
      sub_1E6761420(&v252[v339], v686, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v340], v669, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v341], v692, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v342], v667, &qword_1ED096E68, &qword_1E68B4840);
      v343 = v706;
      v344 = v642;
      (*(v706 + 32))(v642, &v252[v711], v336);
      LOBYTE(v719) = 9;
      v345 = v618;
      v346 = v717;
      v347 = v716;
      sub_1E68B3A30();
      v725 = v741;
      v726 = v742;
      v727 = v743;
      v728 = v744;
      v721 = v737;
      v722 = v738;
      v723 = v739;
      v724 = v740;
      v719 = v735;
      v720 = v736;
      v751 = 0;
      sub_1E676AD14();
      v348 = v621;
      v349 = v712;
      sub_1E68B3AB0();
      if (v349)
      {
        (*(v622 + 8))(v345, v348);
        (*(v343 + 8))(v344, v707);
        sub_1E6744A10(v667, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v692, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v669, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v686, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v700, v718);
        return (*(v713 + 8))(v347, v346);
      }

      LOBYTE(v719) = 1;
      sub_1E68B3AB0();
      LOBYTE(v719) = 2;
      sub_1E68B1820();
      v514 = v345;
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      v515 = v348;
      v516 = v667;
      LOBYTE(v719) = 3;
      v530 = v669;
      sub_1E68B3A60();
      LOBYTE(v719) = 4;
      sub_1E68B3A60();
      LOBYTE(v719) = 5;
      sub_1E68B3A60();
      LOBYTE(v719) = 6;
      v550 = v642;
      sub_1E68B3A60();
      v551 = v686;
      (*(v622 + 8))(v514, v515);
      (*(v706 + 8))(v550, v707);
      sub_1E6744A10(v516, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v692, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v530, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v551, &qword_1ED096E68, &qword_1E68B4840);
      (*(v715 + 8))(v700, v718);
      goto LABEL_53;
    case 10:
      LODWORD(v714) = *v248;
      v461 = *(v248 + 1);
      v462 = *(v248 + 2);
      *&v711 = *(v248 + 3);
      LODWORD(v710) = v248[32];
      v463 = *(v248 + 5);
      v707 = *(v248 + 6);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout artwork title subtitle caption ");
      *&v735 = &type metadata for StandardVerticalStackViewLayout;
      v464 = v718;
      *(&v735 + 1) = v718;
      *&v736 = v709;
      *(&v736 + 1) = v709;
      *&v737 = v709;
      v465 = swift_getTupleTypeMetadata();
      v466 = v465[16];
      v467 = v465[20];
      v468 = v465[24];
      v469 = v715;
      (*(v715 + 32))(v660, &v252[v465[12]], v464);
      sub_1E6761420(&v252[v466], v684, &qword_1ED096E68, &qword_1E68B4840);
      v470 = v652;
      sub_1E6761420(&v252[v467], v652, &qword_1ED096E68, &qword_1E68B4840);
      v471 = &v252[v468];
      v472 = v651;
      sub_1E6761420(v471, v651, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 10;
      v473 = v608;
      v474 = v717;
      v326 = v716;
      sub_1E68B3A30();
      LOBYTE(v735) = v714;
      *(&v735 + 1) = v461;
      *&v736 = v462;
      *(&v736 + 1) = v711;
      LOBYTE(v737) = v710;
      *(&v737 + 1) = v463;
      *&v738 = v707;
      LOBYTE(v719) = 0;
      sub_1E676AC6C();
      v475 = v712;
      sub_1E68B3AB0();
      if (v475)
      {
        (*(v609 + 8))(v473, v704);
        sub_1E6744A10(v472, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v470, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v684, &qword_1ED096E68, &qword_1E68B4840);
        (*(v469 + 8))(v660, v718);
        return (*(v713 + 8))(v326, v474);
      }

      LOBYTE(v735) = 1;
      v508 = v660;
      sub_1E68B3AB0();
      LOBYTE(v735) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      v527 = v651;
      LOBYTE(v735) = 3;
      v538 = v652;
      sub_1E68B3A60();
      LOBYTE(v735) = 4;
      sub_1E68B3A60();
      (*(v609 + 8))(v473, v704);
      sub_1E6744A10(v527, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v538, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v684, &qword_1ED096E68, &qword_1E68B4840);
      (*(v715 + 8))(v508, v718);
      v489 = *(v713 + 8);
      v490 = v326;
      goto LABEL_54;
    case 11:
      v287 = *(v248 + 4);
      v288 = *(v248 + 1);
      v714 = *v248;
      v711 = v288;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-10], "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v735 = &type metadata for SummaryCardViewLayout;
      v289 = v718;
      *(&v735 + 1) = v718;
      *&v736 = v709;
      *(&v736 + 1) = v709;
      *&v737 = v709;
      *(&v737 + 1) = v594;
      v290 = swift_getTupleTypeMetadata();
      v291 = v290[16];
      v292 = v290[20];
      v293 = v290[24];
      v294 = v290[28];
      (*(v715 + 32))(v699, &v252[v290[12]], v289);
      sub_1E6761420(&v252[v291], v685, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v292], v678, &qword_1ED096E68, &qword_1E68B4840);
      v295 = v656;
      sub_1E6761420(&v252[v293], v656, &qword_1ED096E68, &qword_1E68B4840);
      v296 = &v252[v294];
      v297 = v644;
      sub_1E6761420(v296, v644, &qword_1ED096E88, &qword_1E68B9CF0);
      LOBYTE(v735) = 11;
      v298 = v627;
      v299 = v717;
      v300 = v716;
      sub_1E68B3A30();
      v736 = v711;
      v735 = v714;
      *&v737 = v287;
      LOBYTE(v719) = 0;
      sub_1E676ABC4();
      v301 = v629;
      v302 = v712;
      sub_1E68B3AB0();
      if (v302)
      {
        (*(v628 + 8))(v298, v301);
        sub_1E6744A10(v297, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v295, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v678, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v685, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v699, v718);
        return (*(v713 + 8))(v300, v299);
      }

      LOBYTE(v735) = 1;
      sub_1E68B3AB0();
      LOBYTE(v735) = 2;
      sub_1E68B1820();
      sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
      sub_1E68B3A60();
      LOBYTE(v735) = 3;
      sub_1E68B3A60();
      LOBYTE(v735) = 4;
      v540 = v656;
      sub_1E68B3A60();
      v541 = v699;
      LOBYTE(v735) = 5;
      sub_1E68B1A10();
      sub_1E67BDEF8(&qword_1ED0980E8, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
      v549 = v644;
      sub_1E68B3A60();
      (*(v628 + 8))(0, v301);
      sub_1E6744A10(v549, &qword_1ED096E88, &qword_1E68B9CF0);
      sub_1E6744A10(v540, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v678, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v685, &qword_1ED096E68, &qword_1E68B4840);
      (*(v715 + 8))(v541, v718);
      v489 = *(v713 + 8);
      v490 = v300;
      goto LABEL_54;
    case 12:
      v714 = *v248;
      v315 = *(v248 + 2);
      LODWORD(v711) = v248[24];
      v316 = *(v248 + 4);
      v317 = *(v248 + 5);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout artwork title overlay ");
      *&v735 = &type metadata for TallCardViewLayout;
      v318 = v718;
      *(&v735 + 1) = v718;
      *&v736 = v709;
      *(&v736 + 1) = &type metadata for Overlay;
      v319 = swift_getTupleTypeMetadata();
      v320 = v319[12];
      v321 = v319[16];
      LODWORD(v710) = v248[v319[20]];
      v322 = v715;
      (*(v715 + 32))(v693, &v252[v320], v318);
      v323 = v650;
      sub_1E6761420(&v252[v321], v650, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 12;
      v324 = v620;
      v325 = v717;
      v326 = v716;
      sub_1E68B3A30();
      v735 = v714;
      *&v736 = v315;
      BYTE8(v736) = v711;
      *&v737 = v316;
      *(&v737 + 1) = v317;
      v327 = v324;
      LOBYTE(v719) = 0;
      sub_1E676AB1C();
      v328 = v624;
      v329 = v712;
      sub_1E68B3AB0();
      if (v329)
      {
        (*(v623 + 8))(v327, v328);
        sub_1E6744A10(v323, &qword_1ED096E68, &qword_1E68B4840);
        (*(v322 + 8))(v693, v318);
        return (*(v713 + 8))(v326, v325);
      }

      else
      {
        v491 = v710;
        LOBYTE(v735) = 1;
        sub_1E68B3AB0();
        LOBYTE(v735) = 2;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        v513 = v650;
        sub_1E68B3A60();
        LOBYTE(v735) = v491;
        LOBYTE(v719) = 3;
        sub_1E67A3D98();
        sub_1E68B3AB0();
        v474 = v717;
        v529 = v693;
        (*(v623 + 8))(v327, v328);
        sub_1E6744A10(v513, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v529, v718);
        return (*(v713 + 8))(v326, v474);
      }

    case 13:
      v432 = *(v248 + 5);
      v739 = *(v248 + 4);
      v740 = v432;
      v433 = *(v248 + 7);
      v741 = *(v248 + 6);
      v742 = v433;
      v434 = *(v248 + 1);
      v735 = *v248;
      v736 = v434;
      v435 = *(v248 + 3);
      v737 = *(v248 + 2);
      v738 = v435;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-6], "layout artwork title subtitle caption ");
      *&v719 = &type metadata for VerticalStackCardLayout;
      v436 = v718;
      *(&v719 + 1) = v718;
      *&v720 = v709;
      *(&v720 + 1) = v709;
      *&v721 = v709;
      v437 = swift_getTupleTypeMetadata();
      v438 = v437[16];
      v439 = v437[20];
      v440 = v437[24];
      v441 = v715;
      (*(v715 + 32))(v662, &v252[v437[12]], v436);
      sub_1E6761420(&v252[v438], v666, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v439], v677, &qword_1ED096E68, &qword_1E68B4840);
      v442 = &v252[v440];
      v443 = v655;
      sub_1E6761420(v442, v655, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v719) = 13;
      v444 = v631;
      v445 = v717;
      v446 = v716;
      sub_1E68B3A30();
      v723 = v739;
      v724 = v740;
      v725 = v741;
      v726 = v742;
      v719 = v735;
      v720 = v736;
      v721 = v737;
      v722 = v738;
      v751 = 0;
      sub_1E676AA74();
      v447 = v641;
      v448 = v712;
      sub_1E68B3AB0();
      if (!v448)
      {
        v504 = v441;
        LOBYTE(v719) = 1;
        v505 = v662;
        sub_1E68B3AB0();
        LOBYTE(v719) = 2;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        v522 = v666;
        sub_1E68B3A60();
        LOBYTE(v719) = 3;
        sub_1E68B3A60();
        LOBYTE(v719) = 4;
        v548 = v655;
        sub_1E68B3A60();
        (*(v634 + 8))(0, v641);
        sub_1E6744A10(v548, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v677, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v522, &qword_1ED096E68, &qword_1E68B4840);
        (*(v504 + 8))(v505, v718);
        goto LABEL_53;
      }

      (*(v634 + 8))(v444, v447);
      sub_1E6744A10(v443, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v677, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v666, &qword_1ED096E68, &qword_1E68B4840);
      (*(v441 + 8))(v662, v718);
LABEL_38:
      result = (*(v713 + 8))(v446, v445);
      break;
    case 14:
      v278 = v614;
      v279 = v610;
      v280 = v637;
      (*(v614 + 32))();
      LOBYTE(v735) = 14;
      v281 = v612;
      v282 = v717;
      v283 = v716;
      sub_1E68B3A30();
      v284 = v616;
      sub_1E68B3AB0();
      (*(v615 + 8))(v281, v284);
      (*(v278 + 8))(v279, v280);
      v285 = *(v713 + 8);
      v286 = v283;
      goto LABEL_24;
    case 15:
      v377 = v718;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v379 = *(TupleTypeMetadata3 + 48);
      v380 = *(TupleTypeMetadata3 + 64);
      v381 = v715;
      (*(v715 + 32))(v657, v252, v377);
      sub_1E6761420(&v252[v379], v698, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v380], v663, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v735) = 15;
      v382 = v630;
      v282 = v717;
      v383 = v716;
      sub_1E68B3A30();
      LOBYTE(v735) = 0;
      v384 = v633;
      v385 = v712;
      sub_1E68B3AB0();
      if (v385)
      {
        (*(v632 + 8))(v382, v384);
        sub_1E6744A10(v663, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v698, &qword_1ED096E68, &qword_1E68B4840);
        (*(v381 + 8))(v657, v377);
LABEL_23:
        v285 = *(v713 + 8);
        v286 = v383;
LABEL_24:
        v418 = v282;
LABEL_28:
        result = v285(v286, v418);
      }

      else
      {
        v493 = v377;
        LOBYTE(v735) = 1;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        v494 = v382;
        sub_1E68B3A60();
        v495 = v384;
        LOBYTE(v735) = 2;
        v517 = v663;
        sub_1E68B3A60();
        v518 = v657;
        (*(v632 + 8))(v494, v495);
        sub_1E6744A10(v517, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v698, &qword_1ED096E68, &qword_1E68B4840);
        (*(v381 + 8))(v518, v493);
LABEL_53:
        v489 = *(v713 + 8);
        v490 = v716;
LABEL_54:
        result = v489(v490, v717);
      }

      break;
    default:
      v750 = *(v248 + 30);
      v255 = *(v248 + 13);
      v747 = *(v248 + 12);
      v748 = v255;
      v749 = *(v248 + 14);
      v256 = *(v248 + 9);
      v743 = *(v248 + 8);
      v744 = v256;
      v257 = *(v248 + 11);
      v745 = *(v248 + 10);
      v746 = v257;
      v258 = *(v248 + 5);
      v739 = *(v248 + 4);
      v740 = v258;
      v259 = *(v248 + 7);
      v741 = *(v248 + 6);
      v742 = v259;
      v260 = *(v248 + 1);
      v735 = *v248;
      v736 = v260;
      v261 = *(v248 + 3);
      v737 = *(v248 + 2);
      v738 = v261;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v254);
      strcpy(&v559[-12], "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v719 = &type metadata for ActionCardViewLayout;
      v262 = v718;
      *(&v719 + 1) = v718;
      *&v720 = &type metadata for ActionCardViewStyle;
      *(&v720 + 1) = v709;
      *&v721 = v709;
      *(&v721 + 1) = v709;
      v263 = v691;
      *&v722 = v691;
      v264 = v707;
      *(&v722 + 1) = v707;
      v265 = swift_getTupleTypeMetadata();
      v266 = v265[12];
      LODWORD(v709) = v252[v265[16]];
      v267 = v265[20];
      v268 = v265[24];
      v269 = v265[28];
      v710 = v265[32];
      *&v711 = v265[36];
      (*(v715 + 32))(v670, &v252[v266], v262);
      sub_1E6761420(&v252[v267], v668, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v268], v674, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v252[v269], v672, &qword_1ED096E68, &qword_1E68B4840);
      v270 = v640;
      (*(v640 + 32))(v671, &v710[v252], v263);
      v271 = v706;
      v272 = v653;
      (*(v706 + 32))(v653, &v252[v711], v264);
      LOBYTE(v719) = 0;
      v273 = v576;
      v274 = v717;
      v275 = v716;
      sub_1E68B3A30();
      v731 = v747;
      v732 = v748;
      v733 = v749;
      v734 = v750;
      v727 = v743;
      v728 = v744;
      v729 = v745;
      v730 = v746;
      v723 = v739;
      v724 = v740;
      v725 = v741;
      v726 = v742;
      v719 = v735;
      v720 = v736;
      v721 = v737;
      v722 = v738;
      v751 = 0;
      sub_1E676B1AC();
      v276 = v712;
      sub_1E68B3AB0();
      if (v276)
      {
        (*(v581 + 8))(v273, v705);
        (*(v271 + 8))(v272, v707);
        (*(v270 + 8))(v671, v691);
        sub_1E6744A10(v672, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v674, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v668, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v670, v718);
        return (*(v713 + 8))(v275, v274);
      }

      else
      {
        v499 = v709;
        LOBYTE(v719) = 1;
        v500 = v273;
        sub_1E68B3AB0();
        LOBYTE(v719) = v499;
        v751 = 2;
        sub_1E67A3E94();
        sub_1E68B3AB0();
        v520 = v668;
        LOBYTE(v719) = 3;
        sub_1E68B1820();
        sub_1E67BDEF8(&qword_1EE2EDEA0, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
        sub_1E68B3A60();
        LOBYTE(v719) = 4;
        sub_1E68B3A60();
        LOBYTE(v719) = 5;
        sub_1E68B3A60();
        LOBYTE(v719) = 6;
        v552 = v691;
        sub_1E68B3AB0();
        LOBYTE(v719) = 7;
        v553 = v653;
        v554 = v552;
        v555 = v705;
        v556 = v554;
        sub_1E68B3A60();
        (*(v581 + 8))(v500, v555);
        (*(v271 + 8))(v553, v707);
        (*(v640 + 8))(v671, v556);
        sub_1E6744A10(v672, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v674, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v520, &qword_1ED096E68, &qword_1E68B4840);
        (*(v715 + 8))(v670, v718);
        return (*(v713 + 8))(v716, v717);
      }
  }

  return result;
}