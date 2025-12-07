uint64_t sub_1E585D8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AsyncStateValue(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E585D94C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E588BA34();
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      sub_1E585D9F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E585D9F8()
{
  if (!qword_1EE2CD2B8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2CD2B8);
    }
  }
}

uint64_t sub_1E585DA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncState.init(ttl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, uint64_t a5@<X3>, uint64_t x8_0@<X8>)
{
  v10 = type metadata accessor for AsyncStateValue(0, a1, a2, a5);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  swift_storeEnumTagMultiPayload();
  return AsyncState.init(value:ttl:)(v12, a1, a2, v13, x8_0, a3);
}

uint64_t AsyncState.init(value:ttl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = type metadata accessor for AsyncStateValue(0, a2, a3, a4);
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for AsyncState(0, a2, a3, v12);
  *(a5 + *(result + 36)) = a6;
  return result;
}

uint64_t AsyncKeyedState.init(ttl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v10 = type metadata accessor for AsyncState(255, a2, a4, a4);
  swift_getTupleTypeMetadata2();
  v11 = sub_1E588BE04();
  v12 = sub_1E585F3C8(v11, a1, v10, a3);

  *(a5 + 8) = v12;
  *a5 = a6;
  return result;
}

uint64_t type metadata accessor for JournalMode(uint64_t a1)
{
  result = qword_1EE2CE0C0;
  if (!qword_1EE2CE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E585DCDC(uint64_t a1)
{
  sub_1E585DD50(319);
  if (v1 <= 0x3F)
  {
    sub_1E585E514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E585DD50(uint64_t a1)
{
  if (!qword_1EE2CE360)
  {
    sub_1E588B9A4();
    sub_1E585E4C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2CE360);
    }
  }
}

uint64_t sub_1E585DDC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5876BB0;

  return sub_1E585DE7C(a1, v4);
}

uint64_t sub_1E585DE7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E585E264;

  return v6(a1);
}

uint64_t sub_1E585DF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E585E060(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E585E060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1E585E0AC, 0, 0);
}

uint64_t sub_1E585E0AC()
{
  v1 = v0[7];
  v2 = v1[12];
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = v1[16];
    v7 = v1[15];
    v10 = v1 + 13;
    v8 = v1[13];
    v9 = v10[1];
    v0[2] = v2;
    v0[3] = v8;
    v0[4] = v9;
    v0[5] = v7;
    v0[6] = v6;
    v11 = swift_allocObject();
    v0[11] = v11;
    v12 = v4[10];
    v11[2] = v12;
    v13 = v4[11];
    v11[3] = v13;
    v14 = v4[12];
    v11[4] = v14;
    v11[5] = v5;
    v11[6] = v3;

    v15 = swift_task_alloc();
    v0[12] = v15;
    v16 = type metadata accessor for JournalDatabasePlayer(0, v12, v13, v14);
    *v15 = v0;
    v15[1] = sub_1E5879BD4;

    return sub_1E5878CB0(sub_1E587A3F0, v11, v16);
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1E585E22C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E585E264()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E585E35C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E588BEE4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_1E58807E0(0, 0, v7, &unk_1E588E8C0, v9);
}

uint64_t sub_1E585E480()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1E585E4C8()
{
  result = qword_1EE2CD268;
  if (!qword_1EE2CD268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CD268);
  }

  return result;
}

void sub_1E585E514()
{
  if (!qword_1EE2CE368)
  {
    v0 = sub_1E588B9A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CE368);
    }
  }
}

double AsyncKeyedState.init()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  AsyncKeyedState.init(ttl:)(a1, a2, a3, a4, v8, 1.79769313e308);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  a5[1] = v7;
  return result;
}

void *Store.__allocating_init(feature:initialLocalState:initialSharedState:journalMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  v15 = type metadata accessor for RootStore(0, v13, *(v5 + 88), v14);
  sub_1E585E8CC(a4, v12);
  v16 = sub_1E585E930(a1, a2, a3, v12);
  WitnessTable = swift_getWitnessTable();
  swift_allocObject();
  v18 = sub_1E5861814(v16, v15, WitnessTable);

  sub_1E5860AF0(a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  v20 = swift_getAssociatedTypeWitness();
  (*(*(v20 - 8) + 8))(a2, v20);
  (*(*(v13 - 8) + 8))(a1, v13);
  return v18;
}

uint64_t sub_1E585E7D0(uint64_t a1)
{
  result = sub_1E588BAA4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E585E8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1E585E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v57 = a3;
  v59 = a2;
  v56 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v54 = *v4;
  v6 = v54[10];
  v68 = v54[11];
  v71 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = sub_1E588BB44();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E588BAE4();
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v53 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1E588BB44();
  v61 = swift_getWitnessTable();
  v55 = v12;
  v13 = sub_1E588BAE4();
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - v15;
  v16 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E588BAA4();
  v18 = *(v53 - 8);
  v19 = MEMORY[0x1EEE9AC00](v53);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v53 - v25;
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v53 - v28;
  (*(*(v71 - 8) + 16))(v4 + v54[14], v56);
  (*(v27 + 16))(v29, v57, v11);
  *(v4 + *(*v4 + 120)) = sub_1E588BB54();
  (*(v23 + 16))(v26, v59, v22);
  *(v4 + *(*v4 + 128)) = sub_1E588BB54();
  sub_1E588BB84();
  swift_allocObject();
  v4[2] = sub_1E588BB74();
  sub_1E588BA94();
  (*(v18 + 32))(v4 + qword_1EE2CF9F0, v21, v53);
  type metadata accessor for SideEffectRegistry();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = MEMORY[0x1E69E7CC8];
  *(v5 + *(*v5 + 136)) = v30;
  v59 = *(*v5 + 144);
  *(v5 + v59) = MEMORY[0x1E69E7CC0];
  v31 = v68;
  v32 = v71;
  v33 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v36 = type metadata accessor for JournalDatabase(0, v33, AssociatedConformanceWitness, v35);
  v37 = v58;
  sub_1E585E8CC(v70, v58);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  v38 = sub_1E585FBA8(v37, 1953460050, 0xE400000000000000, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v39 = (v5 + *(*v5 + 152));
  v39[3] = v36;
  v39[4] = swift_getWitnessTable();
  *v39 = v38;
  __tp.tv_sec = *(v5 + *(*v5 + 120));
  v40 = v60;
  sub_1E588BB94();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  v42[2] = v32;
  v42[3] = v31;
  v42[4] = v41;

  v43 = v62;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v63 + 8))(v40, v43);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  __tp.tv_sec = *(v5 + *(*v5 + 128));
  v44 = v64;
  sub_1E588BB94();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v47 = v68;
  v46[2] = v71;
  v46[3] = v47;
  v46[4] = v45;

  v48 = v66;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v67 + 8))(v44, v48);

  swift_beginAccess();
  sub_1E588BAF4();
  swift_endAccess();

  sub_1E586D79C(v39, &__tp);
  v49 = v73;
  v50 = v74;
  __swift_project_boxed_opaque_existential_1(&__tp, v73);
  v51 = *(v50 + 64);

  v51(sub_1E5881C50, v5, v49, v50);

  sub_1E5860AF0(v70);
  __swift_destroy_boxed_opaque_existential_0(&__tp);
  return v5;
}

uint64_t sub_1E585F344()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E585F37C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1E585F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1E588BE24())
  {
    sub_1E588C254();
    v13 = sub_1E588C244();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E588BE24();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1E588BE14())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E588C144();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E5872ACC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1E585F6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E585F814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5876BB0;

  return sub_1E585F8CC(a1, v4);
}

uint64_t sub_1E585F8CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E586149C;

  return v5(v2 + 32);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_1E585FA74()
{
  result = qword_1EE2CD270;
  if (!qword_1EE2CD270)
  {
    sub_1E588C074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD270);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E585FBA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(a1, v10);
  v11 = sub_1E585FE4C(v10, a4);
  v13 = v12;
  v14 = sub_1E5860B4C(MEMORY[0x1E69E7CC0]);
  swift_allocObject();
  v15 = sub_1E5860C28(v11, v13, a2, a3, v14, a4, a4);
  sub_1E5860AF0(a1);
  return v15;
}

uint64_t sub_1E585FE4C(uint64_t a1, double a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v81 = sub_1E588C044();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E588C074();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E588BBE4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E588B934();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E588B9A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v70 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v74 = &v70 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v70 - v22;
  v23 = type metadata accessor for JournalMode(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(a1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v73 = v11;
      v27 = *(v11 + 32);
      v75 = a1;
      v71 = v17;
      v72 = v10;
      v27(v17, v25, v10);
      strcpy(v87, "action.journal");
      HIBYTE(v87[1]) = -18;
      v28 = v83;
      (*(v83 + 13))(v9, *MEMORY[0x1E6968F68], v7);
      sub_1E5860A38();
      sub_1E588B994();
      (*(v28 + 8))(v9, v7);
      v84 = sub_1E588B984();
      v30 = v29;
      v31 = [objc_opt_self() sharedApplication];
      v32 = type metadata accessor for ApplicationBackgroundTaskProvider();
      swift_allocObject();
      v33 = sub_1E5884C90(v31);
      sub_1E585E4C8();
      v83 = v14;
      sub_1E588BBD4();
      v87[0] = MEMORY[0x1E69E7CC0];
      sub_1E585FA74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F8, &qword_1E588E8F0);
      sub_1E5860A8C();
      sub_1E588C0D4();
      (*(v79 + 104))(v80, *MEMORY[0x1E69E8098], v81);
      v34 = sub_1E588C084();
      v88 = v32;
      v89 = &off_1F5F57D40;
      v87[0] = v33;
      type metadata accessor for Database();
      v35 = swift_allocObject();
      v36 = __swift_mutable_project_boxed_opaque_existential_1(v87, v32);
      MEMORY[0x1EEE9AC00](v36);
      v38 = (&v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v39 + 16))(v38);
      v40 = sub_1E587B26C(v84, v30, 1, *v38, v34, v35);

      sub_1E5860AF0(v75);
      v41 = v72;
      v42 = *(v73 + 8);
      v42(v83, v72);
      v42(v71, v41);
      __swift_destroy_boxed_opaque_existential_0(v87);
      return v40 | 0x4000000000000000;
    }

    else
    {
      sub_1E5860AF0(a1);
      return 0x8000000000000000;
    }
  }

  else
  {
    v75 = a1;
    v71 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9600, &qword_1E588E8F8) + 48)];
    v72 = v10;
    v73 = v11;
    (*(v11 + 32))(v82, v25, v10);
    v87[0] = 0;
    v87[1] = 0xE000000000000000;
    MEMORY[0x1E692F890](1598310736, 0xE400000000000000);
    v86 = getpid();
    v44 = sub_1E588C354();
    MEMORY[0x1E692F890](v44);

    MEMORY[0x1E692F890](95, 0xE100000000000000);
    sub_1E588BF34();
    v45 = v83;
    v46 = *(v83 + 13);
    v46(v9, *MEMORY[0x1E6968F70], v7);
    sub_1E5860A38();
    sub_1E588B994();
    v47 = *(v45 + 8);
    v47(v9, v7);

    strcpy(v87, "action.journal");
    HIBYTE(v87[1]) = -18;
    v46(v9, *MEMORY[0x1E6968F68], v7);
    v48 = v74;
    sub_1E588B994();
    v47(v9, v7);
    v49 = [objc_opt_self() defaultManager];
    v50 = sub_1E588B954();
    v87[0] = 0;
    v51 = [v49 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:v87];

    if (v51)
    {
      v52 = v87[0];
      v83 = sub_1E588B984();
      v70 = v53;
      v54 = [objc_opt_self() sharedApplication];
      v55 = type metadata accessor for ApplicationBackgroundTaskProvider();
      swift_allocObject();
      v56 = sub_1E5884C90(v54);
      sub_1E585E4C8();
      sub_1E588BBD4();
      v87[0] = MEMORY[0x1E69E7CC0];
      sub_1E585FA74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F8, &qword_1E588E8F0);
      sub_1E5860A8C();
      sub_1E588C0D4();
      (*(v79 + 104))(v80, *MEMORY[0x1E69E8098], v81);
      v57 = sub_1E588C084();
      v88 = v55;
      v89 = &off_1F5F57D40;
      v87[0] = v56;
      type metadata accessor for Database();
      v58 = swift_allocObject();
      v59 = __swift_mutable_project_boxed_opaque_existential_1(v87, v55);
      MEMORY[0x1EEE9AC00](v59);
      v61 = (&v70 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v62 + 16))(v61);
      v63 = sub_1E587B26C(v83, v70, 1, *v61, v57, v58);

      sub_1E5860AF0(v75);
      v64 = v72;
      v65 = *(v73 + 8);
      v65(v48, v72);
      v65(v84, v64);
      v65(v82, v64);
      __swift_destroy_boxed_opaque_existential_0(v87);
      return v63;
    }

    else
    {
      v66 = v87[0];
      v67 = sub_1E588B924();

      v85 = v67;
      swift_willThrow();

      sub_1E5860AF0(v75);
      v68 = v72;
      v69 = *(v73 + 8);
      v69(v48, v72);
      v69(v84, v68);
      return (v69)(v82, v68);
    }
  }
}

unint64_t sub_1E5860A38()
{
  result = qword_1EE2CD2C0;
  if (!qword_1EE2CD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD2C0);
  }

  return result;
}

unint64_t sub_1E5860A8C()
{
  result = qword_1EE2CD290;
  if (!qword_1EE2CD290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF95F8, &qword_1E588E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD290);
  }

  return result;
}

uint64_t sub_1E5860AF0(uint64_t a1)
{
  v2 = type metadata accessor for JournalMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5860B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
    v3 = sub_1E588C244();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E587A4A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1E5860C28(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 136) = a5;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v10 = a7 - a6;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0u;
      *(v7 + 56) = 0u;

      sub_1E587AE04(a1, a2);
      sub_1E5878C3C(a1 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, &v21, v10);
      v13 = v22;
      v14 = v23;
      *(v7 + 96) = v21;
      *(v7 + 112) = v13;
      *(v7 + 128) = v14;
    }

    else
    {
      *(v7 + 120) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 56) = 0u;
    }
  }

  else
  {

    sub_1E5867620(v17, a3, a4, &v21, a6);
    v18 = v22;
    v19 = v23;
    *(v7 + 56) = v21;
    *(v7 + 72) = v18;
    *(v7 + 88) = v19;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0;
  }

  return v7;
}

unint64_t sub_1E5860DA8()
{
  result = qword_1EE2CD2B0;
  if (!qword_1EE2CD2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFF9618, &qword_1E588ED40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD2B0);
  }

  return result;
}

sqlite3 *sub_1E5860E18(void *a1, void *a2, char a3)
{
  v46 = a1;
  ppDb[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E588B934();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588B9A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  ppDb[0] = 0;
  if (!a3)
  {
    v44 = v6;
    v45 = v17;
    v21 = [objc_opt_self() defaultManager];
    v47[0] = 0;
    v22 = [v21 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:v47];

    v23 = v47[0];
    if (!v22)
    {
      v42 = v47[0];
      sub_1E588B924();

      return swift_willThrow();
    }

    sub_1E588B974();
    v24 = v23;

    v47[0] = v46;
    v47[1] = a2;
    v25 = v44;
    (*(v44 + 104))(v8, *MEMORY[0x1E6968F70], v5);
    sub_1E5860A38();
    sub_1E588B994();
    (*(v25 + 8))(v8, v5);
    sub_1E588B964();
    v26 = *(v10 + 8);
    v27 = v45;
    v26(v13, v45);
    v20 = sub_1E588B984();
    a2 = v28;
    v26(v16, v27);
    v26(v19, v27);
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v20 = v46;
    sub_1E5861394(v46, a2, 1u);
LABEL_6:

    goto LABEL_8;
  }

  a2 = 0xE800000000000000;
  v20 = 0x3A79726F6D656D3ALL;
LABEL_8:
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v29 = sub_1E588BAD4();
  __swift_project_value_buffer(v29, qword_1EE2CF9F8);

  v30 = sub_1E588BAB4();
  v31 = sub_1E588C024();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = 136315138;
    v34 = sub_1E586163C(v20, a2, v47);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_1E585C000, v30, v31, "Opening database connection: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E6930700](v33, -1, -1);
    MEMORY[0x1E6930700](v32, -1, -1);
  }

  else
  {
  }

  v35 = sub_1E588BD84();

  v36 = sqlite3_open_v2((v35 + 32), ppDb, 65542, 0);

  if (v36)
  {
    if (sqlite3_errstr(v36))
    {
      v37 = sub_1E588BDB4();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v41 = v36;
    *(v41 + 8) = v37;
    *(v41 + 16) = v39;
    *(v41 + 24) = 0;
    return swift_willThrow();
  }

  result = ppDb[0];
  if (!ppDb[0])
  {
    sub_1E5878530();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 0;
    *(v43 + 24) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E5861394(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E58613AC()
{
  v0 = sub_1E588BAD4();
  __swift_allocate_value_buffer(v0, qword_1EE2CF9F8);
  __swift_project_value_buffer(v0, qword_1EE2CF9F8);
  return sub_1E588BAC4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1E586149C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E58615BC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_1E586163C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5861708(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5861A1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1E5861708(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E588901C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E588C174();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E5861814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[3] = a1;
  v3[4] = a3;
  sub_1E588BB84();
  swift_allocObject();
  swift_unknownObjectRetain();
  v3[2] = sub_1E588BB74();
  v3[5] = MEMORY[0x1E69E7CC0];
  (*(a3 + 48))(a2, a3);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E5864D2C;
  *(v8 + 24) = v7;
  sub_1E588BBA4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  return v4;
}

uint64_t sub_1E58619AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58619E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5861A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5861A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5861B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5861B48(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  v4 = sub_1E588BD84();
  v5 = sqlite3_exec(a3, (v4 + 32), 0, 0, 0);

  if (v5)
  {
    if (sqlite3_errstr(v5))
    {
      v7 = sub_1E588BDB4();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E5861C0C(char *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v22 - v6;
  v22[2] = v3[12];
  v22[1] = v3[10];
  v8 = swift_getAssociatedTypeWitness();
  v24 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = *&v2[v3[19]];
  v15 = v3[22];
  swift_beginAccess();
  v16 = *(v5 + 16);
  v23 = v15;
  v16(v7, &v2[v15], AssociatedTypeWitness);
  v14(v7);
  v26 = v5;
  v27 = AssociatedTypeWitness;
  v17 = v7;
  v18 = v25;
  (*(v5 + 8))(v17, AssociatedTypeWitness);
  v14(v18);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB64();
  }

  v19 = *(v24 + 8);
  v19(v11, v8);
  v19(v13, v8);
  v20 = v23;
  swift_beginAccess();
  (*(v26 + 24))(&v2[v20], v18, v27);
  return swift_endAccess();
}

uint64_t sub_1E5861F38(uint64_t a1)
{
  v2 = v1;
  v83 = *MEMORY[0x1E69E9840];
  v67.isa = v1->isa;
  v4 = *(v67.isa + 11);
  v5 = *(v67.isa + 10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v60 - v9;
  v73 = swift_getAssociatedTypeWitness();
  v76 = *(v73 - 8);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v60 - v12;
  v72 = v4;
  v69 = v5;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  tv_sec = __tp.tv_sec;
  tv_nsec = __tp.tv_nsec;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v20 = sub_1E588BAD4();
  __swift_project_value_buffer(v20, qword_1EE2CF9F8);
  v21 = *(v14 + 16);
  v21(v19, a1, v13);
  v22 = sub_1E588BAB4();
  v62 = sub_1E588C004();
  v23 = os_log_type_enabled(v22, v62);
  v70 = v13;
  v71 = a1;
  v77 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    __tp.tv_sec = v61;
    *v24 = 136315394;
    v78[0] = v69;
    swift_getMetatypeMetadata();
    v25 = sub_1E588BD74();
    v27 = sub_1E586163C(v25, v26, &__tp.tv_sec);
    v60 = v22;
    v28 = v17;
    v29 = v27;
    v13 = v70;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v21(v28, v19, v13);
    v30 = sub_1E588BD74();
    v32 = v31;
    (*(v14 + 8))(v19, v13);
    v33 = sub_1E586163C(v30, v32, &__tp.tv_sec);

    *(v24 + 14) = v33;
    v34 = v60;
    _os_log_impl(&dword_1E585C000, v60, v62, "%s.%s", v24, 0x16u);
    v35 = v61;
    swift_arrayDestroy();
    MEMORY[0x1E6930700](v35, -1, -1);
    v36 = v24;
    a1 = v71;
    MEMORY[0x1E6930700](v36, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  type metadata accessor for SideEffect(0, v13, v37, v38);
  v79 = sub_1E588BC54();
  v39 = v75;
  sub_1E588BB34();
  v40 = v68;
  sub_1E588BB34();
  (*(v72 + 64))(v40, v39, &v79, a1, v69, v72);
  v41 = v63;
  sub_1E588BB34();
  v42 = v73;
  swift_getAssociatedConformanceWitness();
  v43 = sub_1E588BD04();
  v44 = *(v76 + 8);
  v76 += 8;
  v63 = v44;
  (v44)(v41, v42);
  if ((v43 & 1) == 0)
  {
    sub_1E5862918(v75);
  }

  v45 = v66;
  sub_1E588BB34();
  v46 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v47 = sub_1E588BD04();
  v48 = *(v77 + 8);
  v77 += 8;
  v48(v45, v46);
  if ((v47 & 1) == 0)
  {
    sub_1E5880AA0(v40);
  }

  v49 = tv_nsec / 1000000000.0 + tv_sec;
  swift_getWitnessTable();
  v50 = sub_1E588C134();

  WitnessTable = swift_getWitnessTable();
  v52 = v70;
  v53 = sub_1E5864DBC(v50, WitnessTable, v78);
  __tp.tv_sec = v79;
  MEMORY[0x1EEE9AC00](v53);
  *(&v60 - 2) = v2;
  *(&v60 - 1) = v78;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  sub_1E586D79C(v2 + *(v2->isa + 19), &__tp);
  v54 = v81;
  v55 = v82;
  __swift_project_boxed_opaque_existential_1(&__tp, v81);
  (*(v55 + 56))(v71, v54, v55, v49);
  v48(v40, AssociatedTypeWitness);
  (v63)(v75, v73);
  __swift_destroy_boxed_opaque_existential_0(&__tp);
  v58 = type metadata accessor for StoreProxy(0, v52, v56, v57);
  return (*(*(v58 - 8) + 8))(v78, v58);
}

uint64_t sub_1E5862858(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E5861C0C(a1);
  }

  return result;
}

uint64_t sub_1E5862918(uint64_t a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5862A94(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  v16 = type metadata accessor for JournalDatabaseRecorder(0, a7, a8, a9);
  *v15 = v9;
  v15[1] = sub_1E587A100;

  return sub_1E5867BAC(a6, v16, a1);
}

uint64_t sub_1E5862B78(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = (*(*(v4 - 8) + 80) + 96) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5876BB0;

  return sub_1E5862A94(v10, a1, v8, v9, (v1 + 7), v1 + v7, v4, v5, v6);
}

uint64_t Store.subscript.getter(void *a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 72))(a1, *(*a1 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v3);
}

{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 64))(a1, *(*a1 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v3);
}

uint64_t sub_1E5862D68(void *a1)
{
  v2 = (*a1 + *MEMORY[0x1E69E77B0]);
  v3 = *v2;
  v4 = *(*v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v11 = v1;
  v10[0] = *(v7 + 80);
  v10[1] = *(v8 + 8);
  v10[2] = *(v7 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AsyncState.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AsyncStateValue(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t sub_1E5862FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E586301C(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 152));
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8);
  LOBYTE(v5) = (*(v5 + 32))(v4, v5);
  result = (*(v7 + 8))(v9, v4);
  if ((v5 & 1) == 0)
  {
    return sub_1E5861F38(a1);
  }

  return result;
}

uint64_t sub_1E5863150()
{
  v85 = v0;
  (*(*(v0 + 976) + 16))(*(v0 + 992), *(v0 + 872), *(v0 + 968));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 992);
      v3 = *(v0 + 984);
      v4 = *(v0 + 952);
      v5 = *(v0 + 944);
      v6 = *(v0 + 936);
      v77 = *(v0 + 888);
      v79 = *(v0 + 880);
      v7 = *(v2 + 40);
      v80 = *(v2 + 48);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338);
      v9 = v8[20];
      v75 = *(v2 + v8[28]);
      v76 = *(v2 + v8[24]);
      v10 = (v2 + v8[32]);
      v11 = v10[1];
      v78 = *v10;
      *(v0 + 1040) = v11;
      v12 = *(v2 + 32);
      v13 = *(v2 + 16);
      *(v0 + 120) = *v2;
      *(v0 + 136) = v13;
      *(v0 + 152) = v12;
      (*(v5 + 32))(v4, v2 + v9, v6);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
      v15 = v14[12];
      v16 = v14[16];
      v17 = v14[20];
      v18 = (v3 + v14[24]);
      sub_1E5875F70(v0 + 120, v3);
      (*(v5 + 16))(v3 + v15, v4, v6);
      *(v3 + v16) = v76;
      *(v3 + v17) = v75;
      v21 = type metadata accessor for StoreProxy(0, v77, v19, v20);
      v22 = *(v21 - 8);
      (*(v22 + 16))(v0 + 744, v79, v21);
      v23 = swift_allocObject();
      *(v23 + 16) = v77;
      *(v23 + 24) = v7;
      *(v23 + 32) = v78;
      *(v23 + 40) = v11;
      (*(v22 + 32))(v23 + 48, v0 + 744, v21);
      *(v23 + 72) = v80;
      *v18 = &unk_1E588E350;
      v18[1] = v23;
      swift_storeEnumTagMultiPayload();

      v24 = swift_task_alloc();
      *(v0 + 1048) = v24;
      *v24 = v0;
      v24[1] = sub_1E58748E8;
      v25 = *(v0 + 984);
      v26 = *(v0 + 888);
      v27 = *(v0 + 880);

      return sub_1E58743D8(v25, v27, v26);
    }

    v47 = *(v0 + 992);
    v48 = *(v47 + 32);
    v49 = *(v47 + 16);
    *(v0 + 80) = *v47;
    *(v0 + 96) = v49;
    *(v0 + 112) = v48;
    sub_1E5875F70(v0 + 80, v0 + 640);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    swift_beginAccess();
    sub_1E5873E4C(&v81, v0 + 640);
    swift_endAccess();
    sub_1E5875FCC(v0 + 80);
    goto LABEL_14;
  }

  v29 = *(v0 + 992);
  v30 = *(v0 + 960);
  v31 = *(v0 + 944);
  v32 = *(v0 + 936);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340);
  v34 = v33[12];
  v35 = *(v29 + v33[16]);
  v36 = *(v29 + v33[20]);
  v37 = (v29 + v33[24]);
  v39 = *v37;
  v38 = v37[1];
  *(v0 + 1000) = v38;
  v41 = *v29;
  v40 = v29[1];
  *(v0 + 192) = *(v29 + 4);
  *(v0 + 160) = v41;
  *(v0 + 176) = v40;
  (*(v31 + 32))(v30, v29 + v34, v32);
  sub_1E5876B48(v0 + 160, v0 + 240, &qword_1ECFF94A0, &qword_1E588E358);
  if (!*(v0 + 264))
  {
    v51 = &qword_1ECFF94A0;
    v52 = &qword_1E588E358;
    v53 = v0 + 240;
LABEL_20:
    sub_1E586576C(v53, v51, v52);
    goto LABEL_21;
  }

  v42 = *(v0 + 896);
  v43 = *(v0 + 256);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 216) = v43;
  *(v0 + 232) = *(v0 + 272);
  swift_beginAccess();
  v44 = *(v42 + 112);
  if (!*(v44 + 16))
  {
LABEL_19:
    sub_1E5875FCC(v0 + 200);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    v51 = &qword_1ECFF94B0;
    v52 = &qword_1E588E380;
    v53 = v0 + 16;
    goto LABEL_20;
  }

  v45 = sub_1E587A464(v0 + 200);
  if ((v46 & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_1E587621C(*(v44 + 56) + (v45 << 6), v0 + 16);

  sub_1E586576C(v0 + 16, &qword_1ECFF94B0, &qword_1E588E380);
  if (!v35)
  {
    v72 = *(v0 + 960);
    v73 = *(v0 + 944);
    v74 = *(v0 + 936);

    sub_1E5875FCC(v0 + 200);
    (*(v73 + 8))(v72, v74);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
LABEL_14:

    v50 = *(v0 + 8);

    return v50();
  }

  if (v35 != 1)
  {
    sub_1E5875F70(v0 + 200, v0 + 680);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    swift_beginAccess();
    sub_1E5873E4C(&v81, v0 + 680);
    swift_endAccess();
  }

  sub_1E5875FCC(v0 + 200);
LABEL_21:
  v54 = *(v0 + 944);
  v55 = *(v0 + 936);
  v56 = *(v0 + 928);
  v57 = *(v0 + 888);
  v58 = *(v0 + 880);
  (*(v54 + 16))(v56, *(v0 + 960), v55);
  (*(v54 + 56))(v56, 0, 1, v55);
  v61 = type metadata accessor for StoreProxy(0, v57, v59, v60);
  v62 = *(v61 - 8);
  (*(v62 + 16))(v0 + 768, v58, v61);
  v63 = swift_allocObject();
  v63[2] = 0;
  v63[3] = 0;
  v63[4] = v57;
  v63[5] = v39;
  v63[6] = v38;
  (*(v62 + 32))(v63 + 7, v0 + 768, v61);

  v64 = sub_1E5875228(0, 0, v56, &unk_1E588E368, v63);
  *(v0 + 1008) = v64;
  sub_1E5876B48(v0 + 160, v0 + 320, &qword_1ECFF94A0, &qword_1E588E358);
  if (*(v0 + 344))
  {
    v65 = *(v0 + 880);
    v66 = *(v0 + 336);
    *(v0 + 280) = *(v0 + 320);
    *(v0 + 296) = v66;
    *(v0 + 312) = *(v0 + 352);
    LOBYTE(v81) = v36;
    sub_1E588BB04();
    swift_allocObject();

    v67 = sub_1E588BB14();
    sub_1E5873F10(v0 + 280, v65, &v81, v67);

    sub_1E5875FCC(v0 + 280);
  }

  else
  {
    sub_1E586576C(v0 + 320, &qword_1ECFF94A0, &qword_1E588E358);
  }

  v68 = swift_task_alloc();
  *(v0 + 1016) = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
  *(v0 + 1024) = v69;
  *v68 = v0;
  v68[1] = sub_1E58745BC;
  v70 = MEMORY[0x1E69E7288];
  v71 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v69, v64, v71, v69, v70);
}

uint64_t sub_1E58639D0()
{

  MEMORY[0x1E69307C0](v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1E5863A10()
{
  swift_unknownObjectRelease();

  MEMORY[0x1E69307C0](v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

Swift::Void __swiftcall ChangeObserver.publishCurrentValue()()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for Store(255, *(v1 + 80), *(v1 + 88), v2);
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC84();
  swift_getWitnessTable();
  sub_1E588BDF4();
}

uint64_t Store.send(_:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(a1, ObjectType, v3);
}

uint64_t sub_1E5863C04(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

void sub_1E5863CBC(uint64_t a1)
{
  sub_1E5863D44(319);
  if (v1 <= 0x3F)
  {
    sub_1E5863EA0(319);
    if (v2 <= 0x3F)
    {
      sub_1E586401C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E5863D44(uint64_t a1)
{
  if (!qword_1EE2CD238)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF94A0, &qword_1E588E358);
    sub_1E588BEE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF9720, qword_1E588F268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2CD238);
    }
  }
}

void sub_1E5863EA0(uint64_t a1)
{
  if (!qword_1EE2CD248)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E588BEE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF9720, qword_1E588F268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2CD248);
    }
  }
}

uint64_t sub_1E586401C()
{
  result = qword_1EE2CD240;
  if (!qword_1EE2CD240)
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &qword_1EE2CD240);
  }

  return result;
}

uint64_t AsyncStateValue.to<A>(transform:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v53 = a1;
  v56 = a5;
  v57 = a6;
  v52 = a2;
  v8 = sub_1E588BA34();
  v51 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v50 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v47 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v54, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v54 = v14;
    if (EnumCaseMultiPayload)
    {
      swift_getTupleTypeMetadata2();
      v48 = v19;
      (*(v19 + 32))(v22, v27, v18);
      v35 = *(v51 + 32);
      v36 = v11;
      v37 = v8;
      v38 = v22;
      v49 = v36;
      v35();
      v39 = v54;
      v53(v38);
      (*(v48 + 8))(v38, v18);
      v42 = v55;
      v43 = *(swift_getTupleTypeMetadata2() + 48);
      v44 = v57;
      (*(v50 + 32))(v57, v39, v42);
      (v35)(v44 + v43, v49, v37);
      type metadata accessor for AsyncStateValue(0, v42, v56, v45);
    }

    else
    {
      (*(v19 + 32))(v25, v27, v18);
      v53(v25);
      (*(v19 + 8))(v25, v18);
      v40 = v55;
      (*(v50 + 32))(v57, v17, v55);
      type metadata accessor for AsyncStateValue(0, v40, v56, v41);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v31 = *(v27 + 1);
    v32 = *(v27 + 4);
    v33 = v56;
    v34 = v57;
    *v57 = *v27;
    v34[1] = v31;
    *(v34 + 1) = *(v27 + 1);
    v34[4] = v32;
    type metadata accessor for AsyncStateValue(0, v55, v33, v30);
  }

  else
  {
    type metadata accessor for AsyncStateValue(0, v55, v56, v30);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AsyncStateValue.== infix(_:_:)(char *a1, char *a2, uint64_t a3)
{
  v55 = a1;
  v56 = a2;
  v51 = *(a3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v50 - v7;
  v50[1] = v9;
  v11 = type metadata accessor for AsyncStateValue(0, v10, v9, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v50 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = v50 - v20;
  v54 = v19;
  v22 = v50 + *(v19 + 48) - v20;
  v52 = v12;
  v23 = *(v12 + 16);
  v23(v50 - v20, v55, v11);
  v23(v22, v56, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v55 = v6;
    v56 = v8;
    v25 = a3;
    v26 = v51;
    if (EnumCaseMultiPayload)
    {
      v23(v15, v21, v11);
      v31 = sub_1E588BA34();
      v28 = v25;
      v32 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(*(v31 - 8) + 8))(&v15[v32], v31);
        v27 = v15;
        goto LABEL_16;
      }

      v33 = v15;
      v50[0] = v15;
      v34 = v26;
      v54 = v32;
      v35 = *(v26 + 32);
      v36 = v56;
      v35(v56, v33, v25);
      v37 = v55;
      v35(v55, v22, v28);
      v38 = v36;
      v39 = v28;
      v30 = sub_1E588BD04();
      v40 = *(v34 + 8);
      v40(v37, v39);
      v40(v38, v39);
      v41 = *(*(v31 - 8) + 8);
      v42 = v54;
      v41(&v22[v54], v31);
      v41((v50[0] + v42), v31);
    }

    else
    {
      v23(v17, v21, v11);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = v17;
        v28 = a3;
LABEL_16:
        (*(v26 + 8))(v27, v28);
        goto LABEL_17;
      }

      v43 = v26;
      v44 = *(v26 + 32);
      v45 = v56;
      v46 = v25;
      v44(v56, v17, v25);
      v47 = v55;
      v44(v55, v22, v46);
      v30 = sub_1E588BD04();
      v48 = *(v43 + 8);
      v48(v47, v46);
      v48(v45, v46);
    }

    (*(v52 + 8))(v21, v11);
    return v30 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      (*(v52 + 8))(v21, v11);
      v30 = 1;
      return v30 & 1;
    }

LABEL_17:
    (*(v53 + 8))(v21, v54);
    v30 = 0;
    return v30 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_17;
  }

  v29 = *(v52 + 8);
  v29(v22, v11);
  v29(v21, v11);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1E5864CD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5864D64(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5864DBC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, void *a4@<X8>)
{
  a4[2] = 0;
  swift_unknownObjectWeakInit();
  *a4 = a1;
  a4[2] = a3;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E5864E28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v34 = *(*a2 + 88);
  v33 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for SideEffect(0, AssociatedTypeWitness, v8, v9);
  v31 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v32 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_1E588BEE4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  v21 = type metadata accessor for StoreProxy(0, AssociatedTypeWitness, v19, v20);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v35, a3, v21);
  sub_1E588BEC4();

  v23 = sub_1E588BEB4();
  v24 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 2) = v23;
  *(v26 + 3) = v27;
  v28 = v34;
  *(v26 + 4) = v33;
  *(v26 + 5) = v28;
  *(v26 + 6) = a2;
  (*(v11 + 32))(&v26[v24], v32, v31);
  (*(v22 + 32))(&v26[v25], v35, v21);
  sub_1E58807E0(0, 0, v17, &unk_1E588EF08, v26);
}

uint64_t sub_1E586511C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for SideEffect(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v6));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v6));
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338) + 80);
      v13 = sub_1E588BEE4();
      (*(*(v13 - 8) + 8))(v8 + v12, v13);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      if (*(v8 + 24))
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + v6));
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340) + 48);
      v11 = sub_1E588BEE4();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

LABEL_10:
  v14 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69307C0](v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 24, v5 | 7);
}

uint64_t sub_1E586534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5865388(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v15 = v2[7];
  if (v15)
  {
    v17 = v2[10];
    v16 = v2[11];
    v28 = v10;
    v18 = v2[8];
    v29 = v2[9];
    v30 = v16;
    v19 = v14;
    v31 = v14;
    v20 = sub_1E588BEE4();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    (*(v7 + 16))(v10, a1, v6);
    v21 = (*(v7 + 80) + 96) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v6;
    *(v22 + 5) = *(v5 + 88);
    *(v22 + 6) = *(v5 + 96);
    *(v22 + 7) = v15;
    v23 = v28;
    v24 = v29;
    *(v22 + 8) = v18;
    *(v22 + 9) = v24;
    v25 = v17;
    *(v22 + 10) = v17;
    v26 = v30;
    *(v22 + 11) = v30;
    (*(v7 + 32))(&v22[v21], v23, v6);
    *&v22[(v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
    sub_1E587A418(v15, v18, v24, v25, v26);

    v27 = v31;
    sub_1E58856D8(0, 0, v31, &unk_1E588E8D8, v22);

    return sub_1E586576C(v27, qword_1ECFF9178, &qword_1E588D220);
  }

  return result;
}

uint64_t sub_1E5865668()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E586576C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E58657EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E58658D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5865920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E588BA54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5865A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E588BA54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5865B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5865B84()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5865BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5865C0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5865C44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E5865C84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5865C9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5865CD4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return *a1 == 0;
  }

  v7 = type metadata accessor for Database.Transaction(0);
  v8 = *(*(v7 - 8) + 48);
  v9 = a1 + *(a3 + 20);

  return v8(v9, a2, v7);
}

void *sub_1E5865D74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 1)
  {
    *result = 0;
  }

  else
  {
    v7 = type metadata accessor for Database.Transaction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v4 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1E5865F1C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E5865F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E588B9A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5865FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E588B9A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58660B4()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for JournalEntry(0, v1, *(v0 + 3), *(v0 + 4)) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(*(v1 - 8) + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5866194()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E58661DC()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for JournalEntry(0, v1, *(v0 + 3), *(v0 + 4)) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(*(v1 - 8) + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E58662BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58662F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E586632C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E5866374()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E58663C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(type metadata accessor for AsyncStateValue(0, v5, *(v4 + 56), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 96) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(*(v5 - 8) + 8))(v4 + v8, v5);
      v11 = sub_1E588BA34();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v11 - 8) + 8))(v4 + v8 + *(TupleTypeMetadata2 + 48), v11);
      break;
    case 0:
      (*(*(v5 - 8) + 8))(v4 + v8, v5);
      break;
  }

  return MEMORY[0x1EEE6BDD0](v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7);
}

uint64_t sub_1E58665B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E58665E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5866620()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866658()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866698()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E58666E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5866720()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E58667F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E586682C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5866864()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E586689C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for SideEffect(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 72) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v6));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v6));
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9490, &qword_1E588E338) + 80);
      v13 = sub_1E588BEE4();
      (*(*(v13 - 8) + 8))(v8 + v12, v13);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_10;
      }

      if (*(v8 + 24))
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + v6));
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9498, &qword_1E588E340) + 48);
      v11 = sub_1E588BEE4();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);
    }
  }

LABEL_10:
  v14 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x1E69307C0](v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 24, v5 | 7);
}

uint64_t sub_1E5866A9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5866AD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5866B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5866B64()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E5866BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

__n128 sub_1E5866D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 40) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v10 = *(v7 + 16);
  result = *(v7 + 32);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = result;
  return result;
}

__n128 sub_1E5866E34(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 48) & ~*(v4 + 80)));
  v6 = a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(a1 + 16);
  result = *(a1 + 32);
  *v6 = *a1;
  *(v6 + 16) = v8;
  *(v6 + 32) = result;
  return result;
}

uint64_t sub_1E5866EC0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5866F7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5866F8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5866F9C()
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](0);
  return sub_1E588C464();
}

uint64_t sub_1E5867008(uint64_t a1)
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](0);
  return sub_1E588C464();
}

uint64_t sub_1E586709C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E692FA50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E58670F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E588BF74();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1E5867148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E588BF84();
  *a1 = result;
  return result;
}

uint64_t sub_1E5867180(uint64_t a1, int a2)
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

uint64_t sub_1E58671A0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JournalEncoder.Failure(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JournalEncoder.Failure(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1E58672DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_1E5867328@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E5867338(uint64_t a1)
{
  sub_1E5867440(&qword_1EE2CD260, &unk_1E588D0F0);
  sub_1E5867440(&qword_1ECFF9158, &unk_1E588CF9C);
  return sub_1E588C264();
}

uint64_t sub_1E5867440(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5867488()
{
  result = qword_1ECFF9150;
  if (!qword_1ECFF9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9150);
  }

  return result;
}

uint64_t sub_1E5867518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E5867568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E58675B0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E5867620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  sub_1E588B8C4();
  swift_allocObject();
  v13 = sub_1E588B8B4();
  v14 = sub_1E588BEE4();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;

  sub_1E58807E0(0, 0, v12, &unk_1E588D230, v15);

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_1E5867790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E58677B4, 0, 0);
}

uint64_t sub_1E58677B4()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1E588C124();
  MEMORY[0x1E692F890](0xD00000000000001CLL, 0x80000001E5893E30);
  MEMORY[0x1E692F890](v2, v1);
  MEMORY[0x1E692F890](0xD000000000000039, 0x80000001E5893E50);
  v0[5] = 0xE000000000000000;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1E58678D8;

  return sub_1E5869B44(0, 0xE000000000000000);
}

uint64_t sub_1E58678D8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5867A14, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5867A14()
{
  v13 = v0;

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E588BAD4();
  __swift_project_value_buffer(v1, qword_1EE2CF9F8);

  v2 = sub_1E588BAB4();
  v3 = sub_1E588C014();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1E586163C(v7, v6, &v12);
    _os_log_impl(&dword_1E585C000, v2, v3, "Unable to create database table for %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E6930700](v9, -1, -1);
    MEMORY[0x1E6930700](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E5867BAC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a3;
  *(v4 + 16) = a1;
  v5 = *(a2 + 16);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5867C74, 0, 0);
}

uint64_t sub_1E5867C74()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = v5[3];
  v17 = v5[4];
  v18 = v5[1];
  v19 = v5[2];
  v20 = *v5;
  (*(v4 + 16))(v1, v0[2], v3);
  v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 2) = v3;
  *(v12 + 3) = *(v6 + 24);
  *(v12 + 4) = *(v6 + 32);
  *(v12 + 5) = v17;
  (*(v4 + 32))(&v12[v9], v1, v3);
  v13 = &v12[v10];
  *v13 = v18;
  *(v13 + 1) = v19;
  *&v12[v11] = v7;
  *&v12[(v11 + 15) & 0xFFFFFFFFFFFFFFF8] = v8;

  v14 = swift_task_alloc();
  v0[11] = v14;
  v14[2] = sub_1E5868638;
  v14[3] = v12;
  v14[4] = v20;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_1E5867E7C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E5867E7C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5868004;
  }

  else
  {

    v2 = sub_1E5867F98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5867F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5868004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E586807C(sqlite3 *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  v62 = a9;
  v66 = *(a8 - 8);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v63 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v58 - v22;
  v23 = sub_1E588BD64();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v65 = a5;
  v68 = a8;
  v24 = sub_1E588B8A4();
  if (!v10)
  {
    v42 = v25;
    v43 = v62;
    v61 = a1;
    v44 = v24;
    sub_1E588BD54();
    v45 = sub_1E588BD44();
    if (v46)
    {
      v59 = v46;
      v60 = v44;
      v62 = v42;
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      v47 = v45;
      sub_1E588C124();

      HIWORD(v67[1]) = -4864;
      MEMORY[0x1E692F890](a6, a7);
      MEMORY[0x1E692F890](0x5345554C41562060, 0xEE00293F202C3F28);
      v48 = v67[0];
      v49 = v67[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9160, &qword_1E588D208);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E588D150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9168, &qword_1E588D210);
      v51 = *(type metadata accessor for DatabaseBinding(0) - 8);
      v52 = *(v51 + 72);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1E588D160;
      v55 = (v54 + v53);
      *v55 = a2 - a3;
      swift_storeEnumTagMultiPayload();
      v56 = (v55 + v52);
      v57 = v59;
      *v56 = v47;
      v56[1] = v57;
      swift_storeEnumTagMultiPayload();
      *(inited + 32) = v54;
      sub_1E5878020(v48, v49, inited, v61);
      sub_1E58686F8(v60, v62);

      swift_setDeallocating();
      return sub_1E5868794(inited + 32);
    }

    type metadata accessor for JournalDatabaseRecorder.JournalDatabaseError(0, v68, v43, a10);
    swift_getWitnessTable();
    v11 = swift_allocError();
    swift_willThrow();
    sub_1E58686F8(v44, v42);
  }

  v26 = v64;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v27 = sub_1E588BAD4();
  __swift_project_value_buffer(v27, qword_1EE2CF9F8);
  v28 = v66;
  v29 = *(v66 + 16);
  v29(v26, v65, v68);
  v30 = sub_1E588BAB4();
  v31 = sub_1E588C014();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v68;
    v65 = v11;
    v34 = v26;
    v35 = v32;
    v62 = swift_slowAlloc();
    v67[0] = v62;
    *v35 = 141558274;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    v29(v63, v34, v33);
    v36 = sub_1E588BD74();
    v38 = v37;
    (*(v28 + 8))(v34, v33);
    v39 = sub_1E586163C(v36, v38, v67);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1E585C000, v30, v31, "Failed to encode: %{mask.hash}s", v35, 0x16u);
    v40 = v62;
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1E6930700](v40, -1, -1);
    MEMORY[0x1E6930700](v35, -1, -1);
  }

  else
  {

    (*(v28 + 8))(v26, v68);
  }

  return swift_willThrow();
}

uint64_t sub_1E5868638(sqlite3 *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E586807C(a1, *(v1 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 40), v1 + v2, *(v1 + v3), *(v1 + v3 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1E58686F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

uint64_t sub_1E5868794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9170, &qword_1E588D218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58687FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E5867790(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E58688C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E58689D8(uint64_t a1)
{
  result = sub_1E588B9A4();
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

uint64_t sub_1E5868AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + qword_1ECFF9218) = a4;
  *(v10 + 16) = a5;
  v11 = qword_1ECFF9200;
  v12 = sub_1E588B9A4();
  (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  v13 = (v10 + qword_1ECFF9208);
  *v13 = a2;
  v13[1] = a3;
  *(v10 + qword_1ECFF9210) = 0;
  return v10;
}

uint64_t sub_1E5868B94()
{
  v1 = qword_1ECFF9210;
  v2 = *(v0 + qword_1ECFF9210);
  if (v2)
  {
    [v2 close];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = qword_1ECFF9200;
  v5 = sub_1E588B9A4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_1E5868C50()
{
  sub_1E5868B94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5868CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5868CFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5868D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E5868DA0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5868DB8(void *result, int a2)
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

uint64_t sub_1E5868E04(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  v4 = *v2;
  v5 = sub_1E588BD64();
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 - 8);
  *(v3 + 64) = swift_task_alloc();
  v6 = sub_1E588B9A4();
  *(v3 + 72) = v6;
  *(v3 + 80) = *(v6 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v7 = v4[10];
  *(v3 + 104) = v7;
  *(v3 + 112) = *(v7 - 8);
  *(v3 + 120) = swift_task_alloc();
  v8 = v4[11];
  *(v3 + 128) = v8;
  v9 = v4[12];
  *(v3 + 136) = v9;
  v10 = type metadata accessor for JournalEntry(0, v7, v8, v9);
  *(v3 + 144) = v10;
  *(v3 + 152) = *(v10 - 8);
  *(v3 + 160) = swift_task_alloc();
  swift_getWitnessTable();
  v12 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E58690C8, v12, v11);
}

uint64_t sub_1E58690C8()
{
  v74 = v0;
  v73[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  (*(*(v0 + 112) + 16))(v4, *(v0 + 24), v5);
  sub_1E5881C54(v4, v5, v3, v2, v1, v7 - *(v6 + 16));
  sub_1E588B8C4();
  swift_allocObject();
  sub_1E588B8B4();
  swift_getWitnessTable();
  v71 = sub_1E588B8A4();
  v72 = v10;
  v11 = *(v0 + 40);

  v12 = qword_1ECFF9210;
  v13 = *(v11 + qword_1ECFF9210);
  if (v13)
  {
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    v17 = v13;
    sub_1E588BD54();
    v18 = sub_1E588BD34();
    v20 = v19;
    (*(v14 + 8))(v15, v16);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 144);
    if (v20 >> 60 == 15)
    {
      sub_1E58697FC();
      swift_allocError();
      swift_willThrow();
      sub_1E58686F8(v71, v72);
    }

    else
    {
      sub_1E5869850(v18, v20, v17);
      sub_1E5869850(v71, v72, v17);
      sub_1E58686F8(v71, v72);

      sub_1E5869A50(v18, v20);
    }

    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v24 = *(v0 + 40);
    v25 = [objc_opt_self() defaultManager];
    v26 = qword_1ECFF9200;
    v27 = sub_1E588B954();
    *(v0 + 16) = 0;
    v28 = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v0 + 16];

    v29 = *(v0 + 16);
    if (v28)
    {
      v30 = *(v0 + 40);
      type metadata accessor for JournalFile(0, *(v0 + 104), *(v0 + 128), *(v0 + 136));
      v31 = v30 + qword_1ECFF9208;
      v32 = *(v30 + qword_1ECFF9208);
      v33 = *(v31 + 8);
      v34 = v29;
      sub_1E5883438(v24 + v26, v32, v33);
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 88);
      v35 = *(v0 + 96);
      v38 = *(v0 + 72);
      v37 = *(v0 + 80);
      v39 = sub_1E588BAD4();
      __swift_project_value_buffer(v39, qword_1EE2CF9F8);
      (*(v37 + 16))(v36, v35, v38);
      v40 = sub_1E588BAB4();
      v41 = sub_1E588C004();
      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 80);
      v43 = *(v0 + 88);
      v45 = *(v0 + 72);
      if (v42)
      {
        v46 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v73[0] = v68;
        *v46 = 136315138;
        sub_1E5869A7C();
        v47 = sub_1E588C354();
        v67 = v41;
        v49 = v48;
        v70 = *(v44 + 8);
        v70(v43, v45);
        v50 = sub_1E586163C(v47, v49, v73);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1E585C000, v40, v67, "Opening journal stream at %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x1E6930700](v68, -1, -1);
        MEMORY[0x1E6930700](v46, -1, -1);
      }

      else
      {

        v70 = *(v44 + 8);
        v70(v43, v45);
      }

      v55 = objc_allocWithZone(MEMORY[0x1E695DFC0]);
      v56 = sub_1E588B954();
      v57 = [v55 initWithURL:v56 append:0];

      v59 = *(v0 + 152);
      v58 = *(v0 + 160);
      v60 = *(v0 + 144);
      v61 = *(v0 + 96);
      if (v57)
      {
        v69 = *(v0 + 144);
        v62 = *(v0 + 160);
        v63 = *(v0 + 72);
        [v57 open];
        v64 = *(v11 + v12);
        *(v11 + v12) = v57;
        v65 = v57;

        sub_1E5869850(v71, v72, v65);
        sub_1E58686F8(v71, v72);

        v70(v61, v63);
        (*(v59 + 8))(v62, v69);
      }

      else
      {
        v66 = *(v0 + 72);
        type metadata accessor for JournalFileRecorder.Failure(0, *(v0 + 104), *(v0 + 128), *(v0 + 136));
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        sub_1E58686F8(v71, v72);
        v70(v61, v66);
        (*(v59 + 8))(v58, v60);
      }
    }

    else
    {
      v52 = *(v0 + 152);
      v51 = *(v0 + 160);
      v53 = *(v0 + 144);
      v54 = v29;
      sub_1E588B924();

      swift_willThrow();
      sub_1E58686F8(v71, v72);
      (*(v52 + 8))(v51, v53);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1E58697FC()
{
  result = qword_1ECFF9320;
  if (!qword_1ECFF9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9320);
  }

  return result;
}

uint64_t sub_1E5869850(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1E588B9E4();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      sub_1E58686F8(a1, a2);
      v17 = 0;
      v13 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v12 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
LABEL_11:
      sub_1E5869AD4(a1, a2);
      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = HIDWORD(a1) - a1;
    goto LABEL_11;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = BYTE6(a2);
  if (!BYTE6(a2))
  {
LABEL_4:
    result = sub_1E58686F8(a1, a2);
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_12:
  v13 = sub_1E5889198(v12, 0);
  v16 = sub_1E588B9C4();
  sub_1E58686F8(a1, a2);
  result = (*(v7 + 8))(v10, v6);
  if (v16 != v12)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  if (v11 == 2)
  {
    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v11 != 1)
  {
LABEL_21:
    v17 = BYTE6(a2);
    goto LABEL_22;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v17 = HIDWORD(a1) - a1;
LABEL_22:
    [a3 write:v13 + 4 maxLength:v17];
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1E5869A50(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E58686F8(result, a2);
  }

  return result;
}

unint64_t sub_1E5869A7C()
{
  result = qword_1ECFF9328[0];
  if (!qword_1ECFF9328[0])
  {
    sub_1E588B9A4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF9328);
  }

  return result;
}

uint64_t sub_1E5869AD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E5869B44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5869B68, 0, 0);
}

uint64_t sub_1E5869B68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = sub_1E586DC98;
  v5[3] = v4;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E5869C9C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E5869C9C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5869E1C;
  }

  else
  {

    v2 = sub_1E5869DB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5869DB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5869E1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5869E88(uint64_t a1)
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E588BAD4();
  __swift_project_value_buffer(v1, qword_1EE2CF9F8);
  v2 = sub_1E588BAB4();
  v3 = sub_1E588C024();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E585C000, v2, v3, "Database:: attempting close", v4, 2u);
    MEMORY[0x1E6930700](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 80);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    sub_1E586DD9C((v6 + v7));
    os_unfair_lock_unlock((v6 + v8));
  }

  return result;
}

uint64_t sub_1E5869FFC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 80);
    MEMORY[0x1EEE9AC00](result);
    v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v2 + v4));
    sub_1E586DCD0((v2 + v3));
    os_unfair_lock_unlock((v2 + v4));
  }

  return result;
}

uint64_t sub_1E586A100(void *a1, uint64_t a2)
{
  v33 = a2;
  v4 = sub_1E588BBC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E588BBE4();
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v13, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_1E586D388(v13, type metadata accessor for Database.State);
  }

  v30 = v8;
  v32 = v2;
  v31 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1E586D388(a1, type metadata accessor for Database.State);
    v15 = *(v13 + 6);
    v16 = *(v13 + 1);
    v38 = *v13;
    v39 = v16;
    v40 = *(v13 + 2);
  }

  else
  {
    sub_1E586D388(a1, type metadata accessor for Database.State);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
    v19 = *(v18 + 48);
    v15 = *&v13[*(v18 + 64)];
    v20 = *(v13 + 1);
    v38 = *v13;
    v39 = v20;
    v40 = *(v13 + 2);
    v21 = sub_1E588BA54();
    (*(*(v21 - 8) + 8))(&v13[v19], v21);
  }

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v22 = sub_1E588BAD4();
  __swift_project_value_buffer(v22, qword_1EE2CF9F8);

  v23 = sub_1E588BAB4();
  v24 = sub_1E588C024();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(v15 + 16);

    _os_log_impl(&dword_1E585C000, v23, v24, "Database::close (%ld)", v25, 0xCu);
    MEMORY[0x1E6930700](v25, -1, -1);
  }

  else
  {
  }

  *a1 = v15;
  swift_storeEnumTagMultiPayload();
  v26 = v38;
  sub_1E586D79C(v33 + 40, v37);
  sub_1E5865C84((&v38 + 8), v36);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  sub_1E5865C84(v37, v27 + 24);
  sub_1E5865C84(v36, v27 + 64);
  aBlock[4] = sub_1E586D800;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_31;
  v28 = _Block_copy(aBlock);
  sub_1E588BBD4();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1E586D6D0(qword_1EE2CD2C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  sub_1E588C0D4();
  MEMORY[0x1E692FB50](0, v10, v7, v28);
  _Block_release(v28);
  (*(v31 + 8))(v7, v4);
  (*(v41 + 8))(v10, v30);
}

id sub_1E586A680(sqlite3 *a1, void *a2, uint64_t a3)
{
  sqlite3_close_v2(a1);
  v5 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1E586D79C(a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D8, &qword_1E588D5B8);
  type metadata accessor for UIBackgroundTaskIdentifier(0);
  result = swift_dynamicCast();
  if (result)
  {
    return [*(v5 + 16) endBackgroundTask_];
  }

  return result;
}

void sub_1E586A71C(sqlite3 **a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v11 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v13, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0) + 48);

      v31 = sub_1E588BA54();
      (*(*(v31 - 8) + 8))(&v13[v30], v31);
    }

    sub_1E586D848(v13);
  }

  else
  {
    v15 = *v13;
    v16 = sub_1E5860E18(a2, a3, v7);
    if (v5)
    {

      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v17 = sub_1E588BAD4();
      __swift_project_value_buffer(v17, qword_1EE2CF9F8);
      sub_1E5861394(a2, a3, v7);
      v18 = v5;
      v19 = sub_1E588BAB4();
      v20 = sub_1E588C014();
      sub_1E586DCB8(a2, a3, v7);

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 136446466;
        v41 = a2;
        v42 = a3;
        v43 = v7;
        sub_1E5861394(a2, a3, v7);
        v23 = sub_1E588BD74();
        v25 = sub_1E586163C(v23, v24, &v44);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v41 = v5;
        v26 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
        v27 = sub_1E588BD74();
        v29 = sub_1E586163C(v27, v28, &v44);

        *(v21 + 14) = v29;
        _os_log_impl(&dword_1E585C000, v19, v20, "Failed to open database connection to %{public}s: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6930700](v22, -1, -1);
        MEMORY[0x1E6930700](v21, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v32 = v16;
      sub_1E586D388(a1, type metadata accessor for Database.State);
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v33 = sub_1E588BAD4();
      __swift_project_value_buffer(v33, qword_1EE2CF9F8);

      v34 = sub_1E588BAB4();
      v35 = sub_1E588C024();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = *(v15 + 2);

        _os_log_impl(&dword_1E585C000, v34, v35, "Database::open (%ld)", v36, 0xCu);
        MEMORY[0x1E6930700](v36, -1, -1);
      }

      else
      {
      }

      v37 = [*(*__swift_project_boxed_opaque_existential_1((a5 + 40) *(a5 + 64)) + 16)];
      type metadata accessor for UIBackgroundTaskIdentifier(0);
      a1[4] = v38;
      v39 = sub_1E586D6D0(&qword_1EE2CD260, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1E588D0F0);
      *a1 = v32;
      a1[1] = v37;
      a1[5] = v39;
      a1[6] = v15;
      swift_storeEnumTagMultiPayload();
      sub_1E586AC08();
    }
  }
}

uint64_t sub_1E586AC08()
{
  v1 = sub_1E588BBC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E588BBE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = *(v0 + 88);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E586D1E4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  sub_1E588BBD4();
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1E586D6D0(qword_1EE2CD2C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  sub_1E588C0D4();
  MEMORY[0x1E692FB50](0, v8, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E586AEC0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E586AF18();
  }

  return result;
}

uint64_t sub_1E586AF18()
{
  v1 = v0;
  v2 = type metadata accessor for Database.TransactionContext(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v73 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v63 - v14);
  v16 = sub_1E588BC14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v1[11];
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  v22 = sub_1E588BC34();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  v24(v19, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_5;
  }

  v71 = v6;
  v6 = v1[10];
  v25 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v23 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v6[v23]);
  sub_1E586B85C(&v6[v25], v15);
  os_unfair_lock_unlock(&v6[v23]);
  sub_1E586D2B0(v15, v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1E586D320(v15);
    return sub_1E586D320(v13);
  }

  v3 = v2;
  v65 = 0;
  v67 = v25;
  v69 = v15;
  v22 = v72;
  sub_1E586D878(v13, v72, type metadata accessor for Database.TransactionContext);
  v27 = [*(*__swift_project_boxed_opaque_existential_1(v1 + 5 v1[8]) + 16)];
  type metadata accessor for UIBackgroundTaskIdentifier(0);
  v68 = v28;
  v76[3] = v28;
  v76[4] = sub_1E586D6D0(&qword_1EE2CD260, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1E588D0F0);
  v76[0] = v27;
  v15 = v1;
  if (qword_1EE2CD5E8 != -1)
  {
    goto LABEL_23;
  }

LABEL_5:
  v29 = sub_1E588BAD4();
  v30 = __swift_project_value_buffer(v29, qword_1EE2CF9F8);
  v31 = v22;
  v32 = v73;
  sub_1E586D734(v22, v73, type metadata accessor for Database.TransactionContext);
  v66 = v30;
  v33 = sub_1E588BAB4();
  v34 = sub_1E588C004();
  v35 = os_log_type_enabled(v33, v34);
  v70 = v3;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v64 = v23;
    v37 = v36;
    v38 = swift_slowAlloc();
    v75[0] = v38;
    *v37 = 136315138;
    sub_1E588BA54();
    sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v39 = sub_1E588C354();
    v41 = v40;
    sub_1E586D388(v32, type metadata accessor for Database.TransactionContext);
    v42 = sub_1E586163C(v39, v41, v75);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1E585C000, v33, v34, "Database::Executing %s transaction", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1E6930700](v38, -1, -1);
    v43 = v37;
    v23 = v64;
    v3 = v70;
    MEMORY[0x1E6930700](v43, -1, -1);
  }

  else
  {

    sub_1E586D388(v32, type metadata accessor for Database.TransactionContext);
  }

  v44 = v31;
  v45 = v31 + *(v3 + 20);
  v46 = type metadata accessor for Database.Transaction(0);
  v47 = *v31;
  v48 = v65;
  (*&v45[*(v46 + 24)])(v47);
  if (v48)
  {
    v75[0] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    sub_1E588BE74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
    sub_1E588BE84();
  }

  v49 = [*(*__swift_project_boxed_opaque_existential_1(v15 + 5 v15[8]) + 16)];
  if (v49 == 2)
  {
    v50 = sub_1E588BAB4();
    v51 = sub_1E588C024();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1E585C000, v50, v51, "Database:: preemptively closing database now that we are no longer active", v52, 2u);
      MEMORY[0x1E6930700](v52, -1, -1);
    }

    os_unfair_lock_lock(&v6[v23]);
    sub_1E586D718(&v6[v67]);
    os_unfair_lock_unlock(&v6[v23]);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v49);
    *(&v63 - 2) = v44;
    *(&v63 - 1) = v15;
    os_unfair_lock_lock(&v6[v23]);
    sub_1E586D3E8(&v6[v67]);
    os_unfair_lock_unlock(&v6[v23]);
  }

  v53 = v71;
  sub_1E586D734(v44, v71, type metadata accessor for Database.TransactionContext);
  v54 = sub_1E588BAB4();
  v55 = sub_1E588C004();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v75[0] = v57;
    *v56 = 136315138;
    sub_1E588BA54();
    sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v58 = sub_1E588C354();
    v60 = v59;
    sub_1E586D388(v53, type metadata accessor for Database.TransactionContext);
    v61 = sub_1E586163C(v58, v60, v75);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1E585C000, v54, v55, "Database::Completed executing %s transaction", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1E6930700](v57, -1, -1);
    MEMORY[0x1E6930700](v56, -1, -1);
  }

  else
  {

    sub_1E586D388(v53, type metadata accessor for Database.TransactionContext);
  }

  v62 = *__swift_project_boxed_opaque_existential_1(v15 + 5, v15[8]);
  sub_1E586D79C(v76, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D8, &qword_1E588D5B8);
  if (swift_dynamicCast())
  {
    [*(v62 + 16) endBackgroundTask_];
  }

  sub_1E586D320(v69);
  __swift_destroy_boxed_opaque_existential_0(v76);
  return sub_1E586D388(v44, type metadata accessor for Database.TransactionContext);
}

uint64_t sub_1E586B85C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Database.Transaction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  v11 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v13, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(v13 + 6);
      v16 = *(v13 + 2);
      v31[1] = *(v13 + 1);
      v31[2] = v16;
      v31[0] = *v13;
      v17 = *(v15 + 16);
      if (v17)
      {
        v32 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        sub_1E586D734(v15 + v32, v8, type metadata accessor for Database.Transaction);
        sub_1E586D388(a1, type metadata accessor for Database.State);
        sub_1E586D878(v8, v10, type metadata accessor for Database.Transaction);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
        v19 = *(v18 + 48);
        sub_1E586D810(v31, a1);
        v20 = sub_1E588BA54();
        (*(*(v20 - 8) + 16))(a1 + v19, v10, v20);
        v21 = *(v15 + 16);
        if (v21 < v17)
        {
          __break(1u);
        }

        else if (v21 == v17 - 1)
        {
LABEL_6:
          *(a1 + *(v18 + 64)) = v15;
          swift_storeEnumTagMultiPayload();
          v22 = *&v31[0];
          sub_1E586D848(v31);
          v23 = type metadata accessor for Database.TransactionContext(0);
          sub_1E586D878(v10, a2 + *(v23 + 20), type metadata accessor for Database.Transaction);
          *a2 = v22;
          return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
        }

        sub_1E586DAF8(v15, v15 + v32, 1, (2 * v17) | 1);
        v30 = v29;

        v15 = v30;
        goto LABEL_6;
      }

      v27 = v31;
    }

    else
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0) + 48);

      v26 = sub_1E588BA54();
      (*(*(v26 - 8) + 8))(&v13[v25], v26);
      v27 = v13;
    }

    sub_1E586D848(v27);
  }

  else
  {
    sub_1E586D388(v13, type metadata accessor for Database.State);
  }

  v28 = type metadata accessor for Database.TransactionContext(0);
  return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
}

void sub_1E586BC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Database.TransactionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D734(a1, v9, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1E586AC08();
      sub_1E586D848(v9);
    }

    else
    {
      sub_1E586D388(a1, type metadata accessor for Database.State);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v21 = *(v20 + 48);
      v22 = *&v9[*(v20 + 64)];
      v23 = *(v9 + 1);
      v25[0] = *v9;
      v25[1] = v23;
      v25[2] = *(v9 + 2);
      sub_1E586D810(v25, a1);
      *(a1 + 48) = v22;
      swift_storeEnumTagMultiPayload();
      sub_1E586AC08();
      sub_1E586D848(v25);
      v24 = sub_1E588BA54();
      (*(*(v24 - 8) + 8))(&v9[v21], v24);
    }
  }

  else
  {
    sub_1E586D388(v9, type metadata accessor for Database.State);
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v11 = sub_1E588BAD4();
    __swift_project_value_buffer(v11, qword_1EE2CF9F8);
    sub_1E586D734(a2, v6, type metadata accessor for Database.TransactionContext);
    v12 = sub_1E588BAB4();
    v13 = sub_1E588C024();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v25[0] = v15;
      *v14 = 136315138;
      sub_1E588BA54();
      sub_1E586D6D0(&qword_1ECFF93E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1E588C354();
      v18 = v17;
      sub_1E586D388(v6, type metadata accessor for Database.TransactionContext);
      v19 = sub_1E586163C(v16, v18, v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1E585C000, v12, v13, "Database closed while executing %s, closing connection", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E6930700](v15, -1, -1);
      MEMORY[0x1E6930700](v14, -1, -1);
    }

    else
    {

      sub_1E586D388(v6, type metadata accessor for Database.TransactionContext);
    }
  }
}

uint64_t sub_1E586C024()
{
  sub_1E586DCB8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

void sub_1E586C0E8(uint64_t a1)
{
  sub_1E586C170();
  if (v1 <= 0x3F)
  {
    sub_1E586C230(319);
    if (v2 <= 0x3F)
    {
      sub_1E586C2F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E586C170()
{
  if (!qword_1EE2CD2A8)
  {
    sub_1E586C1B8(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CD2A8);
    }
  }
}

void sub_1E586C1B8(uint64_t a1)
{
  if (!qword_1EE2CD2A0)
  {
    type metadata accessor for Database.Transaction(255);
    v1 = sub_1E588BE54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CD2A0);
    }
  }
}

void sub_1E586C230(uint64_t a1)
{
  if (!qword_1EE2CD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93B0, "T7");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2CD5D8);
    }
  }
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

void sub_1E586C2F0(uint64_t a1)
{
  if (!qword_1EE2CD5E0)
  {
    sub_1E588BA54();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93B0, "T7");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2CD5E0);
    }
  }
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

uint64_t sub_1E586C38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E586C3D4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1E586C458(uint64_t a1)
{
  sub_1E588BA54();
  if (v1 <= 0x3F)
  {
    sub_1E586C4F4(319);
    if (v2 <= 0x3F)
    {
      sub_1E586C56C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E586C4F4(uint64_t a1)
{
  if (!qword_1EE2CD288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C0, &qword_1E588E370);
    v1 = sub_1E588BE94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CD288);
    }
  }
}

unint64_t sub_1E586C56C()
{
  result = qword_1EE2CD220;
  if (!qword_1EE2CD220)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2CD220);
  }

  return result;
}

uint64_t sub_1E586C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Database.Transaction(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v9 + 28);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93B8, &qword_1E588D580);
  (*(*(v13 - 8) + 16))(&v11[v12], a1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1E588BA44();
  v15 = &v11[*(v9 + 32)];
  *v15 = sub_1E586D1AC;
  v15[1] = v14;
  v16 = *(a4 + 80);
  v21 = v11;
  v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v16 + v18));
  sub_1E586D1C8((v16 + v17));
  os_unfair_lock_unlock((v16 + v18));
  sub_1E586AC08();
  return sub_1E586D388(v11, type metadata accessor for Database.Transaction);
}

uint64_t sub_1E586C774(sqlite3 *a1, void (*a2)(sqlite3 *))
{
  sub_1E5861B48(0x6E69676562, 0xE500000000000000, a1);
  if (v2)
  {
    sub_1E5861B48(0x6B6361626C6C6F72, 0xE800000000000000, a1);
    return swift_willThrow();
  }

  else
  {
    a2(a1);
    return sub_1E5861B48(0x74696D6D6F63, 0xE600000000000000, a1);
  }
}

uint64_t sub_1E586C844(char *a1, uint64_t a2)
{
  v4 = sub_1E588BA54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Database.State(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E586D878(a1, v10, type metadata accessor for Database.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v10 + 6);
      v13 = *(v10 + 1);
      v31 = *v10;
      v32 = v13;
      v33 = *(v10 + 2);
      sub_1E586D810(&v31, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v14 = *(type metadata accessor for Database.Transaction(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E588D150;
      sub_1E586D734(a2, v16 + v15, type metadata accessor for Database.Transaction);
      v34 = v12;
      sub_1E586D8E0(v16);
      sub_1E586D848(&v31);
      *(a1 + 6) = v34;
    }

    else
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93E8, &qword_1E588D5C0);
      v22 = *(v21 + 48);
      v29 = *&v10[*(v21 + 64)];
      v23 = *(v10 + 1);
      v31 = *v10;
      v32 = v23;
      v33 = *(v10 + 2);
      (*(v5 + 32))(v7, &v10[v22], v4);
      v24 = *(v21 + 48);
      v30 = *(v21 + 64);
      sub_1E586D810(&v31, a1);
      (*(v5 + 16))(&a1[v24], v7, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v25 = *(type metadata accessor for Database.Transaction(0) - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1E588D150;
      sub_1E586D734(a2, v27 + v26, type metadata accessor for Database.Transaction);
      v34 = v29;
      sub_1E586D8E0(v27);
      (*(v5 + 8))(v7, v4);
      sub_1E586D848(&v31);
      *&a1[v30] = v34;
    }
  }

  else
  {
    v17 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
    v18 = *(type metadata accessor for Database.Transaction(0) - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E588D150;
    sub_1E586D734(a2, v20 + v19, type metadata accessor for Database.Transaction);
    *&v31 = v17;
    sub_1E586D8E0(v20);
    *a1 = v31;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E586CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E586CD28, 0, 0);
}

uint64_t sub_1E586CD28()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = *(v0 + 56);
  *(v7 + 64) = v3;

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v8[2] = sub_1E586D184;
  v8[3] = v7;
  v8[4] = v1;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1E586CEC0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E586CEC0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E586D088;
  }

  else
  {

    v2 = sub_1E586CFDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E586CFDC()
{
  v1 = *(v0 + 96);

  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_1E588BE04();
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E586D088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E586D100(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(sqlite3_stmt *), uint64_t a7, uint64_t a8)
{
  result = sub_1E5878584(a3, a4, a5, a6, a7, a1, a8);
  if (!v8)
  {
    v11 = result;
    swift_beginAccess();
    *(a2 + 16) = v11;
  }

  return result;
}

unint64_t sub_1E586D1F4()
{
  result = qword_1EE2CD298;
  if (!qword_1EE2CD298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C8, &qword_1E588D5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CD298);
  }

  return result;
}

uint64_t sub_1E586D278(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E586D2B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E586D320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93D0, &qword_1E588D5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E586D388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1E586D404(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
  v10 = *(type metadata accessor for Database.Transaction(0) - 8);
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
  v15 = *(type metadata accessor for Database.Transaction(0) - 8);
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

char *sub_1E586D5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F8, &qword_1E588D5D0);
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

uint64_t sub_1E586D6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E586D734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E586D79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E586D878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E586D8E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1E586D404(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Database.Transaction(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1E586DA0C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E586D5DC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1E586DAF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F0, &qword_1E588D5C8);
      v7 = *(type metadata accessor for Database.Transaction(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for Database.Transaction(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E586DCB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E586DD1C(uint64_t a1)
{
  result = type metadata accessor for Database.Transaction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E586DDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E588C374() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL || (sub_1E588C374() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E588C374() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586DF74(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 0x6968736572666572;
  v3 = 0x64656863746566;
  if (a1 != 3)
  {
    v3 = 0x64656C696166;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676E696863746566;
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

uint64_t sub_1E586E02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586DDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E586E068@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5872CB0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E13C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1E588C374() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5893FC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586E268(unsigned __int8 a1)
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](a1);
  return sub_1E588C464();
}

uint64_t sub_1E586E2B0(char a1)
{
  if (!a1)
  {
    return 0x6D6F44726F727265;
  }

  if (a1 == 1)
  {
    return 0x646F43726F727265;
  }

  return 0xD000000000000014;
}

uint64_t sub_1E586E318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586E3E0(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_1E586E40C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xEE00746C75736552)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E588C374();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E586E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E588C434();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E588C464();
}

uint64_t sub_1E586E4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586E13C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E586E520@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5872CB8();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E54C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586E318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E586E64C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5872CC0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586E678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E6CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E586404C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E586E774(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E7C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E81C@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1E586E868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E8BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E586E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586E40C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E586E968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586E9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL static AsyncState.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if ((static AsyncStateValue.== infix(_:_:)(a1, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for AsyncState(0, a3, a4, v8);
  return *&a1[*(v9 + 36)] == *&a2[*(v9 + 36)];
}

uint64_t sub_1E586EA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586EB58(char a1)
{
  sub_1E588C434();
  MEMORY[0x1E692FF30](a1 & 1);
  return sub_1E588C464();
}

uint64_t sub_1E586EBA0(char a1)
{
  if (a1)
  {
    return 7107700;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1E586EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E588C434();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E588C464();
}

uint64_t sub_1E586EC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586EA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E586EC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586ECB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncKeyedState.keys.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncState(0, a1[3], a1[5], a4);
  sub_1E588BC64();

  swift_getWitnessTable();
  return sub_1E588BF44();
}

uint64_t AsyncKeyedState.values.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[5];
  type metadata accessor for AsyncState(0, v8, v9, a4);
  v10 = a1[4];
  v18[11] = v6;
  v18[6] = v7;
  v18[7] = v8;
  v18[8] = v10;
  v18[9] = v9;
  v18[2] = v7;
  v18[3] = v10;
  v18[4] = swift_getKeyPath();
  v11 = sub_1E588BC74();
  v13 = type metadata accessor for AsyncStateValue(0, v8, v9, v12);

  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E586EEF4(sub_1E5872CC8, v18, v11, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  return v16;
}

uint64_t sub_1E586EEF4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_1E588BFB4();
  if (!v19)
  {
    return sub_1E588BE04();
  }

  v41 = v19;
  v45 = sub_1E588C1C4();
  v32 = sub_1E588C1D4();
  sub_1E588C1A4();
  result = sub_1E588BFA4();
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
      v22 = sub_1E588BFF4();
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
      sub_1E588C1B4();
      result = sub_1E588BFC4();
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

uint64_t AsyncKeyedState.subscript.getter@<X0>(void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[5];
  v8 = type metadata accessor for AsyncState(255, v6, v7, a3);
  v9 = sub_1E588C0A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *v4;
  sub_1E588BCB4();
  v14 = *(v8 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v8) != 1)
  {
    return (*(v14 + 32))(a4, v12, v8);
  }

  AsyncState.init(ttl:)(v6, v7, v13, v16, a4);
  result = (v15)(v12, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1E586F4D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  v6 = *(a2 + a3 - 16);
  v10[0] = *(a2 + a3 - 32);
  v10[1] = v6;
  v7 = type metadata accessor for AsyncKeyedState(0, v10);
  return AsyncKeyedState.subscript.getter(v7, v8, a4);
}

uint64_t sub_1E586F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v10[0] = *(a3 + a4 - 32);
  v10[1] = v6;
  v7 = type metadata accessor for AsyncKeyedState(0, v10);
  return sub_1E5872CF4(a1, a3, v7, v8);
}

uint64_t AsyncKeyedState.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1E5872CF4(a1, a2, a3, a4);
  (*(*(a3[2] - 8) + 8))(a2);
  v8 = type metadata accessor for AsyncState(0, a3[3], a3[5], v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*AsyncKeyedState.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v9 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v10 = type metadata accessor for AsyncState(0, a3[3], a3[5], v8);
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v6)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  v15 = a3[2];
  v9[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v9[7] = v16;
  if (v6)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v9[8] = v18;
  (*(v17 + 16))();
  AsyncKeyedState.subscript.getter(a3, v19, v14);
  return sub_1E586F824;
}

void sub_1E586F824(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v10 = (*a1)[3];
  v9 = (*a1)[4];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    (*(v10 + 16))((*a1)[4], v7, v11);
    sub_1E5872CF4(v9, v5, v12, v13);
    (*(v6 + 8))(v5, v8);
    v14 = *(v10 + 8);
    v14(v9, v11);
    v14(v7, v11);
  }

  else
  {
    sub_1E5872CF4((*a1)[5], v5, v12, a4);
    (*(v6 + 8))(v5, v8);
    (*(v10 + 8))(v7, v11);
  }

  free(v5);
  free(v7);
  free(v9);

  free(v4);
}

uint64_t static AsyncKeyedState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v10 = *(a1 + 8);
  v11 = type metadata accessor for AsyncState(0, a4, a6, a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68930](v10, v9, a3, v11, a5, WitnessTable);
}

uint64_t sub_1E586FA0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107700 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

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

uint64_t sub_1E586FAD8(char a1)
{
  if (a1)
  {
    return 0x656761726F7473;
  }

  else
  {
    return 7107700;
  }
}

uint64_t sub_1E586FB48(uint64_t a1)
{
  sub_1E588C434();
  sub_1E5865E98(v3, *v1);
  return sub_1E588C464();
}

uint64_t sub_1E586FBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E586FA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E586FBDC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5872CC0();
  *a2 = result;
  return result;
}

uint64_t sub_1E586FC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E586FC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AsyncKeyedState<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  v22 = a2[4];
  v23 = v8;
  v33[0] = v8;
  v33[1] = v9;
  v20 = v10;
  v21 = v9;
  v33[2] = v22;
  v33[3] = v10;
  type metadata accessor for AsyncKeyedState.CodingKeys(255, v33);
  swift_getWitnessTable();
  v11 = sub_1E588C344();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v19 = *(v6 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C494();
  LOBYTE(v33[0]) = 0;
  v15 = v27;
  sub_1E588C314();
  if (!v15)
  {
    v33[0] = v19;
    v32 = 1;
    type metadata accessor for AsyncState(255, v21, v20, v16);
    sub_1E588BC84();
    v30 = v24;
    v31 = v25;
    WitnessTable = swift_getWitnessTable();
    v28 = v26;
    v29 = WitnessTable;
    swift_getWitnessTable();
    sub_1E588C334();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t AsyncKeyedState<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v27 = a7;
  v28 = a4;
  v29 = a3;
  v30 = a6;
  v26 = a8;
  v39[0] = a2;
  v39[1] = a3;
  v31 = a5;
  v39[2] = a5;
  v39[3] = a9;
  type metadata accessor for AsyncKeyedState.CodingKeys(255, v39);
  swift_getWitnessTable();
  v11 = sub_1E588C2E4();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C484();
  if (v9)
  {
    v23 = a1;
  }

  else
  {
    v14 = v29;
    v15 = v30;
    v25 = a1;
    LOBYTE(v39[0]) = 0;
    v16 = v33;
    sub_1E588C2A4();
    v18 = v17;
    type metadata accessor for AsyncState(255, v14, a9, v19);
    sub_1E588BC84();
    v38 = 1;
    v36 = v15;
    v37 = v27;
    WitnessTable = swift_getWitnessTable();
    v34 = v28;
    v35 = WitnessTable;
    swift_getWitnessTable();
    sub_1E588C2C4();
    (*(v32 + 8))(v13, v16);
    v22 = v39[0];
    v23 = v25;
    v24 = v26;
    *v26 = v18;
    v24[1] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t AsyncState<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v14 = a2;
  type metadata accessor for AsyncState.CodingKeys(255, v6, v5, a4);
  swift_getWitnessTable();
  v7 = sub_1E588C344();
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E588C494();
  v21 = 0;
  type metadata accessor for AsyncStateValue(0, v6, v5, v10);
  v19 = v15;
  v20 = v16;
  swift_getWitnessTable();
  v11 = v18;
  sub_1E588C334();
  if (v11)
  {
    return (*(v17 + 8))(v9, v7);
  }

  v13 = v17;
  v21 = 1;
  sub_1E588C314();
  return (*(v13 + 8))(v9, v7);
}

uint64_t AsyncState<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v34 = a4;
  v30 = a6;
  v36 = type metadata accessor for AsyncStateValue(0, a2, a5, a4);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v28 - v9;
  type metadata accessor for AsyncState.CodingKeys(255, a2, a5, v10);
  swift_getWitnessTable();
  v35 = sub_1E588C2E4();
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v28 - v11;
  v14 = type metadata accessor for AsyncState(0, a2, a5, v13);
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v38;
  sub_1E588C484();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = v16;
  v20 = v31;
  v19 = v32;
  v41 = 0;
  v38 = v14;
  v39 = v33;
  v40 = v34;
  v21 = v36;
  swift_getWitnessTable();
  v22 = v35;
  sub_1E588C2C4();
  (*(v19 + 32))(v18, v37, v21);
  v41 = 1;
  sub_1E588C2A4();
  v24 = v23;
  (*(v20 + 8))(v12, v22);
  v25 = v38;
  *&v18[*(v38 + 36)] = v24;
  v26 = v29;
  (*(v29 + 16))(v30, v18, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v26 + 8))(v18, v25);
}

uint64_t AsyncStateValue<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a2;
  v93 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v79 = type metadata accessor for AsyncStateValue.FailedCodingKeys(255, v6, v5, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E588C344();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v63 - v9;
  v11 = type metadata accessor for AsyncStateValue.FetchedCodingKeys(255, v6, v5, v10);
  v12 = swift_getWitnessTable();
  v76 = v11;
  v75 = v12;
  v77 = sub_1E588C344();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v63 - v13;
  v91 = sub_1E588BA34();
  v84 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AsyncStateValue.RefreshingCodingKeys(255, v6, v5, v15);
  v89 = swift_getWitnessTable();
  v90 = v16;
  v88 = sub_1E588C344();
  v73 = *(v88 - 8);
  v17 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v63 - v18;
  v86 = *(v6 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v92 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v63 - v21;
  v23 = type metadata accessor for AsyncStateValue.FetchingCodingKeys(255, v6, v5, v22);
  v24 = swift_getWitnessTable();
  v72 = v23;
  v70 = v24;
  v71 = sub_1E588C344();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v63 - v25;
  type metadata accessor for AsyncStateValue.NoneCodingKeys(255, v6, v5, v26);
  v66 = swift_getWitnessTable();
  v67 = sub_1E588C344();
  v65 = *(v67 - 8);
  v27 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v63 - v28;
  v29 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncStateValue.CodingKeys(255, v6, v5, v32);
  swift_getWitnessTable();
  v100 = sub_1E588C344();
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v34 = &v63 - v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v99 = v34;
  sub_1E588C494();
  (*(v29 + 16))(v31, v96, v95);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v86;
    v42 = v87;
    v41 = v88;
    v43 = v94;
    if (EnumCaseMultiPayload)
    {
      v55 = v91;
      v56 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v40 + 32))(v92, v31, v6);
      v57 = v84;
      (*(v84 + 32))(v43, &v31[v56], v55);
      v106 = 3;
      v58 = v74;
      v59 = v99;
      sub_1E588C2F4();
      v105 = 0;
      v60 = v77;
      v61 = v98;
      sub_1E588C334();
      if (v61)
      {
        (*(v80 + 8))(v58, v60);
        (*(v57 + 8))(v94, v55);
        (*(v40 + 8))(v92, v6);
        return (*(v97 + 8))(v59, v100);
      }

      else
      {
        v104 = 1;
        sub_1E5872F6C(&qword_1EE2CE358, MEMORY[0x1E6969538]);
        v62 = v94;
        sub_1E588C334();
        (*(v80 + 8))(v58, v60);
        (*(v84 + 8))(v62, v55);
        (*(v40 + 8))(v92, v6);
        return (*(v97 + 8))(v99, v100);
      }
    }

    else
    {
      v44 = v85;
      v45 = v6;
      (*(v86 + 32))(v85, v31, v6);
      v103 = 2;
      v46 = v99;
      sub_1E588C2F4();
      sub_1E588C334();
      (*(v73 + 8))(v42, v41);
      (*(v40 + 8))(v44, v45);
      return (*(v97 + 8))(v46, v100);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v47 = *(v31 + 3);
    v96 = *(v31 + 2);
    v110 = 4;
    v48 = v81;
    v50 = v99;
    v49 = v100;
    sub_1E588C2F4();
    v109 = 0;
    v51 = v83;
    v52 = v98;
    sub_1E588C304();
    if (v52)
    {
    }

    else
    {
      v98 = v47;

      v108 = 1;
      sub_1E588C324();
      v107 = 2;
      sub_1E588C304();
    }

    (*(v82 + 8))(v48, v51);
    return (*(v97 + 8))(v50, v49);
  }

  else
  {
    v36 = v99;
    if (EnumCaseMultiPayload == 3)
    {
      v101 = 0;
      v37 = v64;
      v38 = v100;
      sub_1E588C2F4();
      (*(v65 + 8))(v37, v67);
      return (*(v97 + 8))(v36, v38);
    }

    else
    {
      v102 = 1;
      v53 = v68;
      v54 = v100;
      sub_1E588C2F4();
      (*(v69 + 8))(v53, v71);
      return (*(v97 + 8))(v36, v54);
    }
  }
}

uint64_t AsyncStateValue<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v123 = a3;
  v103 = a5;
  v9 = type metadata accessor for AsyncStateValue.FailedCodingKeys(255, a2, a4, a6);
  WitnessTable = swift_getWitnessTable();
  v116 = v9;
  v101 = sub_1E588C2E4();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v118 = &v88 - v10;
  v12 = type metadata accessor for AsyncStateValue.FetchedCodingKeys(255, a2, a4, v11);
  v13 = swift_getWitnessTable();
  v114 = v12;
  v113 = v13;
  v99 = sub_1E588C2E4();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v117 = &v88 - v14;
  v16 = type metadata accessor for AsyncStateValue.RefreshingCodingKeys(255, a2, a4, v15);
  v17 = swift_getWitnessTable();
  v111 = v16;
  v110 = v17;
  v97 = sub_1E588C2E4();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v112 = &v88 - v18;
  v20 = type metadata accessor for AsyncStateValue.FetchingCodingKeys(255, a2, a4, v19);
  v21 = swift_getWitnessTable();
  v109 = v20;
  v108 = v21;
  v95 = sub_1E588C2E4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v107 = &v88 - v22;
  v24 = type metadata accessor for AsyncStateValue.NoneCodingKeys(255, a2, a4, v23);
  v25 = swift_getWitnessTable();
  v106 = v24;
  v105 = v25;
  v93 = sub_1E588C2E4();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v104 = &v88 - v26;
  type metadata accessor for AsyncStateValue.CodingKeys(255, a2, a4, v27);
  v126 = swift_getWitnessTable();
  v28 = sub_1E588C2E4();
  v120 = *(v28 - 8);
  v121 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v88 - v29;
  v122 = a2;
  v119 = type metadata accessor for AsyncStateValue(0, a2, a4, v31);
  v102 = *(v119 - 8);
  v32 = MEMORY[0x1EEE9AC00](v119);
  v34 = (&v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v88 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v88 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v88 - v41;
  v43 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v124 = v30;
  v44 = v131;
  sub_1E588C484();
  if (v44)
  {
    goto LABEL_11;
  }

  v90 = v40;
  v89 = v34;
  v91 = v37;
  v131 = 0;
  v126 = v42;
  v45 = v121;
  v46 = v124;
  *&v127 = sub_1E588C2D4();
  sub_1E588BE54();
  swift_getWitnessTable();
  *&v129 = sub_1E588C0C4();
  *(&v129 + 1) = v47;
  *&v130 = v48;
  *(&v130 + 1) = v49;
  sub_1E588C0B4();
  swift_getWitnessTable();
  sub_1E588BFD4();
  v50 = v127;
  if (v127 == 5 || (v88 = v129, v127 = v129, v128 = v130, (sub_1E588BFE4() & 1) == 0))
  {
    v55 = sub_1E588C164();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9400, &qword_1E588D620);
    *v57 = v119;
    sub_1E588C284();
    sub_1E588C154();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    (*(v120 + 8))(v46, v45);
    goto LABEL_10;
  }

  if (v50 <= 1)
  {
    if (v50)
    {
      LOBYTE(v127) = 1;
      v73 = v107;
      v74 = v131;
      sub_1E588C274();
      if (v74)
      {
        goto LABEL_22;
      }

      (*(v94 + 8))(v73, v95);
      (*(v120 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v62 = v126;
      v63 = v119;
    }

    else
    {
      LOBYTE(v127) = 0;
      v60 = v104;
      v61 = v131;
      sub_1E588C274();
      if (v61)
      {
        goto LABEL_22;
      }

      (*(v92 + 8))(v60, v93);
      (*(v120 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v62 = v126;
      v63 = v119;
    }

    swift_storeEnumTagMultiPayload();
    v86 = v125;
    v87 = v103;
    v85 = v102;
    goto LABEL_27;
  }

  if (v50 == 2)
  {
    LOBYTE(v127) = 2;
    v64 = v112;
    v65 = v131;
    sub_1E588C274();
    if (!v65)
    {
      v66 = v90;
      v67 = v97;
      sub_1E588C2C4();
      v68 = v120;
      (*(v96 + 8))(v64, v67);
      (*(v68 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v63 = v119;
LABEL_26:
      swift_storeEnumTagMultiPayload();
      v85 = v102;
      v62 = v126;
      (*(v102 + 32))(v126, v66, v63);
      v86 = v125;
      v87 = v103;
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v50 != 3)
  {
    LOBYTE(v127) = 4;
    v69 = v118;
    v70 = v131;
    sub_1E588C274();
    v71 = v120;
    if (!v70)
    {
      LOBYTE(v127) = 0;
      v72 = v101;
      v131 = sub_1E588C294();
      v77 = v76;
      LOBYTE(v127) = 1;
      v123 = sub_1E588C2B4();
      LOBYTE(v127) = 2;
      v78 = sub_1E588C294();
      v79 = *(v100 + 8);
      v122 = v78;
      v80 = v69;
      v82 = v81;
      v79(v80, v72);
      (*(v71 + 8))(v46, v45);
      swift_unknownObjectRelease();
      v83 = v89;
      *v89 = v131;
      v83[1] = v77;
      v84 = v122;
      v83[2] = v123;
      v83[3] = v84;
      v83[4] = v82;
      v63 = v119;
      swift_storeEnumTagMultiPayload();
      v85 = v102;
      v62 = v126;
      (*(v102 + 32))(v126, v83, v63);
      v86 = v125;
      v87 = v103;
LABEL_27:
      (*(v85 + 32))(v87, v62, v63);
      v58 = v86;
      return __swift_destroy_boxed_opaque_existential_0(v58);
    }

LABEL_22:
    (*(v120 + 8))(v46, v45);
    goto LABEL_10;
  }

  LOBYTE(v127) = 3;
  v51 = v117;
  v52 = v131;
  sub_1E588C274();
  v53 = v46;
  v54 = v120;
  if (!v52)
  {
    LOBYTE(v127) = 0;
    v66 = v91;
    v75 = v99;
    sub_1E588C2C4();
    sub_1E588BA34();
    swift_getTupleTypeMetadata2();
    LOBYTE(v127) = 1;
    sub_1E5872F6C(qword_1ECFF9408, MEMORY[0x1E6969558]);
    sub_1E588C2C4();
    (*(v98 + 8))(v51, v75);
    (*(v54 + 8))(v124, v45);
    swift_unknownObjectRelease();
    v63 = v119;
    goto LABEL_26;
  }

  (*(v120 + 8))(v53, v45);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v58 = v125;
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t AsyncKeyedState<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  if (*v3 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1E692FF40](*&v6);
  type metadata accessor for AsyncState(0, a2[3], *(a3 + 8), v7);
  swift_getWitnessTable();
  return sub_1E588BC94();
}

uint64_t AsyncKeyedState<>.hashValue.getter(void *a1, uint64_t a2)
{
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_1E588C434();
  AsyncKeyedState<>.hash(into:)(v7, a1, a2);
  return sub_1E588C464();
}

uint64_t sub_1E5872524(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1E588C434();
  AsyncKeyedState<>.hash(into:)(v6, a2, v4);
  return sub_1E588C464();
}

uint64_t AsyncState<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AsyncStateValue(0, *(a2 + 16), *(a3 + 8), a4);
  AsyncStateValue<>.hash(into:)(a1, v8, a3);
  v9 = *(v4 + *(a2 + 36));
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  return MEMORY[0x1E692FF40](*&v9);
}

uint64_t AsyncState<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E588C434();
  AsyncState<>.hash(into:)(v6, a1, a2, v4);
  return sub_1E588C464();
}

uint64_t AsyncStateValue<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[1] = a3;
  v6 = sub_1E588BA34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v4, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v12 + 32))(v15, v17, v11);
      (*(v7 + 32))(v10, &v17[v22], v6);
      MEMORY[0x1E692FF30](3);
      sub_1E588BCE4();
      sub_1E5872F6C(&qword_1EE2CE350, MEMORY[0x1E6969540]);
      sub_1E588BCE4();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v12 + 32))(v15, v17, v11);
      MEMORY[0x1E692FF30](2);
      sub_1E588BCE4();
    }

    return (*(v12 + 8))(v15, v11);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v20 = *(v17 + 2);
    MEMORY[0x1E692FF30](4);
    sub_1E588BD94();

    MEMORY[0x1E692FF30](v20);
    sub_1E588BD94();
  }

  else
  {
    return MEMORY[0x1E692FF30](EnumCaseMultiPayload != 3);
  }
}

uint64_t AsyncStateValue<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E588C434();
  AsyncStateValue<>.hash(into:)(v5, a1, a2);
  return sub_1E588C464();
}

uint64_t sub_1E5872A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1E588C434();
  a4(v8, a2, v6);
  return sub_1E588C464();
}

unint64_t sub_1E5872ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E588BCD4();

  return sub_1E5872B28(a1, v6, a2, a3);
}

unint64_t sub_1E5872B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1E588BD04();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1E5872CF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncState(255, a3[3], a3[5], a4);
  v8 = sub_1E588C0A4();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = a3[2];
  MEMORY[0x1EEE9AC00](v9);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v15 = *(v7 - 8);
  (*(v15 + 16))(v11, a1, v7);
  (*(v15 + 56))(v11, 0, 1, v7);
  sub_1E588BC84();
  return sub_1E588BCC4();
}

uint64_t sub_1E5872F6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E588BA34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5873004(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E588BA34() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = 40;
  if (v7 > 0x28)
  {
    v8 = v7;
  }

  v9 = 252 - (1u >> (8 * v8));
  if (v8 >= 4)
  {
    v9 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_29;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((~(-1 << v11) + a2 - v9) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v8);
      if (v9 <= (v16 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v16);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v15) + 1;
}

void sub_1E58731CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E588BA34() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = v9 + 1;
  if (v10 >= a3)
  {
    v12 = 0;
    if (v10 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v9] = -a2;
        return;
      }

      *&a1[v11] = 0;
    }

    else if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v12 = 1;
  if (v11 <= 3)
  {
    v13 = ((~(-1 << (8 * v11)) + a3 - v10) >> (8 * v11)) + 1;
    v14 = HIWORD(v13);
    if (v13 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v13 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v12 = 4;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v10 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v17 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v17;
    v18 = 1;
    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = (v17 >> (8 * v11)) + 1;
  if (v9 == -1)
  {
LABEL_39:
    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v19 = v17 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v19;
    if (v12 > 1)
    {
LABEL_43:
      if (v12 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v12 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v12)
  {
    a1[v11] = v18;
  }
}

uint64_t sub_1E5873408(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E588BA34() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = 40;
  if (v7 > 0x28)
  {
    v8 = v7;
  }

  v9 = 252 - (1u >> (8 * v8));
  if (v8 >= 4)
  {
    v9 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v9 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (v15)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    v18 = *(a1 + v8);
    if (v9 <= (v18 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v18);
    }
  }

  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = *(a1 + v10);
  if (!v15)
  {
    goto LABEL_31;
  }

LABEL_27:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v9 + (v11 | v17) + 1;
}

void sub_1E5873588(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E588BA34() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v10)
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *(a1 + v11) = 0;
    }

    else if (v15)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      *(a1 + v9) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = a2 - v10;
  }

  else
  {
    v16 = 1;
  }

  if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v15)
  {
    *(a1 + v11) = v16;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E587373C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5873784(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E58737E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5873874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SideEffectCollisionBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SideEffectCollisionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SideEffectDisposalBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SideEffectDisposalBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5873E4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v4;
    v5 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1E587AB4C(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E5875FCC(a2);
    *v2 = v8;
  }

  else
  {
    sub_1E586576C(a1, &qword_1ECFF94B0, &qword_1E588E380);
    sub_1E587629C(a2, v9);
    sub_1E5875FCC(a2);
    return sub_1E586576C(v9, &qword_1ECFF94B0, &qword_1E588E380);
  }

  return result;
}

uint64_t sub_1E5873F10(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a3;
  sub_1E5875F70(a1, v17);
  v7 = *a2;
  v11 = MEMORY[0x1E69E5FE0];
  v12 = MEMORY[0x1E69E5FE8];
  *&v10 = v7;
  if (v6 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  sub_1E586DDBC(&v10, v13);
  v14 = Strong;
  v15 = v6;
  v16 = a4;
  swift_beginAccess();

  sub_1E5873E4C(v13, v17);
  return swift_endAccess();
}

uint64_t sub_1E5873FD4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 112);
  v23[2] = a1;

  v5 = sub_1E5876518(sub_1E58764F8, v23, v4);

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5[8];
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    sub_1E5875F70(v5[6] + 40 * v13, v29);
    sub_1E587621C(v5[7] + (v13 << 6), &v30);
    swift_beginAccess();
    v14 = sub_1E587A464(v29);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v2 + 112);
      v24 = v18;
      *(v2 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E587AE64();
        v18 = v24;
      }

      sub_1E5875FCC(*(v18 + 48) + 40 * v16);
      v19 = (*(v18 + 56) + (v16 << 6));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[3];
      v27 = v19[2];
      v28 = v22;
      v25 = v21;
      v26 = v20;
      sub_1E587634C(v16, v18);
      *(v2 + 112) = v18;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    v8 &= v8 - 1;
    sub_1E586576C(&v25, &qword_1ECFF94B0, &qword_1E588E380);
    swift_endAccess();
    result = sub_1E586576C(v29, &qword_1ECFF94B8, &qword_1E588E388);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = v5[v12 + 8];
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58741F8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E5875F70(a1, v14);
  sub_1E587621C(a2, v15 + 8);
  sub_1E5876B48(v14, v11, &qword_1ECFF94B8, &qword_1E588E388);
  sub_1E586D79C(v12 + 8, v10);
  sub_1E58768B0(v12 + 8);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v5 = sub_1E588BCF4();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v6 = sub_1E588BCF4();
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_1E5875FCC(v11);
  if (v5 == v6)
  {
    v12[2] = v15[2];
    v12[3] = v16;
    v13 = v17;
    v11[0] = v14[0];
    v11[1] = v14[1];
    v12[0] = v15[0];
    v12[1] = v15[1];
    v7 = BYTE8(v16);
    sub_1E58768B0(v12 + 8);
    v8 = v7 ^ 1;
    sub_1E5875FCC(v11);
  }

  else
  {
    sub_1E586576C(v14, &qword_1ECFF94B8, &qword_1E588E388);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E5874358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E5874378, a4, 0);
}

uint64_t sub_1E5874378()
{
  sub_1E5873FD4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E58743D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[112] = v3;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  v6 = sub_1E588BEA4();
  v4[113] = v6;
  v4[114] = *(v6 - 8);
  v4[115] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v4[116] = swift_task_alloc();
  v7 = sub_1E588BEE4();
  v4[117] = v7;
  v4[118] = *(v7 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v10 = type metadata accessor for SideEffect(0, a3, v8, v9);
  v4[121] = v10;
  v4[122] = *(v10 - 8);
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5863150, v3, 0);
}

uint64_t sub_1E58745BC()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  v3 = *(v2 + 896);
  if (v0)
  {
    v4 = sub_1E5874AFC;
  }

  else
  {
    v4 = sub_1E58746E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E58746E8()
{
  v13 = v0;
  sub_1E5876B48(v0 + 160, v0 + 440, &qword_1ECFF94A0, &qword_1E588E358);
  if (*(v0 + 464))
  {
    v1 = *(v0 + 456);
    *(v0 + 400) = *(v0 + 440);
    *(v0 + 416) = v1;
    *(v0 + 432) = *(v0 + 472);
    isCancelled = swift_task_isCancelled();
    v3 = *(v0 + 960);
    v4 = *(v0 + 944);
    v5 = *(v0 + 936);
    if ((isCancelled & 1) == 0)
    {
      sub_1E5875F70(v0 + 400, v0 + 480);
      memset(v12, 0, sizeof(v12));
      swift_beginAccess();
      sub_1E5873E4C(v12, v0 + 480);
      swift_endAccess();
    }

    sub_1E5875FCC(v0 + 400);
    (*(v4 + 8))(v3, v5);
    v6 = v0 + 160;
  }

  else
  {
    v7 = *(v0 + 960);
    v8 = *(v0 + 944);
    v9 = *(v0 + 936);

    (*(v8 + 8))(v7, v9);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
    v6 = v0 + 440;
  }

  sub_1E586576C(v6, &qword_1ECFF94A0, &qword_1E588E358);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E58748E8()
{
  v1 = *(*v0 + 896);

  return MEMORY[0x1EEE6DFA0](sub_1E58749F8, v1, 0);
}

uint64_t sub_1E58749F8()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);
  sub_1E5875FCC((v0 + 15));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5874AFC()
{
  v41 = v0;
  v1 = v0 + 440;
  v2 = *(v0 + 1032);
  *(v0 + 864) = v2;
  v3 = v2;
  if (swift_dynamicCast())
  {

    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1E588BAD4();
    __swift_project_value_buffer(v4, qword_1EE2CF9F8);
    sub_1E5876B48(v0 + 160, v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
    v5 = sub_1E588BAB4();
    v6 = sub_1E588C024();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v40[0] = v8;
      *v7 = 136446210;
      sub_1E5876B48(v0 + 560, v0 + 600, &qword_1ECFF94A0, &qword_1E588E358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A0, &qword_1E588E358);
      v9 = sub_1E588BD74();
      v11 = v10;
      sub_1E586576C(v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
      v12 = sub_1E586163C(v9, v11, v40);

      *(v7 + 4) = v12;
      v1 = v0 + 440;
      _os_log_impl(&dword_1E585C000, v5, v6, "Cancelled effect with key: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E6930700](v8, -1, -1);
      MEMORY[0x1E6930700](v7, -1, -1);
    }

    else
    {

      sub_1E586576C(v0 + 560, &qword_1ECFF94A0, &qword_1E588E358);
    }

    (*(*(v0 + 912) + 8))(*(v0 + 920), *(v0 + 904));
  }

  else
  {

    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 1032);
    v14 = sub_1E588BAD4();
    __swift_project_value_buffer(v14, qword_1EE2CF9F8);
    sub_1E5876B48(v0 + 160, v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
    v15 = v13;
    v16 = sub_1E588BAB4();
    v17 = sub_1E588C014();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1032);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v40[0] = v39;
      *v20 = 136446466;
      sub_1E5876B48(v0 + 360, v0 + 520, &qword_1ECFF94A0, &qword_1E588E358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A0, &qword_1E588E358);
      v21 = sub_1E588BD74();
      v23 = v22;
      sub_1E586576C(v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
      v24 = sub_1E586163C(v21, v23, v40);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2114;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      *v38 = v26;
      _os_log_impl(&dword_1E585C000, v16, v17, "Effect %{public}s ended with error: %{public}@", v20, 0x16u);
      sub_1E586576C(v38, &qword_1ECFF94A8, &qword_1E588E378);
      MEMORY[0x1E6930700](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1E6930700](v39, -1, -1);
      MEMORY[0x1E6930700](v20, -1, -1);
    }

    else
    {

      sub_1E586576C(v0 + 360, &qword_1ECFF94A0, &qword_1E588E358);
    }
  }

  sub_1E5876B48(v0 + 160, v1, &qword_1ECFF94A0, &qword_1E588E358);
  if (*(v0 + 464))
  {
    v27 = *(v1 + 16);
    *(v0 + 400) = *v1;
    *(v0 + 416) = v27;
    *(v0 + 432) = *(v1 + 32);
    isCancelled = swift_task_isCancelled();
    v29 = *(v0 + 960);
    v30 = *(v0 + 944);
    v31 = *(v0 + 936);
    if ((isCancelled & 1) == 0)
    {
      sub_1E5875F70(v0 + 400, v0 + 480);
      memset(v40, 0, sizeof(v40));
      swift_beginAccess();
      sub_1E5873E4C(v40, v0 + 480);
      swift_endAccess();
    }

    sub_1E5875FCC(v0 + 400);
    (*(v30 + 8))(v29, v31);
    v32 = v0 + 160;
  }

  else
  {
    v33 = *(v0 + 960);
    v34 = *(v0 + 944);
    v35 = *(v0 + 936);

    (*(v34 + 8))(v33, v35);
    sub_1E586576C(v0 + 160, &qword_1ECFF94A0, &qword_1E588E358);
    v32 = v1;
  }

  sub_1E586576C(v32, &qword_1ECFF94A0, &qword_1E588E358);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1E5875130(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_1E58688C4;

  return v10(a6);
}

uint64_t sub_1E5875228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5876B48(a3, v22 - v9, qword_1ECFF9178, &qword_1E588D220);
  v11 = sub_1E588BEE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E586576C(v10, qword_1ECFF9178, &qword_1E588D220);
  }

  else
  {
    sub_1E588BED4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E588BE64();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E588BD84() + 32;

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

      sub_1E586576C(a3, qword_1ECFF9178, &qword_1E588D220);

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

  sub_1E586576C(a3, qword_1ECFF9178, &qword_1E588D220);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E58754D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 64) = a3;
  *(v6 + 56) = a1;
  v7 = sub_1E588C1E4();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_1E588C1F4();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5875608, 0, 0);
}

uint64_t sub_1E5875608()
{
  if (sub_1E588BF14())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = sub_1E588C4B4();
    v8 = v7;
    sub_1E588C3C4();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v9 = sub_1E5876254(&qword_1EE2CD228, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1E588C3A4();
    sub_1E5876254(&qword_1EE2CD230, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1E588C204();
    v10 = *(v4 + 8);
    *(v0 + 144) = v10;
    *(v0 + 152) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v5);
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_1E5875834;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);

    return MEMORY[0x1EEE6DE58](v13, v0 + 16, v12, v9);
  }
}

uint64_t sub_1E5875834()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    (*(v2 + 144))(*(v2 + 112), *(v2 + 88));

    return MEMORY[0x1EEE6DFA0](sub_1E5875BAC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 128);
    v3 = *(v2 + 136);
    v5 = *(v2 + 120);
    v6 = *(v2 + 64);
    (*(v2 + 144))(*(v2 + 112), *(v2 + 88));
    (*(v4 + 8))(v3, v5);
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v2 + 176) = v7;
    *v7 = v2;
    v7[1] = sub_1E5875A54;
    v8 = *(v2 + 80);

    return v10(v8);
  }
}

uint64_t sub_1E5875A54()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5875C44, 0, 0);
  }
}

uint64_t sub_1E5875BAC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5875C44()
{
  if (*(v0 + 33) == 1 && (sub_1E588BF14() & 1) == 0)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = sub_1E588C4B4();
    v8 = v7;
    sub_1E588C3C4();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v9 = sub_1E5876254(&qword_1EE2CD228, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1E588C3A4();
    sub_1E5876254(&qword_1EE2CD230, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1E588C204();
    v10 = *(v4 + 8);
    *(v0 + 144) = v10;
    *(v0 + 152) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v5);
    v11 = swift_task_alloc();
    *(v0 + 160) = v11;
    *v11 = v0;
    v11[1] = sub_1E5875834;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);

    return MEMORY[0x1EEE6DE58](v13, v0 + 16, v12, v9);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1E5875E7C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
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

uint64_t sub_1E5875EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5875F10(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E5876020(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E58688C4;

  return sub_1E58754D4(v4, a1, v5, v6, v1 + 48, v7);
}

uint64_t sub_1E58760F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5876BB0;

  return sub_1E5875130(a1, v4, v5, v6, v7, (v1 + 7));
}

uint64_t sub_1E58761C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
  v2 = MEMORY[0x1E69E7288];
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA18](v0, v3, v1, v2);
}

uint64_t sub_1E5876254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E587629C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E587A464(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E587AE64();
      v9 = v14;
    }

    sub_1E5875FCC(*(v9 + 48) + 40 * v7);
    v10 = (*(v9 + 56) + (v7 << 6));
    v11 = v10[1];
    *a2 = *v10;
    a2[1] = v11;
    v12 = v10[3];
    a2[2] = v10[2];
    a2[3] = v12;
    sub_1E587634C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1E587634C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E588C0E4() + 1) & ~v5;
    do
    {
      sub_1E5875F70(*(a2 + 48) + 40 * v6, v27);
      v12 = sub_1E588C0F4();
      result = sub_1E5875FCC(v27);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = v16 + 40 * v3;
          v18 = (v16 + 40 * v6);
          if (v3 != v6 || v17 >= v18 + 40)
          {
            v19 = *v18;
            v20 = v18[1];
            *(v17 + 32) = *(v18 + 4);
            *v17 = v19;
            *(v17 + 16) = v20;
          }

          v21 = *(a2 + 56);
          v22 = (v21 + (v3 << 6));
          v23 = (v21 + (v6 << 6));
          if (v3 != v6 || v22 >= v23 + 4)
          {
            v9 = *v23;
            v10 = v23[1];
            v11 = v23[3];
            v22[2] = v23[2];
            v22[3] = v11;
            *v22 = v9;
            v22[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *sub_1E5876518(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1E5876698(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1E5876820(v11, v7, a3, v5);
  result = MEMORY[0x1E6930700](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

unint64_t *sub_1E5876698(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  v23 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_1E5875F70(*(a3 + 48) + 40 * v15, v22);
    sub_1E587621C(*(a3 + 56) + (v15 << 6), v21);
    v16 = v23(v22, v21);
    sub_1E58768B0(v21);
    result = sub_1E5875FCC(v22);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_1E58768E0(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1E58768E0(v19, a2, v20, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E5876820(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E5876698(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E58768E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  result = sub_1E588C244();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1E5875F70(*(v4 + 48) + 40 * v16, v36);
    sub_1E587621C(*(v4 + 56) + (v16 << 6), v35);
    v32 = v36[0];
    v33 = v36[1];
    v34 = v37;
    v28 = v35[0];
    v29 = v35[1];
    v30 = v35[2];
    v31 = v35[3];
    result = sub_1E588C0F4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    *v25 = v32;
    *(v25 + 16) = v33;
    *(v25 + 32) = v34;
    v26 = (*(v9 + 56) + (v20 << 6));
    *v26 = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}