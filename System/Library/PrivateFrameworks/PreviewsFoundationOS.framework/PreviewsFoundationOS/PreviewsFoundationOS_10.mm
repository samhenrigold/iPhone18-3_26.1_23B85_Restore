uint64_t sub_25F28C0D4()
{

  swift_getObjectType();
  v1 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F222AE4, v1, v0);
}

uint64_t sub_25F28C278(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(a3, a5);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 65) = *(a2 + 41);

  IsolatedInvalidatable.observeInvalidation(_:)(sub_25F28D04C, v12, a4, a6, &v16);

  if (v17)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v15, a3, a5);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t IsolatedInvalidatable.isInvalidated.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*((*(a2 + 16))(a1) + 32) + 152);
  os_unfair_lock_lock((v2 + 84));
  v3 = *(v2 + 48);
  v7[1] = *(v2 + 32);
  v7[2] = v3;
  v7[3] = *(v2 + 64);
  v8 = *(v2 + 80);
  v7[0] = *(v2 + 16);
  sub_25F1B7174(v7, v6, &qword_27FD538D8, &qword_25F312160);
  os_unfair_lock_unlock((v2 + 84));

  v4 = HIBYTE(v8);
  sub_25F1AF698(v7, &qword_27FD538D8, &qword_25F312160);
  return v4 & 1;
}

uint64_t ConcurrentInvalidatable.invalidationTrace.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F28C550, 0, 0);
}

uint64_t sub_25F28C550()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_25F28C650;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000011, 0x800000025F31A4D0, sub_25F28C8C0, v2, &type metadata for InvalidationTrace);
}

uint64_t sub_25F28C650()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F28C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  ConcurrentInvalidatable.onInvalidation(_:)(sub_25F28D364, v12, a3, a4);
}

uint64_t sub_25F28C8CC(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  return sub_25F30541C();
}

uint64_t ConcurrentInvalidatable.invalidation.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_25F28C9CC;

  return ConcurrentInvalidatable.invalidationTrace.getter(v2 + 16, a1, a2);
}

uint64_t sub_25F28C9CC()
{

  return MEMORY[0x2822009F8](sub_25F28D36C, 0, 0);
}

uint64_t sub_25F28CB24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  return a14(a9, v15, a10, a11, a12, a13);
}

uint64_t sub_25F28CB80(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(a3, a5);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 65) = *(a2 + 41);

  ConcurrentInvalidatable.observeInvalidation(_:)(sub_25F28D018, v12, a4, a6, &v16);

  if (v16)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(v6, a3, a5);
  }
}

uint64_t sub_25F28CD38(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = result;
  v12 = *(a9 + 16);
  if (v12)
  {
    v19 = (a9 + 32);
    do
    {
      v26 = v12;
      v20 = v19[3];
      v21 = v19[4];
      v22 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v29 = v27;
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      a12(v22, &v29, a10, v20, a11, v21);
      v23 = v19[3];
      v25 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v23);
      v29 = v27;
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      result = a12(v24, &v29, v23, a10, v25, a11);
      v19 += 5;
      v12 = v26 - 1;
    }

    while (v26 != 1);
  }

  return result;
}

uint64_t sub_25F28CEA0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a3, v6);
  }

  return result;
}

Swift::Bool __swiftcall ConcurrentInvalidatable.peekIsInvalidated()()
{
  v1 = *(*((*(v0 + 16))() + 32) + 152);
  os_unfair_lock_lock((v1 + 84));
  v2 = *(v1 + 48);
  v6[1] = *(v1 + 32);
  v6[2] = v2;
  v6[3] = *(v1 + 64);
  v7 = *(v1 + 80);
  v6[0] = *(v1 + 16);
  sub_25F1B7174(v6, v5, &qword_27FD538C0, &qword_25F309868);
  os_unfair_lock_unlock((v1 + 84));

  v3 = HIBYTE(v7);
  sub_25F1AF698(v6, &qword_27FD538C0, &qword_25F309868);
  return v3 & 1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57010, &unk_25F312208);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F28D1C4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v5 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v6 = *(v5 + 2);
  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);

  result = sub_25F1E4B14(v3, v4, v6);
  *a2 = v6;
  return result;
}

uint64_t static AsyncStream.empty.getter(uint64_t a1)
{
  v2 = sub_25F3054AC();
  MEMORY[0x28223BE20](v2);
  v7 = a1;
  (*(v4 + 104))(&v6[-v3], *MEMORY[0x277D85778]);
  return sub_25F30553C();
}

uint64_t AsyncStream.friendlyCompactMap<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v20 = a1;
  v21 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v13 = sub_25F3064CC();
  MEMORY[0x28223BE20](v13);
  sub_25F3064BC();
  v19 = swift_allocBox();
  (*(v10 + 16))(v12, v6, a3);
  v14 = swift_allocObject();
  v15 = *(a3 + 16);
  v14[2] = v15;
  v14[3] = a4;
  v14[4] = v20;
  v14[5] = a2;

  sub_25F3055FC();

  sub_25F30649C();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a4;
  v16[4] = v19;
  return sub_25F30551C();
}

uint64_t sub_25F28D6D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F1B51E0;

  return sub_25F28E190(a1, a2, v6);
}

uint64_t sub_25F28D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  sub_25F30552C();
  swift_getWitnessTable();
  v4[6] = sub_25F3064BC();
  v4[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25F28D878, 0, 0);
}

uint64_t sub_25F28D878()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25F28D928;
  v2 = v0[6];
  v3 = v0[5];

  return MEMORY[0x282200780](v3, v2);
}

uint64_t sub_25F28D928()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F28E194, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F28DA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1B51E0;

  return sub_25F28D7B4(a1, v6, v4, v5);
}

uint64_t AsyncStream.friendlyMap<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v20 = a1;
  v21 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v13 = sub_25F3061DC();
  MEMORY[0x28223BE20](v13);
  sub_25F3061CC();
  v19 = swift_allocBox();
  (*(v10 + 16))(v12, v6, a3);
  v14 = swift_allocObject();
  v15 = *(a3 + 16);
  v14[2] = v15;
  v14[3] = a4;
  v14[4] = v20;
  v14[5] = a2;

  sub_25F30560C();

  sub_25F3061AC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a4;
  v16[4] = v19;
  return sub_25F30551C();
}

uint64_t sub_25F28DD4C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F1B51E0;

  return sub_25F28E190(a1, a2, v6);
}

uint64_t sub_25F28DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  sub_25F30552C();
  swift_getWitnessTable();
  v4[6] = sub_25F3061CC();
  v4[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25F28DEEC, 0, 0);
}

uint64_t sub_25F28DEEC()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25F28DF9C;
  v2 = v0[6];
  v3 = v0[5];

  return MEMORY[0x2822006C8](v3, v2);
}

uint64_t sub_25F28DF9C()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F28E0D4, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F28E0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F28DE28(a1, v6, v4, v5);
}

uint64_t Sequence<>.identified()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v4, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return IdentifiedSet.init<A>(_:)(v10, AssociatedTypeWitness, a1, a3, a2, a4);
}

uint64_t RandomAccessCollection<>.binarySearchForFirstElementIndexLessThanOrEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v16 - v7;
  if (sub_25F3057EC())
  {
    return 0;
  }

  sub_25F3057AC();
  result = sub_25F3057FC();
  v10 = v22[0] - 1;
  if (__OFSUB__(v22[0], 1))
  {
    goto LABEL_20;
  }

  v11 = v23;
  if (v10 >= v23)
  {
    v18 = 0;
    v19 = a2;
    v12 = (v6 + 16);
    v13 = (v6 + 8);
    v17 = 1;
    while (!__OFSUB__(v10, v11))
    {
      v14 = v11 + (v10 - v11) / 2;
      if (__OFADD__(v11, (v10 - v11) / 2))
      {
        goto LABEL_17;
      }

      v22[4] = v11 + (v10 - v11) / 2;
      v15 = sub_25F3058FC();
      (*v12)(v8);
      (v15)(v22, 0);
      LOBYTE(v15) = sub_25F304CBC();
      result = (*v13)(v8, AssociatedTypeWitness);
      if (v15)
      {
        v10 = v14 - 1;
        if (__OFSUB__(v14, 1))
        {
          goto LABEL_19;
        }

        if (v10 < v11)
        {
          return v18;
        }
      }

      else
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_18;
        }

        v17 = 0;
        v18 = v14;
        if (v10 < v11)
        {
          return v18;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v18 = 0;
  v17 = 1;
  return v18;
}

uint64_t RandomAccessCollection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v17[-v7];
  sub_25F3057FC();
  swift_getAssociatedConformanceWitness();
  v9 = sub_25F304CCC();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_25F3058FC();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v17, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t Collection<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  swift_getAssociatedTypeWitness();
  return sub_25F30570C();
}

double Collection<>.orderedUniqued()@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, _OWORD *x8_0@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v4, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OrderedSet.init<A>(_:)(v9, AssociatedTypeWitness, a1, a3, x8_0);
}

double Sequence<>.orderedIdentified()@<D0>(uint64_t a1@<X0>, _OWORD *a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v4, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OrderedIdentifiedSet.init<A>(_:)(v8, AssociatedTypeWitness, a1, a4);
}

uint64_t sub_25F28EAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_25F1B4740(a1, v19 - v9);
  v11 = sub_25F30546C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25F1B47B0(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_25F3053EC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25F30545C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t Collection.only.getter@<X0>(uint64_t a3@<X8>)
{
  if (sub_25F3057BC() == 1)
  {

    return sub_25F30583C();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(*(AssociatedTypeWitness - 8) + 56);

    return v6(a3, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t LazySequence<>.compacted<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = *(a2 + 16);
  v7[3] = a3;
  v7[4] = a4;
  swift_getWitnessTable();
  sub_25F30637C();
}

uint64_t Collection<>.hasPrefix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 8);
  v11 = *(a5 + 8);
  v27 = a2;
  v28 = a3;
  v23[1] = v10;
  v24 = a6;
  v29 = v10;
  v30 = v11;
  v23[0] = v11;
  v12 = sub_25F30600C();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = sub_25F3057BC();
  if (sub_25F3057BC() >= v15)
  {
    v17 = sub_25F30663C();
    v18 = MEMORY[0x28223BE20](v17);
    v23[-6] = a2;
    v23[-5] = a3;
    v23[-4] = a4;
    v23[-3] = a5;
    v23[-2] = v24;
    MEMORY[0x28223BE20](v18);
    v23[-8] = a2;
    v23[-7] = a3;
    v23[-6] = a4;
    v23[-5] = a5;
    v23[-4] = v19;
    v23[-3] = sub_25F28F124;
    v23[-2] = v20;
    v21 = v26;
    swift_getWitnessTable();
    v16 = sub_25F30510C();
    (*(v25 + 8))(v14, v21);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_25F28F0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F305C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25F28F194(uint64_t a1)
{
  v3 = *(v1 + 56);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t Collection.asyncChildTaskMap<A>(width:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_25F28F248, 0, 0);
}

uint64_t sub_25F28F248()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v9 = *(v0 + 72);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v0 + 96) = sub_25F30539C();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v2;
  *(v5 + 24) = v9;
  *(v5 + 40) = v1;
  *(v5 + 48) = v6;
  *(v5 + 64) = v3;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_25F28F3A0;

  return MEMORY[0x282200740](v0 + 16, TupleTypeMetadata2);
}

uint64_t sub_25F28F3A0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_25F28F67C;
  }

  else
  {

    v2 = sub_25F28F4BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F28F4BC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v0[3] = v0[2];
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  swift_getWitnessTable();
  v6 = sub_25F3051AC();

  v0[4] = v6;
  v7 = swift_task_alloc();
  *v7 = v4;
  v7[1] = v2;
  v7[2] = v3;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25F1C1AC4(sub_25F29093C, v9, v1, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_25F28F67C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F28F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v15;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[12] = TupleTypeMetadata2;
  v8[13] = *(TupleTypeMetadata2 - 8);
  v8[14] = swift_task_alloc();
  v12 = sub_25F305C1C();
  v8[15] = v12;
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = *(a8 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = *(a7 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F28F8E4, 0, 0);
}

uint64_t sub_25F28F8E4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = swift_allocObject();
  v0[22] = v6;
  *(v6 + 16) = 0;
  swift_getAssociatedTypeWitness();
  v7 = swift_allocBox();
  v0[23] = v7;
  (*(v2 + 16))(v1, v5, v3);
  v8 = sub_25F3050DC();
  if (v4 < 0)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if (v12 == v0[8])
      {
        break;
      }

      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      v8 = sub_25F290080(v7, v6, v0[4], v0[6], v0[7], v0[9], v0[10], v0[11]);
      ++v12;
    }

    while ((v8 & 1) != 0);
    v0[2] = sub_25F3052DC();
    v13 = swift_task_alloc();
    v0[24] = v13;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v11 = sub_25F3055DC();
    *v13 = v0;
    v13[1] = sub_25F28FAC4;
    v8 = v0[17];
    v9 = 0;
    v10 = 0;
  }

  return MEMORY[0x2822004D0](v8, v9, v10, v11);
}

uint64_t sub_25F28FAC4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_25F28FED0;
  }

  else
  {
    v2 = sub_25F28FBD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F28FBD8()
{
  v1 = v0[17];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[3];
    (*(v0[16] + 8))(v1, v0[15]);

    *v3 = v0[2];

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[25];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v9 = v0[10];
  v10 = *v1;
  (*(v7 + 32))(v6, &v1[*(v2 + 48)], v9);
  v11 = *(v2 + 48);
  *v8 = v10;
  (*(v7 + 16))(&v8[v11], v6, v9);
  sub_25F30539C();
  sub_25F30533C();
  sub_25F3055AC();
  if (v5)
  {
    (*(v0[18] + 8))(v0[19], v0[10]);

    v4 = v0[1];
    goto LABEL_5;
  }

  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[10];
  sub_25F290080(v0[23], v0[22], v0[4], v0[6], v0[7], v0[9], v15, v0[11]);
  (*(v14 + 8))(v13, v15);
  v16 = swift_task_alloc();
  v0[24] = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v17 = sub_25F3055DC();
  *v16 = v0;
  v16[1] = sub_25F28FAC4;
  v18 = v0[17];

  return MEMORY[0x2822004D0](v18, 0, 0, v17);
}

uint64_t sub_25F28FED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F28FF90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F1B51E0;

  return sub_25F28F6E0(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_25F290080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a5;
  v46 = a7;
  v43 = a4;
  v47 = a3;
  v48 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v39[-v11];
  v44 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_25F305C1C();
  v13 = *(v41 - 1);
  v14 = MEMORY[0x28223BE20](v41);
  v16 = &v39[-v15];
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v42 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v49 = &v39[-v20];
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  swift_endAccess();
  v21 = (*(v17 + 48))(v16, 1, AssociatedTypeWitness);
  v22 = v21;
  if (v21 == 1)
  {
    (*(v13 + 8))(v16, v41);
    return v22 != 1;
  }

  v40 = v21;
  v41 = *(v17 + 32);
  v23 = v49;
  (v41)(v49, v16, AssociatedTypeWitness);
  v24 = sub_25F30546C();
  (*(*(v24 - 8) + 56))(v50, 1, 1, v24);
  v25 = v48;
  swift_beginAccess();
  v26 = *(v25 + 16);
  v27 = v42;
  (*(v17 + 16))(v42, v23, AssociatedTypeWitness);
  v28 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v46;
  v29[4] = a6;
  v29[5] = v30;
  v31 = v43;
  v29[6] = v44;
  v29[7] = v26;
  v32 = v45;
  v29[8] = v31;
  v29[9] = v32;
  (v41)(v29 + v28, v27, AssociatedTypeWitness);

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v33 = sub_25F3055DC();
  v34 = v50;
  sub_25F28EAB4(v50, &unk_25F3122B0, v29, v33);
  sub_25F1B47B0(v34);
  (*(v17 + 8))(v49, AssociatedTypeWitness);
  result = swift_beginAccess();
  v36 = *(v25 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v48 + 16) = v38;
    v22 = v40;
    return v22 != 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F290500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x2822009F8](sub_25F290530, 0, 0);
}

uint64_t sub_25F290530(uint64_t a1)
{
  sub_25F3055AC();
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *v4 = v2;
  v9 = (v3 + *v3);
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_25F2906A4;
  v7 = v1[6];

  return v9(&v4[v5], v7);
}

uint64_t sub_25F2906A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F290798(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  (*(v5 + 16))(v13 - v9);
  v11 = *(v4 + 48);
  *v8 = *v10;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v8[v11], &v10[v11]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F290960(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F1AFDB0;

  return sub_25F290500(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t OS_os_log.logLargeString(_:publicPreamble:linePrefix:type:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6, unsigned int a7)
{
  v8 = v7;
  result = os_log_type_enabled(v8, a7);
  if (!result)
  {
    return result;
  }

  v16 = a1();
  v18 = v17;
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v19 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v20 = v19 + 2;
  if (__OFADD__(v19, 2))
  {
    goto LABEL_106;
  }

LABEL_7:
  a2 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x1000000000000000) != 0)
  {
LABEL_107:
    result = sub_25F304FAC();
    v21 = __OFADD__(v20, result);
    v22 = v20 + result;
    if (!v21)
    {
      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v18) & 0xF;
  }

  else
  {
    result = v16 & 0xFFFFFFFFFFFFLL;
  }

  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
    goto LABEL_109;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v23 = MEMORY[0x277D837D0];
  if (v22 >= 1021)
  {
    v82 = a2;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25F3077D0;
    *(v24 + 56) = v23;
    v25 = sub_25F1F7190();
    *(v24 + 64) = v25;
    *(v24 + 32) = a3;
    *(v24 + 40) = a4;

    sub_25F3046FC("%{public}@:", 11, 2, &dword_25F1A2000, v8, a7, v24);

    if (a6)
    {

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v27 = a5;
      v26 = a6;
    }

    else
    {
      v27 = 0;
      v26 = 0xE000000000000000;
    }

    a3 = sub_25F304F2C();
    v76 = v26;

    v30 = 1020 - a3;
    if (!__OFSUB__(1020, a3))
    {
      a5 = 990 - a3;
      if (!__OFSUB__(v30, 30))
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          result = sub_25F304FAC();
          if (!a5)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((v18 & 0x2000000000000000) == 0)
          {
            result = v16 & 0xFFFFFFFFFFFFLL;
            if (v30 == 30)
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

          result = v82;
          if (v30 == 30)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

LABEL_25:
        if (result == 0x8000000000000000 && a5 == -1)
        {
          goto LABEL_113;
        }

        v31 = result / a5;
        if (!(result % a5) || (v21 = __OFADD__(v31, 1), ++v31, !v21))
        {
          v73 = v8;
          v74 = v31;
          v75 = v27;
          if ((v18 & 0x1000000000000000) != 0)
          {
            a2 = sub_25F304FAC();
          }

          else
          {
            if ((v18 & 0x2000000000000000) != 0)
            {
LABEL_35:
              a2 = v82;
              goto LABEL_36;
            }

            a2 = v16 & 0xFFFFFFFFFFFFLL;
          }

LABEL_36:
          v32 = a2 >= 0;
          if (a5 > 0)
          {
            v32 = a2 < 1;
          }

          if (v32)
          {
LABEL_39:

            goto LABEL_40;
          }

          v33 = 0;
          v34 = 0;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v35 = v82;
          }

          else
          {
            v35 = v16 & 0xFFFFFFFFFFFFLL;
          }

          v80 = (v16 & 0x800000000000000uLL) >> 59;
          if ((v16 & 0x800000000000000) != 0)
          {
            v36 = (v35 << 16) | 7;
          }

          else
          {
            v36 = (v35 << 16) | 0xB;
          }

          v78 = (v35 << 16) | 7;
          v79 = v36;
          v77 = 990 - a3;
          v83 = v35;
          v72 = a2;
          while (1)
          {
            if (__OFADD__(v34, a5))
            {
              a6 = ((v34 + a5) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              a6 = v34 + a5;
            }

            v8 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
LABEL_98:
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
              v71 = sub_25F304FAC();
              v20 = v71 + 2;
              if (!__OFADD__(v71, 2))
              {
                goto LABEL_7;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if ((v18 & 0x1000000000000000) != 0)
            {
              v45 = sub_25F304FCC();
              if (v46)
              {
                goto LABEL_39;
              }

              a4 = v45;
              v44 = v79;
              v43 = v80;
              v35 = v83;
            }

            else
            {
              if ((v34 & 0x8000000000000000) != 0)
              {
                if (!v35)
                {
                  goto LABEL_39;
                }

                __break(1u);
                goto LABEL_98;
              }

              if (v35 < v34)
              {
                goto LABEL_39;
              }

              a4 = (v34 << 16) | 4;
              v43 = 1;
              v44 = v78;
            }

            a3 = a4 & 0xC;
            v47 = a4;
            if (a3 == 4 << v43)
            {
              v51 = v44;
              v47 = sub_25F2925C8(a4, v16, v18);
              v35 = v83;
              v44 = v51;
              a5 = v77;
            }

            if ((v44 & 0xC) == 4 << (((v18 & 0x1000000000000000) == 0) | v80))
            {
              v52 = v47;
              v53 = sub_25F2925C8(v44, v16, v18);
              v35 = v83;
              v44 = v53;
              v47 = v52;
              a5 = v77;
              if ((v18 & 0x1000000000000000) == 0)
              {
LABEL_68:
                v48 = (v44 >> 16) - (v47 >> 16);
                v49 = 1;
                v50 = v78;
                goto LABEL_73;
              }
            }

            else if ((v18 & 0x1000000000000000) == 0)
            {
              goto LABEL_68;
            }

            if (v35 < v47 >> 16)
            {
              goto LABEL_99;
            }

            if (v35 < v44 >> 16)
            {
              goto LABEL_100;
            }

            v48 = sub_25F304FEC();
            v50 = v79;
            v49 = v80;
LABEL_73:
            if (v48 >= a5)
            {
              v54 = a5;
            }

            else
            {
              v54 = v48;
            }

            v55 = a4;
            if (a3 == 4 << v49)
            {
              a3 = v54;
              a5 = v50;
              v55 = sub_25F2925C8(a4, v16, v18);
              v54 = a3;
              if ((v18 & 0x1000000000000000) != 0)
              {
LABEL_89:
                v59 = sub_25F304FCC();
                if (v60)
                {
                  goto LABEL_39;
                }

                a3 = v59;
                goto LABEL_91;
              }
            }

            else if ((v18 & 0x1000000000000000) != 0)
            {
              goto LABEL_89;
            }

            v56 = v55 >> 16;
            v57 = (v55 >> 16) + v54;
            if (__OFADD__(v55 >> 16, v54))
            {
              goto LABEL_101;
            }

            if (v54 < 0)
            {
              v58 = v83;
              if (v56 >= v83 && v57 < v83)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v58 = v83;
              if (v83 >= v56 && v83 < v57)
              {
                goto LABEL_39;
              }
            }

            if (v57 < 0)
            {
              goto LABEL_102;
            }

            if (v58 < v57)
            {
              goto LABEL_103;
            }

            a3 = (v57 << 16) | 4;
LABEL_91:
            v61 = sub_25F304F1C();
            if ((v62 & 1) == 0)
            {
              a4 = v61;
              v63 = sub_25F304F1C();
              if ((v64 & 1) == 0)
              {
                v65 = v63;
                v66 = v25;
                v67 = v16;
                a3 = swift_allocObject();
                *(a3 + 16) = xmmword_25F30B760;
                v68 = MEMORY[0x277D837D0];
                *(a3 + 56) = MEMORY[0x277D837D0];
                *(a3 + 64) = v66;
                *(a3 + 32) = v75;
                *(a3 + 40) = v76;
                v69 = MEMORY[0x277D83B88];
                *(a3 + 96) = MEMORY[0x277D83B88];
                v70 = MEMORY[0x277D83C10];
                *(a3 + 72) = v8;
                *(a3 + 136) = v69;
                *(a3 + 144) = v70;
                *(a3 + 104) = v70;
                *(a3 + 112) = v74;
                if (v65 >> 14 < a4 >> 14)
                {
                  __break(1u);
                  goto LABEL_39;
                }

                v37 = sub_25F3050CC();
                a4 = v38;
                v39 = MEMORY[0x25F8D7070](v37);
                v41 = v40;

                *(a3 + 176) = v68;
                *(a3 + 184) = v66;
                v16 = v67;
                *(a3 + 152) = v39;
                *(a3 + 160) = v41;
                sub_25F3046FC("%@[%d/%d]:\n%@", 13, 2, &dword_25F1A2000, v73, a7, a3);

                v25 = v66;
                a2 = v72;
              }
            }

            v42 = a2 >= a6;
            a5 = v77;
            if (v77 > 0)
            {
              v42 = a6 >= a2;
            }

            ++v33;
            v34 = a6;
            v35 = v83;
            if (v42)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        return result;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25F3081F0;
  *(v28 + 56) = v23;
  v29 = sub_25F1F7190();
  *(v28 + 32) = a3;
  *(v28 + 40) = a4;
  *(v28 + 96) = v23;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 2618;
  *(v28 + 80) = 0xE200000000000000;
  *(v28 + 136) = v23;
  *(v28 + 144) = v29;
  *(v28 + 112) = v16;
  *(v28 + 120) = v18;

  sub_25F3046FC("%{public}@%{public}@%@", 22, 2, &dword_25F1A2000, v8, a7, v28);
LABEL_40:
}

uint64_t Optional.log.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v5, v7, v1);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_25F30653C();
  v9 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t static Logging.describe<A>(ref:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25F3081E0;
    swift_unknownObjectRetain();
    v3 = sub_25F30685C();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_25F1F7190();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    v6 = sub_25F304DBC();
    v7 = MEMORY[0x277D83C10];
    *(v2 + 96) = MEMORY[0x277D83B88];
    *(v2 + 104) = v7;
    *(v2 + 72) = v6;
    v8 = sub_25F304E3C();
    swift_unknownObjectRelease();
    return v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25F3077D0;
    v11 = sub_25F30685C();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_25F1F7190();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;

    return sub_25F304E3C();
  }
}

uint64_t static Logging.describe<A>(sequence:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = sub_25F305C1C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v33 = 91;
  v34 = 0xE100000000000000;
  (*(v12 + 16))(v14, v30, a2);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v19 = v5;
  v20 = *(v5 + 48);
  if (v20(v11, 1, AssociatedTypeWitness) != 1)
  {
    v21 = *(v19 + 32);
    v29 = AssociatedConformanceWitness;
    v30 = v19 + 32;
    v27 = (v19 + 8);
    v28 = v21;
    do
    {
      v28(v7, v11, AssociatedTypeWitness);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_25F30653C();
      v22._countAndFlagsBits = 538976288;
      v22._object = 0xE400000000000000;
      v23 = String.prefixingEachLine(with:startingOnLine:)(v22, 0);

      v31 = 10;
      v32 = 0xE100000000000000;
      MEMORY[0x25F8D7130](v23._countAndFlagsBits, v23._object);

      MEMORY[0x25F8D7130](44, 0xE100000000000000);
      MEMORY[0x25F8D7130](v31, v32);

      (*v27)(v7, AssociatedTypeWitness);
      sub_25F305CDC();
    }

    while (v20(v11, 1, AssociatedTypeWitness) != 1);
  }

  (*(v26 + 8))(v17, v15);
  v31 = v33;
  v32 = v34;

  MEMORY[0x25F8D7130](23818, 0xE200000000000000);

  return v31;
}

uint64_t sub_25F291D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25F292674();
  result = sub_25F305BEC();
  *a4 = result;
  return result;
}

id sub_25F291DEC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_25F2922EC()
{
  v0 = sub_25F30479C();
  __swift_allocate_value_buffer(v0, qword_27FD571D8);
  __swift_project_value_buffer(v0, qword_27FD571D8);
  if (qword_27FD528A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FD57050;
  return sub_25F3047AC();
}

uint64_t sub_25F2923F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25F30479C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25F30478C();
}

uint64_t sub_25F29248C()
{
  v0 = sub_25F30479C();
  __swift_allocate_value_buffer(v0, qword_27FD57220);
  __swift_project_value_buffer(v0, qword_27FD57220);
  return sub_25F30478C();
}

uint64_t sub_25F292530@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25F30479C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_25F2925C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25F30504C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8D7190](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_25F292674()
{
  result = qword_27FD57238[0];
  if (!qword_27FD57238[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD57238);
  }

  return result;
}

uint64_t sub_25F2926C0(unint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, os_log_t oslog, _OWORD *a7)
{
  v8 = oslog;
  v9 = a5;
  result = os_log_type_enabled(oslog, a5);
  if (!result)
  {
    return result;
  }

  v15 = a7[5];
  v83[4] = a7[4];
  v83[5] = v15;
  v83[6] = a7[6];
  v16 = a7[1];
  v83[0] = *a7;
  v83[1] = v16;
  v17 = a7[3];
  v83[2] = a7[2];
  v83[3] = v17;
  v18 = v83;
  v19 = CommandLineToolInvocation.commandLineDescription.getter();
  v21 = v20;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_107;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 + 2;
  if (__OFADD__(v22, 2))
  {
    goto LABEL_109;
  }

LABEL_7:
  v18 = (HIBYTE(v21) & 0xF);
  if ((v21 & 0x1000000000000000) != 0)
  {
LABEL_110:
    result = sub_25F304FAC();
    v24 = __OFADD__(v23, result);
    v25 = v23 + result;
    if (!v24)
    {
      goto LABEL_12;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v21) & 0xF;
  }

  else
  {
    result = v19 & 0xFFFFFFFFFFFFLL;
  }

  v24 = __OFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_112;
  }

LABEL_12:
  v81 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v26 = MEMORY[0x277D837D0];
  if (v25 >= 1021)
  {
    v79 = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_25F3077D0;
    *(v27 + 56) = v26;
    v28 = sub_25F1F7190();
    *(v27 + 64) = v28;
    *(v27 + 32) = a1;
    *(v27 + 40) = a2;

    sub_25F3046FC("%{public}@:", 11, 2, &dword_25F1A2000, v8, v9, v27);

    v75 = v9;
    if (a4)
    {
      *&v83[0] = v81;
      *(&v83[0] + 1) = a4;

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v29 = *(&v83[0] + 1);
      v30 = *&v83[0];
    }

    else
    {
      v30 = 0;
      v29 = 0xE000000000000000;
    }

    v9 = sub_25F304F2C();
    v76 = v29;

    v33 = 1020 - v9;
    if (!__OFSUB__(1020, v9))
    {
      v34 = 990 - v9;
      if (!__OFSUB__(v33, 30))
      {
        if ((v21 & 0x1000000000000000) != 0)
        {
          result = sub_25F304FAC();
          if (!v34)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((v21 & 0x2000000000000000) == 0)
          {
            result = v19 & 0xFFFFFFFFFFFFLL;
            if (v33 == 30)
            {
              goto LABEL_34;
            }

            goto LABEL_25;
          }

          result = v79;
          if (v33 == 30)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

LABEL_25:
        if (result == 0x8000000000000000 && v34 == -1)
        {
          goto LABEL_116;
        }

        v35 = result / v34;
        if (!(result % v34) || (v24 = __OFADD__(v35, 1), ++v35, !v24))
        {
          v71 = v8;
          v72 = v35;
          v73 = v30;
          v74 = v28;
          if ((v21 & 0x1000000000000000) != 0)
          {
            a3 = sub_25F304FAC();
            v36 = v79;
          }

          else
          {
            if ((v21 & 0x2000000000000000) != 0)
            {
LABEL_35:
              v36 = v79;
              a3 = v79;
              goto LABEL_36;
            }

            a3 = v19 & 0xFFFFFFFFFFFFLL;
            v36 = v79;
          }

LABEL_36:
          v37 = a3 >= 0;
          if (v34 > 0)
          {
            v37 = a3 < 1;
          }

          if (v37)
          {
LABEL_39:

            goto LABEL_40;
          }

          v8 = 0;
          v38 = 0;
          if ((v21 & 0x2000000000000000) != 0)
          {
            a1 = v36;
          }

          else
          {
            a1 = v19 & 0xFFFFFFFFFFFFLL;
          }

          v39 = 7;
          v40 = 11;
          if ((v19 & 0x800000000000000) != 0)
          {
            v40 = 7;
          }

          if ((v21 & 0x1000000000000000) != 0)
          {
            v39 = v40;
          }

          v82 = v39 | (a1 << 16);
          v41 = (v19 & 0x800000000000000uLL) >> 59;
          v42 = 4 << v41;
          if ((v21 & 0x1000000000000000) == 0)
          {
            v42 = 8;
          }

          v78 = v39 & 0xC;
          v80 = v42;
          v77 = 4 << (((v21 & 0x1000000000000000) == 0) | v41);
          v70 = a1;
          v69 = a3;
          while (1)
          {
            if (__OFADD__(v38, v34))
            {
              a4 = ((v38 + v34) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              a4 = v38 + v34;
            }

            v18 = (&v8->isa + 1);
            if (__OFADD__(v8, 1))
            {
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
              v68 = sub_25F304FAC();
              v23 = v68 + 2;
              if (!__OFADD__(v68, 2))
              {
                goto LABEL_7;
              }

LABEL_109:
              __break(1u);
              goto LABEL_110;
            }

            if ((v21 & 0x1000000000000000) != 0)
            {
              v48 = sub_25F304FCC();
              if (v49)
              {
                goto LABEL_39;
              }

              a2 = v48;
            }

            else
            {
              if ((v38 & 0x8000000000000000) != 0)
              {
                if (!a1)
                {
                  goto LABEL_39;
                }

                __break(1u);
                goto LABEL_101;
              }

              if (a1 < v38)
              {
                goto LABEL_39;
              }

              a2 = (v38 << 16) | 4;
            }

            v9 = a2 & 0xC;
            v50 = a2;
            if (v9 == v80)
            {
              v50 = sub_25F2925C8(a2, v19, v21);
            }

            v51 = v82;
            if (v78 == v77)
            {
              v53 = v50;
              v51 = sub_25F2925C8(v82, v19, v21);
              v50 = v53;
              a1 = v70;
              if ((v21 & 0x1000000000000000) == 0)
              {
LABEL_71:
                v52 = (v51 >> 16) - (v50 >> 16);
                goto LABEL_76;
              }
            }

            else if ((v21 & 0x1000000000000000) == 0)
            {
              goto LABEL_71;
            }

            if (a1 < v50 >> 16)
            {
              goto LABEL_102;
            }

            if (a1 < v51 >> 16)
            {
              goto LABEL_103;
            }

            v52 = sub_25F304FEC();
LABEL_76:
            if (v52 >= v34)
            {
              v54 = v34;
            }

            else
            {
              v54 = v52;
            }

            v55 = a2;
            if (v9 == v80)
            {
              v9 = v54;
              v55 = sub_25F2925C8(a2, v19, v21);
              v54 = v9;
              if ((v21 & 0x1000000000000000) != 0)
              {
LABEL_92:
                v58 = sub_25F304FCC();
                if (v59)
                {
                  goto LABEL_39;
                }

                v9 = v58;
                goto LABEL_94;
              }
            }

            else if ((v21 & 0x1000000000000000) != 0)
            {
              goto LABEL_92;
            }

            v56 = v55 >> 16;
            v57 = (v55 >> 16) + v54;
            if (__OFADD__(v55 >> 16, v54))
            {
              goto LABEL_104;
            }

            if (v54 < 0)
            {
              if (v56 >= a1 && v57 < a1)
              {
                goto LABEL_39;
              }
            }

            else if (a1 >= v56 && a1 < v57)
            {
              goto LABEL_39;
            }

            if (v57 < 0)
            {
              goto LABEL_105;
            }

            if (a1 < v57)
            {
              goto LABEL_106;
            }

            v9 = (v57 << 16) | 4;
LABEL_94:
            v60 = sub_25F304F1C();
            if ((v61 & 1) == 0)
            {
              a2 = v60;
              v62 = sub_25F304F1C();
              if ((v63 & 1) == 0)
              {
                v64 = v62;
                v65 = swift_allocObject();
                *(v65 + 16) = xmmword_25F30B760;
                *(v65 + 56) = MEMORY[0x277D837D0];
                *(v65 + 64) = v74;
                *(v65 + 32) = v73;
                *(v65 + 40) = v76;
                v66 = MEMORY[0x277D83B88];
                *(v65 + 96) = MEMORY[0x277D83B88];
                v67 = MEMORY[0x277D83C10];
                *(v65 + 72) = v18;
                *(v65 + 136) = v66;
                *(v65 + 144) = v67;
                *(v65 + 104) = v67;
                *(v65 + 112) = v72;
                if (v64 >> 14 < a2 >> 14)
                {
                  __break(1u);
                  goto LABEL_39;
                }

                v43 = sub_25F3050CC();
                v9 = v44;
                a2 = MEMORY[0x25F8D7070](v43);
                v46 = v45;

                *(v65 + 176) = MEMORY[0x277D837D0];
                *(v65 + 184) = v74;
                *(v65 + 152) = a2;
                *(v65 + 160) = v46;
                sub_25F3046FC("%@[%d/%d]:\n%@", 13, 2, &dword_25F1A2000, v71, v75, v65);

                a3 = v69;
                a1 = v70;
              }
            }

            v47 = a3 >= a4;
            if (v34 > 0)
            {
              v47 = a4 >= a3;
            }

            v8 = (v8 + 1);
            v38 = a4;
            if (v47)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        return result;
      }

LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25F3081F0;
  *(v31 + 56) = v26;
  v32 = sub_25F1F7190();
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  *(v31 + 96) = v26;
  *(v31 + 104) = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = 2618;
  *(v31 + 80) = 0xE200000000000000;
  *(v31 + 136) = v26;
  *(v31 + 144) = v32;
  *(v31 + 112) = v19;
  *(v31 + 120) = v21;

  sub_25F3046FC("%{public}@%{public}@%@", 22, 2, &dword_25F1A2000, v8, v9, v31);
LABEL_40:
}

uint64_t sub_25F292DA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, os_log_t oslog, uint64_t a7, unint64_t a8)
{
  v10 = oslog;
  v11 = a5;
  result = os_log_type_enabled(oslog, a5);
  if (!result)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_106:
    v60 = sub_25F304FAC();
    v18 = v60 + 2;
    if (!__OFADD__(v60, 2))
    {
      goto LABEL_7;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    result = sub_25F304FAC();
    v19 = __OFADD__(v18, result);
    v20 = v18 + result;
    if (!v19)
    {
      goto LABEL_12;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 + 2;
  if (__OFADD__(v17, 2))
  {
    goto LABEL_108;
  }

LABEL_7:
  v8 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x1000000000000000) != 0)
  {
    goto LABEL_109;
  }

  if ((a8 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a8) & 0xF;
  }

  else
  {
    result = a7 & 0xFFFFFFFFFFFFLL;
  }

  v19 = __OFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_111;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
  v21 = MEMORY[0x277D837D0];
  if (v20 < 1021)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25F3081F0;
    *(v25 + 56) = v21;
    v26 = sub_25F1F7190();
    *(v25 + 32) = a1;
    *(v25 + 40) = a2;
    *(v25 + 96) = v21;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = 2618;
    *(v25 + 80) = 0xE200000000000000;
    *(v25 + 136) = v21;
    *(v25 + 144) = v26;
    *(v25 + 112) = a7;
    *(v25 + 120) = a8;

    sub_25F3046FC("%{public}@%{public}@%@", 22, 2, &dword_25F1A2000, v10, v11, v25);
    goto LABEL_40;
  }

  v22 = swift_allocObject();
  v23 = v21;
  v24 = v22;
  *(v22 + 16) = xmmword_25F3077D0;
  *(v22 + 56) = v23;
  v66 = sub_25F1F7190();
  v24[8] = v66;
  v24[4] = a1;
  v24[5] = a2;

  sub_25F3046FC("%{public}@:", 11, 2, &dword_25F1A2000, v10, v11, v24);

  if (a4)
  {

    MEMORY[0x25F8D7130](32, 0xE100000000000000);
    a2 = a3;
  }

  else
  {
    a2 = 0;
    a4 = 0xE000000000000000;
  }

  v27 = sub_25F304F2C();

  v28 = 1020 - v27;
  if (__OFSUB__(1020, v27))
  {
    goto LABEL_112;
  }

  v29 = 990 - v27;
  if (__OFSUB__(v28, 30))
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((a8 & 0x1000000000000000) != 0)
  {
    result = sub_25F304FAC();
    if (v29)
    {
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((a8 & 0x2000000000000000) != 0)
  {
    result = v8;
    if (v28 != 30)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  result = a7 & 0xFFFFFFFFFFFFLL;
  if (!v29)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (result == 0x8000000000000000 && v29 == -1)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    return result;
  }

  v30 = result / v29;
  if (result % v29)
  {
    v19 = __OFADD__(v30++, 1);
    if (v19)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  v63 = v10;
  v64 = v30;
  v62 = v11;
  v65 = a2;
  v67 = a4;
  if ((a8 & 0x1000000000000000) != 0)
  {
    result = sub_25F304FAC();
    a3 = result;
  }

  else
  {
    if ((a8 & 0x2000000000000000) != 0)
    {
LABEL_35:
      a3 = v8;
      goto LABEL_36;
    }

    a3 = a7 & 0xFFFFFFFFFFFFLL;
  }

LABEL_36:
  v31 = a3 >= 0;
  if (v29 > 0)
  {
    v31 = a3 < 1;
  }

  if (v31)
  {
    goto LABEL_39;
  }

  a1 = 0;
  v32 = 0;
  if ((a8 & 0x2000000000000000) != 0)
  {
    a4 = v8;
  }

  else
  {
    a4 = a7 & 0xFFFFFFFFFFFFLL;
  }

  v33 = 7;
  v34 = 11;
  if ((a7 & 0x800000000000000) != 0)
  {
    v34 = 7;
  }

  if ((a8 & 0x1000000000000000) != 0)
  {
    v33 = v34;
  }

  v11 = v33 | (a4 << 16);
  v35 = (a7 & 0x800000000000000uLL) >> 59;
  v36 = 4 << v35;
  if ((a8 & 0x1000000000000000) == 0)
  {
    v36 = 8;
  }

  v70 = v33 & 0xC;
  v71 = v36;
  v69 = 4 << (((a8 & 0x1000000000000000) == 0) | v35);
  v68 = v33 | (a4 << 16);
  v61 = a4;
  while (1)
  {
    if (__OFADD__(v32, v29))
    {
      v10 = (((v32 + v29) >> 63) ^ 0x8000000000000000);
    }

    else
    {
      v10 = (v32 + v29);
    }

    v8 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
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
      goto LABEL_106;
    }

    if ((a8 & 0x1000000000000000) == 0)
    {
      break;
    }

    v42 = sub_25F304FCC();
    if (v43)
    {
      goto LABEL_39;
    }

    a2 = v42;
LABEL_67:
    v44 = a2;
    if ((a2 & 0xC) == v71)
    {
      v44 = sub_25F2925C8(a2, a7, a8);
    }

    v45 = v11;
    if (v70 == v69)
    {
      v47 = v44;
      v45 = sub_25F2925C8(v68, a7, a8);
      v44 = v47;
      v11 = v68;
      if ((a8 & 0x1000000000000000) == 0)
      {
LABEL_71:
        v46 = (v45 >> 16) - (v44 >> 16);
        goto LABEL_76;
      }
    }

    else if ((a8 & 0x1000000000000000) == 0)
    {
      goto LABEL_71;
    }

    if (a4 < v44 >> 16)
    {
      goto LABEL_101;
    }

    if (a4 < v45 >> 16)
    {
      goto LABEL_102;
    }

    v46 = sub_25F304FEC();
LABEL_76:
    if (v46 >= v29)
    {
      v48 = v29;
    }

    else
    {
      v48 = v46;
    }

    v49 = a2;
    if ((a2 & 0xC) == v71)
    {
      v52 = v48;
      v49 = sub_25F2925C8(a2, a7, a8);
      v48 = v52;
      if ((a8 & 0x1000000000000000) != 0)
      {
LABEL_92:
        sub_25F304FCC();
        if (v53)
        {
          goto LABEL_39;
        }

        goto LABEL_93;
      }
    }

    else if ((a8 & 0x1000000000000000) != 0)
    {
      goto LABEL_92;
    }

    v50 = v49 >> 16;
    v51 = (v49 >> 16) + v48;
    if (__OFADD__(v49 >> 16, v48))
    {
      goto LABEL_103;
    }

    if (v48 < 0)
    {
      if (v50 >= a4 && v51 < a4)
      {
        goto LABEL_39;
      }
    }

    else if (a4 >= v50 && a4 < v51)
    {
      goto LABEL_39;
    }

    if (v51 < 0)
    {
      goto LABEL_104;
    }

    if (a4 < v51)
    {
      goto LABEL_105;
    }

LABEL_93:
    result = sub_25F304F1C();
    if ((v54 & 1) == 0)
    {
      v55 = result;
      result = sub_25F304F1C();
      if ((v56 & 1) == 0)
      {
        v57 = result;
        a2 = swift_allocObject();
        *(a2 + 16) = xmmword_25F30B760;
        *(a2 + 56) = MEMORY[0x277D837D0];
        *(a2 + 64) = v66;
        *(a2 + 32) = v65;
        *(a2 + 40) = v67;
        v58 = MEMORY[0x277D83B88];
        *(a2 + 96) = MEMORY[0x277D83B88];
        v59 = MEMORY[0x277D83C10];
        *(a2 + 72) = v8;
        *(a2 + 136) = v58;
        *(a2 + 144) = v59;
        *(a2 + 104) = v59;
        *(a2 + 112) = v64;
        if (v57 >> 14 < v55 >> 14)
        {
          __break(1u);
          goto LABEL_39;
        }

        v37 = sub_25F3050CC();
        v38 = MEMORY[0x25F8D7070](v37);
        v40 = v39;

        *(a2 + 176) = MEMORY[0x277D837D0];
        *(a2 + 184) = v66;
        *(a2 + 152) = v38;
        *(a2 + 160) = v40;
        sub_25F3046FC("%@[%d/%d]:\n%@", 13, 2, &dword_25F1A2000, v63, v62, a2);

        a4 = v61;
      }
    }

    v41 = a3 >= v10;
    if (v29 > 0)
    {
      v41 = v10 >= a3;
    }

    ++a1;
    v32 = v10;
    v11 = v68;
    if (v41)
    {
      goto LABEL_39;
    }
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    if (a4 < v32)
    {
      goto LABEL_39;
    }

    a2 = (v32 << 16) | 4;
    goto LABEL_67;
  }

  if (a4)
  {
    goto LABEL_116;
  }

LABEL_39:

LABEL_40:
}

uint64_t InvalidatableCache.__allocating_init()()
{
  v0 = swift_allocObject();
  InvalidatableCache.init()(v0, v1, v2, v3);
  return v0;
}

void *InvalidatableCache.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Future(0, *(*v4 + 88), a3, a4);
  v8 = sub_25F304A0C();
  v5 = sub_25F304B4C();
  v6 = sub_25F203E0C(&v8, v5);

  v4[2] = v6;
  return v4;
}

uint64_t InvalidatableCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v15 = v4[2];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v9 + 1) = 130;
  v10 = 2;
  v11 = vdupq_n_s64(0x13uLL);
  v12 = "subscript(_:)";
  v13 = 13;
  v14 = 2;
  type metadata accessor for Future(255, *(v5 + 88), a3, a4);
  sub_25F304B4C();
  v6 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v9, v6, WitnessTable);
  sub_25F304B8C();

  return v9;
}

uint64_t InvalidatableCache.futureResource(for:create:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *v4;
  v28 = v4[2];
  *&v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v22 + 1) = 130;
  v23 = 2;
  v24 = xmmword_25F312310;
  v25 = "futureResource(for:create:)";
  v26 = 27;
  v27 = 2;
  v18 = *(v6 + 80);
  v19 = *(v6 + 88);
  v20 = *(v7 + 96);
  v21 = a1;
  type metadata accessor for Future(255, v19, a3, a4);
  sub_25F304B4C();
  v8 = sub_25F30476C();
  type metadata accessor for Promise(255, v19, v9, v10);
  sub_25F305C1C();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v22, sub_25F294834, v17, v8, TupleTypeMetadata2, WitnessTable);

  v13 = v29;
  if (*(&v29 + 1))
  {
    v14 = sub_25F293B10(v29);
    v15 = a2(v14);
    sub_25F229A9C(&v22);
    v29 = v22;
    Promise.track(future:on:)(v15, &v29);

    sub_25F2033DC(v29);
  }

  return v13;
}

uint64_t sub_25F293930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = v11;
  type metadata accessor for Future(0, v15, v14, v15);
  v20[2] = a4;
  result = sub_25F304B8C();
  v17 = v21;
  if (v21)
  {
    v18 = 0;
  }

  else
  {
    v20[1] = v5;
    v20[0] = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 28, 60, "futureResource(for:create:)", 27, 2);
    v18 = v19;
    v17 = sub_25F2AA33C("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 31, 51, "futureResource(for:create:)", 27, 2);
    (*(v10 + 16))(v13, a2, a3);
    v21 = v17;
    sub_25F304B4C();

    sub_25F304B9C();
  }

  *a5 = v17;
  a5[1] = v18;
  return result;
}

uint64_t sub_25F293B10(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6);
  v8 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = *(v3 + 88);
  *(v9 + 40) = *(v2 + 104);
  *(v9 + 48) = v1;
  (*(v5 + 32))(v9 + v8, v7, v4);

  Future.observeFinish(_:)(sub_25F294948, v9);
}

Swift::Void __swiftcall InvalidatableCache.invalidate()()
{
  v3 = *v2;
  v4 = *v2;
  v34 = v2[2];
  v27 = v4;
  *&v28 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v28 + 1) = 130;
  v29 = 2;
  v30 = xmmword_25F312320;
  v31 = "invalidate()";
  v32 = 12;
  v33 = 2;
  v5 = v3[10];
  v26 = v3[11];
  type metadata accessor for Future(255, v26, v0, v1);
  v6 = v3[12];
  sub_25F304B4C();
  v7 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v28, v7, WitnessTable);
  nullsub_2();
  v10 = v9;

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_25F30625C();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = v11 | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v12 = v10 + 64;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 64);
  }

  v18 = 0;
  v19 = (v13 + 64) >> 6;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v18;
    v21 = v14;
    v22 = v18;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v10 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
LABEL_18:
      sub_25F1BF034(v10);
      return;
    }

    while (1)
    {
      v25 = swift_allocObject();
      v25[2] = v5;
      v25[3] = v26;
      v25[4] = v6;
      v25[5] = v27[13];
      Future.observeSuccess(_:)(sub_25F294858, v25);

      sub_25F2ECD6C("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift", 130, 2, 55, 28, "invalidate()", 12, 2);

      v18 = v22;
      v14 = v23;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_25F30626C())
      {
        swift_unknownObjectRelease();
        sub_25F30655C();
        swift_unknownObjectRelease();
        v22 = v18;
        v23 = v14;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_18;
    }

    v21 = *(v12 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t InvalidatableCache.snapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v15 = v4[2];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/InvalidatableCache.swift";
  *(&v9 + 1) = 130;
  v10 = 2;
  v11 = xmmword_25F312330;
  v12 = "snapshot";
  v13 = 8;
  v14 = 2;
  type metadata accessor for Future(255, *(v5 + 88), a3, a4);
  sub_25F304B4C();
  v6 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v9, v6, WitnessTable);
  return v16;
}

uint64_t sub_25F2940F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v27 = *a2;
  v5 = *(v27 + 80);
  v26 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v26 - v7;
  v10 = *(v9 + 88);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v12 = &v26 - v11;
  v15 = type metadata accessor for FutureTermination(0, v10, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  (*(v16 + 16))(&v26 - v17, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 8))(v18, v15);
    }

    return sub_25F294434(v29);
  }

  else
  {
    (*(v28 + 32))(v12, v18, v10);
    v21 = v26;
    (*(v26 + 16))(v8, v29, v5);
    v22 = (*(v21 + 80) + 56) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = v5;
    *(v23 + 3) = v10;
    v24 = v27;
    *(v23 + 4) = *(v27 + 96);
    v25 = *(v24 + 104);
    *(v23 + 5) = v25;
    *(v23 + 6) = a2;
    (*(v21 + 32))(&v23[v22], v8, v5);

    Invalidatable.onInvalidation(_:)(sub_25F294A40, v23, v10, v25);

    return (*(v28 + 8))(v12, v10);
  }
}

uint64_t sub_25F294434(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v19[-1] - v6;
  v19[1] = v1[2];
  v8 = (*(v5 + 16))(&v19[-1] - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  *v10 = v4;
  v11 = *(v2 + 88);
  *(v10 + 1) = v11;
  v18 = *(v3 + 96);
  *(v10 + 1) = v18;
  (*(v5 + 32))(&v19[3] - v9, v7, v4);
  KeyPath = swift_getKeyPath();
  v19[0] = 0;
  type metadata accessor for Future(255, v11, v13, v14);
  sub_25F304B4C();
  v15 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v19, v15, WitnessTable);
}

uint64_t sub_25F294654@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for Future(0, *(a2 + a3 - 24), a3, x3_0);
  result = sub_25F304B8C();
  *a4 = v7;
  return result;
}

uint64_t sub_25F2946CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 24);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(v13 - v7, v9, v5);
  v13[1] = *a1;
  type metadata accessor for Future(255, v6, v10, v11);
  sub_25F304B4C();

  return sub_25F304B9C();
}

uint64_t InvalidatableCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t ResourceHub.__allocating_init(serviceName:resourceName:bootstrapResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ResourceHub.init(serviceName:resourceName:bootstrapResource:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t *ResourceHub.init(serviceName:resourceName:bootstrapResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *v6;
  swift_defaultActor_initialize();
  v14 = *(v12 + 80);
  v15 = *(v12 + 104);
  v22 = v14;
  v23 = *(v13 + 88);
  v20 = v23;
  v24 = v15;
  v16 = type metadata accessor for ResourceHub.ResourceState(255, &v22);
  swift_getTupleTypeMetadata2();
  v17 = sub_25F3052DC();
  v18 = sub_25F1CCBBC(v17, v20, v16, v15);

  v6[14] = v18;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[19] = a5;
  v6[20] = a6;
  return v6;
}

uint64_t sub_25F294C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  return MEMORY[0x2822009F8](sub_25F294CA8, v3, 0);
}

uint64_t sub_25F294CA8()
{
  v27 = v0;
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v6 = *(v5 + 2);
  *(v5 + 2) = v6 + 1;
  os_unfair_lock_unlock(v5 + 6);
  *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v21 + 1) = 123;
  v22 = 2;
  v23 = xmmword_25F3123E0;
  v24 = "requestResource(for:with:)";
  v25 = 26;
  v26 = 2;
  v7 = *(v2 + 80);
  v8 = static Task.create<>(callsite:)(&v20, &v21, v7);
  v9 = v20;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  v10 = *(v2 + 104);
  *&v21 = v6;
  *(&v21 + 1) = v9;

  v19 = *(v2 + 88);
  sub_25F2967A8(&v21, v3, v4);
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v19;
  *(v11 + 40) = v10;
  *(v11 + 48) = v8;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v12[2] = v8;
  v12[3] = v1;
  v12[4] = v6;
  v12[5] = v3;
  v13.i64[0] = v7;
  *&v14 = vdupq_laneq_s64(v19, 1).u64[0];
  *(&v14 + 1) = v10;
  *(v0 + 32) = v14;
  *(v0 + 16) = vzip1q_s64(v13, v19);
  type metadata accessor for ResourceHub(255, v0 + 16);
  WitnessTable = swift_getWitnessTable();
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = sub_25F294EF4;
  v17 = *(v0 + 48);

  return MEMORY[0x282200830](v17, &unk_25F312470, v11, sub_25F2997DC, v12, v1, WitnessTable, v7);
}

uint64_t sub_25F294EF4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_25F295094;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_25F295024;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F295024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F295094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F295120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  *v7 = v3;
  v7[1] = sub_25F1B51E0;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v8, v9);
}

uint64_t sub_25F2951F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v6 = *a2;
  v7 = *(*a2 + 88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30555C();
  v15 = sub_25F30546C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  (*(v8 + 16))(v10, a4, v7);
  v16 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  *(v17 + 5) = v7;
  *(v17 + 6) = v6[12];
  *(v17 + 7) = v6[13];
  *(v17 + 8) = a2;
  *(v17 + 9) = v20;
  (*(v8 + 32))(&v17[v16], v10, v7);

  sub_25F1B1524(0, 0, v13, &unk_25F312630, v17);
}

uint64_t sub_25F29546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a5;
  return MEMORY[0x2822009F8](sub_25F295490, a4, 0);
}

uint64_t sub_25F295490()
{
  sub_25F297110(v0 + 2, v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25F2954F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25F2955A0;

  return sub_25F294C5C(a1, a2, v6);
}

uint64_t sub_25F2955A0()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_25F2231E4, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_25F2956D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a1;
  v5 = *(*v2 + 88);
  v83 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v68 - v8;
  v10 = *(v9 + 80);
  v85 = *(v11 + 96);
  *&v88 = v10;
  *(&v88 + 1) = v5;
  *v89 = v85;
  v12 = type metadata accessor for ResourceHub.ResourceState(255, &v88);
  v13 = sub_25F305C1C();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v72 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v68 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v68 - v19);
  v84 = v10;
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v68 - v22;
  swift_beginAccess();

  v74 = *(&v85 + 1);
  sub_25F304B8C();
  v24 = v12;

  v25 = *(v12 - 8);
  if ((*(v25 + 48))(v20, 1, v24) == 1)
  {
    (*(v83 + 16))(v81, a2, v5);
    v26 = v79;
    (*(v21 + 16))(v79, v82, v84);
    swift_storeEnumTagMultiPayload();
    (*(v25 + 56))(v26, 0, 1, v24);
    swift_beginAccess();
    sub_25F304B4C();
LABEL_22:
    sub_25F304B9C();
    return swift_endAccess();
  }

  v78 = v3;
  v71 = v21;
  v77 = a2;
  v70 = v5;
  if (swift_getEnumCaseMultiPayload())
  {
    v27 = v71;
    v28 = v84;
    (*(v71 + 32))(v23, v20, v84);
    sub_25F2987D8(&v88);
    (*(v27 + 8))(v23, v28);
    v29 = *&v89[8];
    v30 = __swift_project_boxed_opaque_existential_1(&v88, *&v89[8]);
    v31 = *(v29 - 8);
    MEMORY[0x28223BE20](v30);
    v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    if (sub_25F30650C())
    {
      (*(v31 + 8))(v33, v29);
    }

    else
    {
      swift_allocError();
      (*(v31 + 32))(v64, v33, v29);
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  else
  {
    v69 = v24;
    v34 = *v20;
    *&v35 = v84;
    v36 = v70;
    *(&v35 + 1) = v70;
    v88 = v35;
    *v89 = v85;
    v37 = type metadata accessor for ResourceHub.Request(0, &v88);
    if (!sub_25F30531C())
    {

      (*(v83 + 16))(v73, v77, v36);
      v65 = v71;
LABEL_21:
      v66 = v72;
      (*(v65 + 16))(v72, v82, v84);
      v67 = v69;
      swift_storeEnumTagMultiPayload();
      (*(v25 + 56))(v66, 0, 1, v67);
      swift_beginAccess();
      sub_25F304B4C();
      goto LABEL_22;
    }

    v38 = 0;
    v39 = 0;
    v40 = 40;
    v76 = xmmword_25F312400;
    v75 = xmmword_25F3123F0;
    v41 = v77;
    v42 = v34;
    v80 = v25;
    v81 = v37;
    while (1)
    {
      v48 = sub_25F3052FC();
      v49 = v42;
      v50 = v48;
      v51 = v49;
      result = sub_25F30528C();
      if ((v50 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v38, 1))
      {
        goto LABEL_25;
      }

      *&v85 = v38 + 1;
      if (v39)
      {
        v93 = *(v51 + v40);
        *&v88 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v88 + 1) = 123;
        v89[0] = 2;
        *&v89[8] = v76;
        v90 = "deliverResource(_:for:)";
        v91 = 23;
        v92 = 2;
        swift_retain_n();
        sub_25F2986AC(v86);
        v53 = v87;
        v54 = __swift_project_boxed_opaque_existential_1(v86, v87);
        v79 = &v68;
        v55 = *(v53 - 8);
        MEMORY[0x28223BE20](v54);
        v57 = &v68 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v57);
        v58 = sub_25F30650C();
        if (v58)
        {
          v59 = v58;
          (*(v55 + 8))(v57, v53);
        }

        else
        {
          v59 = swift_allocError();
          (*(v55 + 32))(v60, v57, v53);
        }

        v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v62 = type metadata accessor for Task.Promise(0, v84, v61, MEMORY[0x277D84950]);
        WitnessTable = swift_getWitnessTable();
        PromiseProtocol.fulfill<>(callsite:throwing:)(&v88, v59, v62, WitnessTable);

        __swift_destroy_boxed_opaque_existential_1(v86);
        v39 = 1;
        v41 = v77;
      }

      else
      {
        v86[0] = *(v51 + v40);
        *&v88 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v88 + 1) = 123;
        v89[0] = 2;
        *&v89[8] = v75;
        v90 = "deliverResource(_:for:)";
        v91 = 23;
        v92 = 2;

        v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v44 = type metadata accessor for Task.Promise(0, v84, v43, MEMORY[0x277D84950]);
        v45 = swift_getWitnessTable();
        v39 = PromiseProtocol.fulfill(callsite:returning:)(&v88, v82, v44, v45);
      }

      v42 = v51;
      v46 = sub_25F30531C();
      ++v38;
      v40 += 16;
      v47 = v83;
      v25 = v80;
      if (v85 == v46)
      {

        (*(v47 + 16))(v73, v41, v70);
        v65 = v71;
        goto LABEL_21;
      }
    }

    result = sub_25F30601C();
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2961AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - v6;
  sub_25F305FDC();
  sub_25F2956D4(a1, v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F2962B8(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v27 = &v22 - v5;
  v7 = *(v6 + 80);
  v28 = *(v8 + 96);
  v25 = v7;
  v30 = v7;
  v31 = v3;
  v32 = v28;
  v9 = type metadata accessor for ResourceHub.ResourceState(255, &v30);
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v22 - v15);
  swift_beginAccess();

  v26 = a1;
  sub_25F304B8C();

  v17 = *(v9 - 8);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      (*(v17 + 8))(v16, v9);
    }

    else
    {
      v24 = &v22;
      v23 = *v16;
      v29 = v23;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v19 = v25;
      *(&v19 + 1) = v3;
      v20 = v28;
      *(&v22 - 2) = v19;
      *(&v22 - 1) = v20;
      v30 = v19;
      v31 = v3;
      v32 = v20;
      type metadata accessor for ResourceHub.Request(255, &v30);
      sub_25F30539C();
      swift_getWitnessTable();
      sub_25F3051BC();
    }
  }

  (*(v4 + 16))(v27, v26, v3);
  (*(v17 + 56))(v14, 1, 1, v9);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F2966C4(uint64_t a1, uint64_t a2)
{
  v13 = *(a1 + 8);
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v7 + 1) = 123;
  v8 = 2;
  v9 = xmmword_25F312410;
  v10 = "purgeResource(for:)";
  v11 = 19;
  v12 = 2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = type metadata accessor for Task.Promise(0, a2, v3, MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.cancel<>(callsite:)(&v7, v4, WitnessTable);
}

uint64_t sub_25F2967A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v6 = *(*v3 + 80);
  v72 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v71 = v69 - v8;
  v10 = *(v9 + 88);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = v69 - v11;
  v78 = *(v12 + 96);
  *&v81 = v6;
  *(&v81 + 1) = v10;
  *v82 = v78;
  v13 = type metadata accessor for ResourceHub.ResourceState(255, &v81);
  v14 = sub_25F305C1C();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = (v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = v69 - v18;
  v20 = a1[1];
  v74 = *a1;
  v76 = v20;
  swift_beginAccess();

  v21 = *(&v78 + 1);
  v22 = a2;
  sub_25F304B8C();

  v23 = *(v13 - 8);
  if ((*(v23 + 48))(v19, 1, v13) == 1)
  {
    (*(v75 + 16))(v77, a2, v10);
    *&v24 = v6;
    *(&v24 + 1) = v10;
    *v82 = v78;
    v81 = v24;
    v25 = v23;
    v26 = type metadata accessor for ResourceHub.Request(255, &v81);
    sub_25F3064EC();
    swift_allocObject();
    v27 = sub_25F30527C();
    v28 = v76;
    *v29 = v74;
    v29[1] = v28;
    sub_25F1F7314(v27, v26);
    *v17 = v30;
    swift_storeEnumTagMultiPayload();
    (*(v25 + 56))(v17, 0, 1, v13);
    swift_beginAccess();
    sub_25F304B4C();

    sub_25F304B9C();
    swift_endAccess();
    return sub_25F297550(v22, v73);
  }

  else
  {
    v32 = v75;
    v69[0] = v10;
    v33 = v76;
    v69[1] = v21;
    v70 = v17;
    v34 = v22;
    v73 = v6;
    v35 = v77;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      *&v78 = v13;
      v37 = v23;
      if (EnumCaseMultiPayload == 1)
      {
        v38 = v32;
        v74 = v3;
        v39 = v72;
        v40 = v71;
        v41 = v73;
        (*(v72 + 32))(v71, v19, v73);
        v42 = v33;
        v43 = v40;
        v79[0] = v42;
        *&v81 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v81 + 1) = 123;
        v82[0] = 2;
        *&v82[8] = xmmword_25F312430;
        v83 = "storeOrResumeRequest(_:for:with:)";
        v84 = 33;
        v85 = 2;

        v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v45 = type metadata accessor for Task.Promise(0, v41, v44, MEMORY[0x277D84950]);
        WitnessTable = swift_getWitnessTable();
        LOBYTE(v40) = PromiseProtocol.fulfill(callsite:returning:)(&v81, v40, v45, WitnessTable);

        if (v40)
        {
          (*(v38 + 16))(v35, v34, v69[0]);
          v47 = v70;
          (*(v39 + 16))(v70, v43, v41);
          v48 = v78;
          swift_storeEnumTagMultiPayload();
          (*(v37 + 56))(v47, 0, 1, v48);
          swift_beginAccess();
          sub_25F304B4C();
          sub_25F304B9C();
          swift_endAccess();
        }

        return (*(v39 + 8))(v43, v41);
      }

      else
      {
        v57 = v19;
        v86 = v33;
        *&v81 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
        *(&v81 + 1) = 123;
        v82[0] = 2;
        *&v82[8] = xmmword_25F312420;
        v83 = "storeOrResumeRequest(_:for:with:)";
        v84 = 33;
        v85 = 2;

        sub_25F2986AC(v79);
        v58 = v80;
        v59 = __swift_project_boxed_opaque_existential_1(v79, v80);
        v60 = *(v58 - 8);
        MEMORY[0x28223BE20](v59);
        v62 = v69 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v60 + 16))(v62);
        v63 = sub_25F30650C();
        if (v63)
        {
          v64 = v63;
          (*(v60 + 8))(v62, v58);
        }

        else
        {
          v64 = swift_allocError();
          (*(v60 + 32))(v65, v62, v58);
        }

        v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
        v67 = type metadata accessor for Task.Promise(0, v73, v66, MEMORY[0x277D84950]);
        v68 = swift_getWitnessTable();
        PromiseProtocol.fulfill<>(callsite:throwing:)(&v81, v64, v67, v68);

        __swift_destroy_boxed_opaque_existential_1(v79);
        return (*(v37 + 8))(v57, v78);
      }
    }

    else
    {
      v49 = v35;
      v50 = v69[0];
      (*(v32 + 16))(v49, v34, v69[0]);
      *&v81 = v73;
      *(&v81 + 1) = v50;
      *v82 = v78;
      v51 = v23;
      v52 = type metadata accessor for ResourceHub.Request(255, &v81);
      sub_25F3064EC();
      swift_allocObject();
      v53 = sub_25F30527C();
      *v54 = v74;
      v54[1] = v33;
      sub_25F1F7314(v53, v52);

      v55 = sub_25F3052BC();

      v56 = v70;
      *v70 = v55;
      swift_storeEnumTagMultiPayload();
      (*(v51 + 56))(v56, 0, 1, v13);
      swift_beginAccess();
      sub_25F304B4C();
      sub_25F304B9C();
      return swift_endAccess();
    }
  }
}

uint64_t sub_25F297110(uint64_t *a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v23 - v6;
  v8 = *(v7 + 80);
  v29 = *(v9 + 96);
  v31 = v8;
  v32 = v5;
  v33 = v29;
  v10 = type metadata accessor for ResourceHub.ResourceState(255, &v31);
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v25 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - v15);
  v24 = *a1;
  swift_beginAccess();

  v27 = a2;
  sub_25F304B8C();

  v17 = *(v10 - 8);
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    return (*(v17 + 8))(v16, v10);
  }

  v23 = &v23;
  v30 = *v16;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *&v20 = v8;
  *(&v20 + 1) = v5;
  v21 = v29;
  *(&v23 - 3) = v20;
  *(&v23 - 2) = v21;
  *(&v23 - 2) = v24;
  v31 = v8;
  v32 = v5;
  v33 = v21;
  type metadata accessor for ResourceHub.Request(255, &v31);
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30599C();
  (*(v26 + 16))(v28, v27, v5);
  v22 = v25;
  *v25 = v30;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 56))(v22, 0, 1, v10);
  swift_beginAccess();
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t sub_25F297550(uint64_t a1, uint64_t a2)
{
  v27 = *v2;
  v28 = a2;
  v26 = *(v27 + 96);
  v4 = *(v26 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v25 - v6;
  v25 = &v25 - v6;
  v9 = *(v8 + 88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v5);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_25F30546C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  v18 = v7;
  v19 = v26;
  (*(v4 + 16))(v18, v28, v26);
  v20 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v21 = (v11 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = *(v23 + 80);
  *(v22 + 5) = v9;
  *(v22 + 6) = v19;
  *(v22 + 7) = *(v23 + 104);
  *(v22 + 8) = v2;
  (*(v10 + 32))(&v22[v20], v13, v9);
  (*(v4 + 32))(&v22[v21], v25, v19);

  sub_25F297F60(0, 0, v16, &unk_25F312600, v22);

  return sub_25F1AF698(v16, &qword_27FD52B40, &qword_25F307EA0);
}

uint64_t sub_25F29786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*a4 + 88);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F297948, 0, 0);
}

uint64_t sub_25F297948()
{
  v5 = (*(v0[2] + 152) + **(v0[2] + 152));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25F297A3C;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_25F297A3C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F297B80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F297B80()
{
  v32 = v0;
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = sub_25F30479C();
  __swift_project_value_buffer(v6, qword_281561A40);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);

  v8 = v1;
  v9 = sub_25F30477C();
  v10 = sub_25F305A0C();

  if (os_log_type_enabled(v9, v10))
  {
    v29 = v0[10];
    v11 = v0[7];
    v27 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 136446978;
    *(v15 + 4) = sub_25F1C53AC(*(v14 + 120), *(v14 + 128), &v31);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_25F1C53AC(*(v14 + 136), *(v14 + 144), &v31);
    *(v15 + 22) = 2082;
    v7(v11, v27, v13);
    v16 = sub_25F304E7C();
    v18 = v17;
    (*(v12 + 8))(v27, v13);
    v19 = sub_25F1C53AC(v16, v18, &v31);

    *(v15 + 24) = v19;
    *(v15 + 32) = 2114;
    v20 = v29;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 34) = v21;
    *v28 = v21;
    _os_log_impl(&dword_25F1A2000, v9, v10, "%{public}s was unable to bootstrap %{public}s for '%{public}s': %{public}@", v15, 0x2Au);
    sub_25F1AF698(v28, qword_27FD53838, &qword_25F309710);
    MEMORY[0x25F8D9510](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v30, -1, -1);
    MEMORY[0x25F8D9510](v15, -1, -1);
  }

  else
  {
    v22 = v0[8];
    v23 = v0[5];
    v24 = v0[6];

    (*(v24 + 8))(v22, v23);
  }

  v25 = v0[2];

  return MEMORY[0x2822009F8](sub_25F297E84, v25, 0);
}

uint64_t sub_25F297E84()
{
  sub_25F298210(*(v0 + 80), *(v0 + 24));

  return MEMORY[0x2822009F8](sub_25F297EF0, 0, 0);
}

uint64_t sub_25F297EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F297F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F1B4740(a3, v25 - v10);
  v12 = sub_25F30546C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F1AF698(v11, &qword_27FD52B40, &qword_25F307EA0);
  }

  else
  {
    sub_25F30545C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3053EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F304EAC() + 32;
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

uint64_t sub_25F298210(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = *(*v2 + 88);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v22 - v5;
  v8 = *(v7 + 80);
  v25 = *(v9 + 96);
  v27 = v8;
  v28 = v4;
  v29 = v25;
  v10 = type metadata accessor for ResourceHub.ResourceState(255, &v27);
  v11 = sub_25F305C1C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v22 - v15);
  swift_beginAccess();

  sub_25F304B8C();

  v17 = *(v10 - 8);
  result = (*(v17 + 48))(v16, 1, v10);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      return (*(v17 + 8))(v16, v10);
    }

    else
    {
      v22[1] = v22;
      v22[0] = *v16;
      v26 = v22[0];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v20 = v8;
      *(&v20 + 1) = v4;
      v21 = v25;
      *&v22[-6] = v20;
      *&v22[-4] = v21;
      v22[-2] = v23;
      v27 = v8;
      v28 = v4;
      v29 = v21;
      type metadata accessor for ResourceHub.Request(255, &v27);
      sub_25F30539C();
      swift_getWitnessTable();
      *&v25 = v2;
      sub_25F3051BC();

      (*(v24 + 16))(v6, a2, v4);
      (*(v17 + 56))(v14, 1, 1, v10);
      swift_beginAccess();
      sub_25F304B4C();
      sub_25F304B9C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_25F2985C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *(a1 + 8);
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ResourceHub.swift";
  *(&v9 + 1) = 123;
  v10 = 2;
  v11 = xmmword_25F312440;
  v12 = "handleBootstrapError(_:for:)";
  v13 = 28;
  v14 = 2;

  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = type metadata accessor for Task.Promise(0, a3, v5, MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill<>(callsite:throwing:)(&v9, a2, v6, WitnessTable);
}

double sub_25F2986AC@<D0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v3[15], v3[16]);
  MEMORY[0x25F8D7130](0xD000000000000020, 0x800000025F31A860);
  MEMORY[0x25F8D7130](v3[17], v3[18]);
  MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F31A890);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  a2[3] = &type metadata for LowValueError;
  a2[4] = sub_25F29A320();
  v5 = swift_allocObject();
  *a2 = v5;
  result = 0.0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 64) = 0;
  return result;
}

uint64_t sub_25F2987D8@<X0>(uint64_t *a4@<X8>)
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x746163696C707564, 0xEA00000000002065);
  v6 = *(v4 + 136);
  v7 = *(v4 + 144);
  MEMORY[0x25F8D7130](v6, v7);
  MEMORY[0x25F8D7130](43020312340000, 0xE600000000000000);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x6C616E696769724FLL, 0xE900000000000020);
  MEMORY[0x25F8D7130](v6, v7);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  sub_25F30653C();
  MEMORY[0x25F8D7130](0x6163696C7075440ALL, 0xEB00000000206574);
  MEMORY[0x25F8D7130](v6, v7);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  sub_25F30653C();
  a4[3] = &type metadata for LowValueError;
  a4[4] = sub_25F29A320();
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
}

void *ResourceHub.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ResourceHub.__deallocating_deinit()
{
  ResourceHub.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t ResourceHub.requestResource(for:with:withTimeout:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v9 = *v6;
  *(v7 + 80) = *v6;
  v10 = *(v9 + 96);
  *(v7 + 88) = v10;
  v11 = *(v10 - 8);
  *(v7 + 96) = v11;
  *(v7 + 104) = *(v11 + 64);
  *(v7 + 112) = swift_task_alloc();
  v12 = *(v9 + 88);
  *(v7 + 120) = v12;
  v13 = *(v12 - 8);
  *(v7 + 128) = v13;
  *(v7 + 136) = *(v13 + 64);
  *(v7 + 144) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *a4;
  *(v7 + 152) = v14;
  *(v7 + 160) = v15;
  *(v7 + 25) = *(a4 + 8);

  return MEMORY[0x2822009F8](sub_25F298C20, v6, 0);
}

uint64_t sub_25F298C20()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 136);
  v25 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v20 = *(v0 + 152);
  v21 = v5;
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v22 = *(v0 + 80);
  v28 = *(v0 + 72);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 24) = v1;
  v23 = *(v3 + 16);
  v24 = v8;
  v23();
  (*(v6 + 16))(v5, v9, v7);
  v10 = *(v3 + 80);
  v11 = (v10 + 56) & ~v10;
  v18 = (v2 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v0 + 168) = v12;
  v29 = *(v22 + 80);
  *(v12 + 2) = v29;
  *(v12 + 3) = v4;
  *(v12 + 4) = v7;
  v19 = *(v22 + 104);
  *(v12 + 5) = v19;
  *(v12 + 6) = v28;
  v13 = *(v3 + 32);
  v13(&v12[v11], v20, v4);
  (*(v6 + 32))(&v12[v18], v21, v7);
  (v23)(v25, v24, v4);
  v14 = swift_allocObject();
  *(v0 + 176) = v14;
  *(v14 + 2) = v29;
  *(v14 + 3) = v4;
  *(v14 + 4) = v7;
  *(v14 + 5) = v19;
  *(v14 + 6) = v26;
  *(v14 + 7) = v27;
  *(v14 + 8) = v28;
  v13(&v14[(v10 + 72) & ~v10], v25, v4);
  swift_retain_n();
  sub_25F1D2078(v26, v27);
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_25F298EE4;
  v16 = *(v0 + 32);

  return withTimeout<A>(_:perform:makeTimeoutError:)(v16, v0 + 16, &unk_25F312498, v12, &unk_25F3124A8, v14, v29);
}

uint64_t sub_25F298EE4()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](sub_25F29906C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_25F29906C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F2990E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F1AFDB0;

  return sub_25F294C5C(a1, a3, a4);
}

uint64_t sub_25F29919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_25F2991C4, 0, 0);
}

uint64_t sub_25F2991C4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = v1(*(v0 + 56));
  }

  else
  {
    sub_25F299360((v0 + 16));
    v3 = *(v0 + 40);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    v7 = sub_25F30650C();
    if (v7)
    {
      v8 = v7;
      (*(v5 + 8))(v6, v3);
    }

    else
    {
      v8 = swift_allocError();
      (*(v5 + 32))(v9, v6, v3);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = v8;
  }

  v10 = *(v0 + 8);

  return v10(v2);
}

double sub_25F299360@<D0>(uint64_t *a2@<X8>)
{
  v4 = v3;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v4[15], v4[16]);
  MEMORY[0x25F8D7130](0xD000000000000011, 0x800000025F31A820);
  sub_25F30561C();
  MEMORY[0x25F8D7130](0x6E69746961772073, 0xEE0020726F662067);
  MEMORY[0x25F8D7130](v4[17], v4[18]);
  MEMORY[0x25F8D7130](43020312340000, 0xE600000000000000);
  sub_25F30653C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  a2[3] = &type metadata for LowValueError;
  a2[4] = sub_25F29A320();
  v6 = swift_allocObject();
  *a2 = v6;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 64) = 2;
  return result;
}

uint64_t ResourceHub.requestResource<>(for:withTimeout:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = v5;
  v11 = *(a3 + 8);
  *(v6 + 16) = *a3;
  *(v6 + 24) = v11;
  v13 = swift_task_alloc();
  *(v6 + 40) = v13;
  *v13 = v6;
  v13[1] = sub_25F2995B0;

  return ResourceHub.requestResource(for:with:withTimeout:makeTimeoutError:)(a1, a2, v12, (v6 + 16), a4, a5);
}

uint64_t sub_25F2995B0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_25F2996E4, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_25F299714(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1B51E0;

  return sub_25F295120(a1, v5, v4);
}

uint64_t sub_25F299838(uint64_t a1)
{
  v3 = v2;
  v5 = *(*(v1[3] - 8) + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = (v6 + *(*(v1[3] - 8) + 64) + *(*(v1[4] - 8) + 80)) & ~*(*(v1[4] - 8) + 80);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F1AFDB0;

  return sub_25F2990E4(a1, v8, v1 + v6, v1 + v7);
}

uint64_t sub_25F299974(double a1)
{
  v4 = (*(*(v1[3] - 8) + 80) + 72) & ~*(*(v1[3] - 8) + 80);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1EA6F4;

  return sub_25F29919C(v5, v6, v7, v1 + v4, a1);
}

uint64_t dispatch thunk of ResourceHub.requestResource(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F1B51E0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ResourceHub.requestResource<>(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F1B51E0;

  return v8(a1, a2);
}

uint64_t sub_25F299DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F299E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v1;
  type metadata accessor for ResourceHub.Request(255, v5);
  result = sub_25F30539C();
  if (v3 <= 0x3F)
  {
    v6 = result;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v7 = result;
      v8 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F299EC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_25F299FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F29A1BC(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[5] - 8) + 80) + 72) & ~*(*(v1[5] - 8) + 80);
  v6 = (v5 + *(*(v1[5] - 8) + 64) + *(*(v1[6] - 8) + 80)) & ~*(*(v1[6] - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F1B51E0;

  return sub_25F29786C(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

unint64_t sub_25F29A320()
{
  result = qword_27FD57440[0];
  if (!qword_27FD57440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57440);
  }

  return result;
}

uint64_t sub_25F29A374(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[8];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1AFDB0;

  return sub_25F29546C(a1, v5, v6, v7, v8, v1 + v4);
}

uint64_t CodableBox.description.getter()
{
  v0 = sub_25F29AD68();

  return v0;
}

uint64_t CodableBox.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  sub_25F3043DC();
  swift_allocObject();
  sub_25F3043CC();
  v7 = sub_25F3043BC();
  v9 = v8;

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_25F30653C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  a4[2] = v7;
  a4[3] = v9;
  return result;
}

uint64_t CodableBox.value.getter(uint64_t a1)
{
  sub_25F3043AC();
  swift_allocObject();
  sub_25F30439C();
  sub_25F30438C();
}

uint64_t sub_25F29A7A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3063BC();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F29A7F8(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_25F29A830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F29A910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A9F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F29A7A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F29AA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F29A7F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_OWORD *CodableBox.propertyListValue.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F29AAC8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), a1[2], a1[3], a1[4]);
  result = sub_25F252514(v4, &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_25F29AAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v18[0] = a1;
  v18[1] = a2;
  v17 = 1;
  v15 = a3;
  v16 = a4;

  sub_25F1B70AC(a3, a4);
  sub_25F1B70AC(a3, a4);
  v12 = type metadata accessor for CodableBox.Key(0, a5, a6, a7);
  v13 = static PropertyListBuilder.buildBlock<A, B, C, D>(_:_:)(&v19, v18, &v17, &v15, v12, MEMORY[0x277D837D0], v12, MEMORY[0x277CC9318], &off_2871669B8, &protocol witness table for String, &off_2871669B8, &protocol witness table for Data);
  sub_25F1D4B9C(v15, v16);

  sub_25F1D4BB0(a3, a4);
  return v13;
}

uint64_t CodableBox.init(propertyListValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for CodableBox.Key(0, a2, a3, a4);
  v17 = v8;
  v18 = &off_2871669B8;
  LOBYTE(v16[0]) = 0;
  v9 = sub_25F1FDE58(v16, v7);
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = v10;
    v13 = v9;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v8;
    v18 = &off_2871669B8;
    LOBYTE(v16[0]) = 1;
    sub_25F1FDF90(v16, v7, &v15);

    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v14 = v15;
    *a5 = v13;
    *(a5 + 8) = v12;
    *(a5 + 16) = v14;
  }

  return result;
}

uint64_t sub_25F29ACF4()
{
  v0 = sub_25F29AD68();

  return v0;
}

uint64_t sub_25F29AD2C(uint64_t (*a1)(void))
{
  a1();

  return sub_25F30685C();
}

uint64_t sub_25F29AD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F29ADF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30678C();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_25F30540C();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_25F30541C();
  }
}

uint64_t sub_25F29B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    v6 = a1;
    ObjectType = swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 19, ObjectType, a3);
    a1 = v6;
  }

  return a4(a1);
}

uint64_t sub_25F29B0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = type metadata accessor for IsolatedTask(0, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  v7 = *(v6 - 8);
  (*(v7 + 16))(v11, a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v12;
  result = (*(v7 + 8))(v11, v6);
  *a4 = Strong;
  a4[1] = v9;
  return result;
}

uint64_t IsolatedTask.executor.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*IsolatedTask.executor.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 16);
  *a1 = Strong;
  a1[1] = v4;
  return sub_25F29B248;
}

uint64_t sub_25F29B248(uint64_t *a1)
{
  *(a1[2] + 16) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t static IsolatedTask.create(callsite:on:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  IsolatedTask.init(callsite:on:)(a2, a4, a5, a6, a7, a1);
  type metadata accessor for IsolatedTask.Promise(0, a5, a6, a7);
  v13 = type metadata accessor for IsolatedTask(0, a5, a6, a7);
  (*(*(v13 - 8) + 16))(v15, a1, v13);
  swift_allocObject();
  return sub_25F29E284(v15);
}

uint64_t IsolatedTask.init(callsite:on:)@<X0>(__int128 *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = a1[1];
  v28[0] = *a1;
  v28[1] = v12;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  a7[2] = 0;
  swift_unknownObjectWeakInit();
  v13 = type metadata accessor for IsolatedTask.ObserverBox(255, a4, a5, a6);
  v14 = type metadata accessor for ObserverAndTokenStorage(255, v13, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v15 = type metadata accessor for PromiseFulfillment(255, a4, a5, a6);
  type metadata accessor for FulfillOnceState(0, v14, v15, v16);
  sub_25F1E5808(v13, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback, &v26);
  v24 = v26;
  v25 = v27;
  v22 = xmmword_25F3077E0;
  v23 = 2;
  sub_25F305FAC();

  strcpy(v21, "IsolatedTask<");
  HIWORD(v21[1]) = -4864;
  v17 = sub_25F30685C();
  MEMORY[0x25F8D7130](v17);

  MEMORY[0x25F8D7130](8236, 0xE200000000000000);
  v18 = sub_25F30685C();
  MEMORY[0x25F8D7130](v18);

  MEMORY[0x25F8D7130](62, 0xE100000000000000);
  v19 = sub_25F1D1EE4(&v24, v28, 0, 0, &v22, v21[0], v21[1], 0x656C6C69666C7566, 0xE900000000000064);

  *a7 = v19;
  a7[2] = a3;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t IsolatedTask.description.getter(uint64_t a1)
{
  sub_25F305FAC();

  strcpy(v5, "IsolatedTask<");
  v1 = sub_25F30685C();
  MEMORY[0x25F8D7130](v1);

  MEMORY[0x25F8D7130](8236, 0xE200000000000000);
  v2 = sub_25F30685C();
  MEMORY[0x25F8D7130](v2);

  MEMORY[0x25F8D7130](2112062, 0xE300000000000000);
  v3 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v3);

  return v5[0];
}

void sub_25F29B754(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v9 = a6[2];
  v10 = a6[3];
  v11 = a6[4];
  v12 = type metadata accessor for PromiseFulfillment(0, v9, v10, v11);
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v55 = v52 - v13;
  v54 = type metadata accessor for IsolatedTask.ObserverBox(255, v9, v10, v11);
  *&v61 = type metadata accessor for ObserverAndTokenStorage(255, v54, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v59 = v12;
  v58 = type metadata accessor for FulfillOnceState.FulfillmentOutcome(0, v61, v12, v14);
  v57 = *(v58 - 8);
  v15 = MEMORY[0x28223BE20](v58);
  v17 = (v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v60 = v52 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = *(v6 + 16);
    ObjectType = swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 64, ObjectType, v20);
    Strong = swift_unknownObjectRelease();
  }

  v22 = a1[1];
  v65[0] = *a1;
  v65[1] = v22;
  v66[0] = a1[2];
  *(v66 + 9) = *(a1 + 41);
  v23 = MEMORY[0x28223BE20](Strong);
  v52[-6] = v9;
  v52[-5] = v10;
  v25 = v62;
  v24 = v63;
  v52[-4] = v11;
  v52[-3] = v25;
  v52[-2] = v24;
  MEMORY[0x28223BE20](v23);
  v52[-6] = v9;
  v52[-5] = v10;
  v26 = v64;
  v52[-4] = v11;
  v52[-3] = v26;
  v52[-2] = a5;
  v27 = v60;
  v28 = v73;
  FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(v65, sub_25F1B46F4, v29, sub_25F2A0250, &v52[-8]);
  if (!v28)
  {
    v73 = 0;
    v30 = v57;
    v31 = v58;
    (*(v57 + 16))(v17, v27, v58);
    v32 = v59;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = (*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2);
    v53 = v34 != 1;
    if (v34 == 1)
    {
      v51 = *(v30 + 8);
      v51(v27, v31);
      v51(v17, v31);
    }

    else
    {
      v35 = *v17;
      v36 = v17[1];
      v63 = v17[2];
      v37 = v17 + *(TupleTypeMetadata2 + 48);
      v38 = v55;
      v39 = (*(v56 + 32))(v55, v37, v32);
      *&v65[0] = v35;
      *(&v65[0] + 1) = v36;
      MEMORY[0x28223BE20](v39);
      v52[-4] = v9;
      v52[-3] = v10;
      v52[-2] = v11;
      v52[-1] = v38;
      v40 = sub_25F1E6B9C();
      type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v54, v40);
      v54 = v35;

      v52[1] = v36;

      swift_getWitnessTable();
      v41 = v73;
      sub_25F3051BC();
      v73 = v41;

      v42 = v63;
      v62 = *(v63 + 16);
      if (v62)
      {
        v43 = 0;
        v44 = (v63 + 64);
        v61 = xmmword_25F312820;
        while (v43 < *&v42[4]._os_unfair_lock_opaque)
        {
          v45 = *(v44 - 4);
          v46 = *(v44 - 3);
          v64 = *(v44 - 2);
          v47 = *v44;
          v67[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
          v67[1] = 124;
          v68 = 2;
          v69 = v61;
          v70 = "fulfill(callsite:makeFulfillment:ifAlreadyCompleted:)";
          v71 = 53;
          v72 = 2;
          v48 = *(v47 + 152);
          MEMORY[0x28223BE20](v42);
          v52[-6] = nullsub_2;
          v52[-5] = 0;
          v52[-4] = v67;
          v52[-3] = v47;
          v52[-2] = sub_25F1D3340;
          v52[-1] = 0;
          swift_unknownObjectRetain();

          os_unfair_lock_lock(v48 + 19);
          v49 = v73;
          sub_25F1D3DD4(&v48[4], v65);
          v73 = v49;
          v42 = v48 + 19;
          if (v49)
          {
            goto LABEL_18;
          }

          os_unfair_lock_unlock(v42);
          if ((v65[0] & 1) == 0)
          {
            if (v45)
            {
              v50 = swift_getObjectType();
              Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/CancelationToken.swift", 43, 2, 57, v50, v46);
            }

            v64();
          }

          ++v43;

          swift_unknownObjectRelease();
          v44 += 5;
          v42 = v63;
          if (v62 == v43)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_18:
        os_unfair_lock_unlock(v42);
        __break(1u);
      }

      else
      {
LABEL_15:

        (*(v57 + 8))(v60, v58);
        (*(v56 + 8))(v55, v59);
      }
    }
  }
}

uint64_t sub_25F29BE78(uint64_t a1, __int128 *a2, uint64_t (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for PromiseFulfillment(0, a5, a6, a7);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v14 = a2[5];
  v24 = a2[4];
  v25 = v14;
  v26 = *(a2 + 12);
  v15 = a2[1];
  v20 = *a2;
  v21 = v15;
  v16 = a2[3];
  v22 = a2[2];
  v23 = v16;
  (*(v11 + 16))(v18 - v12, a1, v10);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  result = (*(v11 + 8))(v13, v10);
  if (a2 <= 1)
  {
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[3] = v23;
    v18[2] = v22;
    return a3(v18);
  }

  return result;
}

uint64_t sub_25F29C00C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v42 = a3;
  v43 = a1;
  v49 = a4;
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v10 = type metadata accessor for PromiseFulfillment(0, v8, v7, v9);
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v11;
  v12 = type metadata accessor for IsolatedTask.ObserverBox(255, v8, v7, v9);
  v13 = type metadata accessor for ObserverAndTokenStorage(255, v12, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v41 = v10;
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v13, v10, &type metadata for Identifier);
  v15 = *(updated - 8);
  v16 = MEMORY[0x28223BE20](updated);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = *(v5 + 16);
  v40 = v5;
  v23 = v43;
  v44 = v8;
  v45 = Strong;
  v51 = v8;
  v52 = v7;
  v53 = v9;
  v54 = Strong;
  v37 = v22;
  v55 = v22;
  v56 = v43;
  v57 = a2;
  v48 = a2;

  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A0338, v50, &type metadata for Identifier, v24);
  v46 = v15;
  (*(v15 + 16))(v18, v20, updated);
  v47 = updated;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v39;
    v26 = v38;
    v27 = v41;
    (*(v39 + 32))(v38, v18, v41);
    sub_25F29B034(v26, v45, v37, v23);

    swift_unknownObjectRelease();
    (*(v25 + 8))(v26, v27);
    result = (*(v46 + 8))(v20, v47);
    v29 = 0;
    v30 = 0;
    v31 = v49;
    *v49 = 0;
    v31[1] = 0;
    v31[2] = 0;
  }

  else
  {
    v32 = *v18;
    v33 = v42;
    v34 = *(v42 - 1);
    (*(v34 + 16))(v58, v40, v42);
    v29 = swift_allocObject();
    v29[2] = v44;
    v29[3] = v7;
    v29[4] = v9;
    (*(v34 + 32))(v29 + 5, v58, v33);
    v29[8] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v30 = swift_allocObject();
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v35 = swift_allocObject();
    *(v35 + 76) = 0;
    *(v35 + 73) = v59;
    *(v30 + 152) = v35;
    *(v30 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
    *(v30 + 24) = 124;
    *(v30 + 32) = 2;
    *(v30 + 40) = xmmword_25F312830;
    *(v30 + 56) = "observeFulfillment(observer:)";
    *(v30 + 64) = 29;
    *(v30 + 72) = 2;
    *(v30 + 80) = 0;
    *(v30 + 88) = 0;
    *(v30 + 96) = xmmword_25F3077E0;
    *(v30 + 112) = 2;
    *(v30 + 120) = 0xD000000000000011;
    *(v30 + 128) = 0x800000025F319920;
    *(v30 + 136) = 0x64656C65636E6163;
    *(v30 + 144) = 0xE800000000000000;

    swift_unknownObjectRelease();
    result = (*(v46 + 8))(v20, v47);
    v31 = v49;
    *v49 = 0;
    v31[1] = 0;
    v31[2] = sub_25F2A034C;
  }

  v31[3] = v29;
  v31[4] = v30;
  return result;
}

uint64_t sub_25F29C508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v9 = type metadata accessor for IsolatedTask.ObserverBox(255, a5, a6, a7);
  v10 = type metadata accessor for ObserverAndTokenStorage(0, v9, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  return sub_25F1E55A8(v12, v10, a8);
}

uint64_t sub_25F29C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for IsolatedTask.ObserverBox(255, a3, a4, a5);
  v10 = type metadata accessor for ObserverAndTokenStorage(255, v9, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v11 = type metadata accessor for PromiseFulfillment(255, a3, a4, a5);
  v12 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v10, v11, MEMORY[0x277D84F78] + 8);
  v14 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v16 = &v19[-v15];
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a2;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A0360, v19, v12 + 8, v17);
  return (*(v14 + 8))(v16, updated);
}

uint64_t sub_25F29C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v5 = type metadata accessor for IsolatedTask.ObserverBox(255, a3, a4, a5);
  v6 = type metadata accessor for ObserverAndTokenStorage(0, v5, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  return sub_25F1E5724(&v8, v6);
}

uint64_t IsolatedTask.observe<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  return sub_25F29C9E4(a1, a2, a3, sub_25F29FBF0, a4);
}

{
  return sub_25F29C9E4(a1, a2, a3, sub_25F29FBFC, a4);
}

uint64_t sub_25F29C774(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = MEMORY[0x277D84950];
  v8 = sub_25F30678C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for PromiseFulfillment(0, a4, v6, v7);
  sub_25F227FB8(v12, v11);
  a2(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F29C8CC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromiseFulfillment(0, a4, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  sub_25F226D14(v9, v8);
  a2(v8);
  return (*(v6 + 8))(v8, a4);
}

uint64_t sub_25F29C9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = swift_allocObject();
  v11[2] = a3[2];
  v11[3] = a1;
  v11[4] = a2;

  sub_25F29C00C(a5, v11, a3, a6);
}

uint64_t sub_25F29CA7C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = type metadata accessor for PromiseFulfillment(0, a4, v10, MEMORY[0x277D84950]);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  (*(v12 + 16))(&v16 - v13, a1, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v7 + 32))(v9, v14, a4);
  a2(v9);
  return (*(v7 + 8))(v9, a4);
}

uint64_t CancelationToken<>.cancel<A, B>(onFulfillmentOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v6;
  v10 = v5;
  v7 = type metadata accessor for IsolatedTask(0, a2, a3, a4);
  return sub_25F29D0A0(v9, v7);
}

uint64_t IsolatedTask.onFulfillment<>(observer:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = IsolatedTask.observe<>(_:)(a1, a2, a3, &v7);
  if (v8)
  {
    v5 = a3[2];
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v6 = type metadata accessor for IsolatedTask(0, v5, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    sub_25F29D0A0(&v11, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_25F29CDA0(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(__int128 *__return_ptr))
{
  result = (a4)(&v9, a1, a2);
  if (v10)
  {
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v8 = type metadata accessor for IsolatedTask(0, v6, v7, MEMORY[0x277D84950]);
    sub_25F29D0A0(&v13, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29CE58(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v7 = a3[2];
  v6[2] = v7;
  v6[3] = a1;
  v6[4] = a2;

  sub_25F29C00C(sub_25F2A02B0, v6, a3, &v10);

  if (v11)
  {
    v9 = type metadata accessor for IsolatedTask(0, v7, a3[3], MEMORY[0x277D84950]);
    sub_25F29D0A0(&v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29CF70(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = type metadata accessor for PromiseFulfillment(0, a4, v7, MEMORY[0x277D84950]);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v9 + 16))(&v13 - v10, a1, v8);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  result = (*(v9 + 8))(v11, v8);
  if (a1 == 2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_25F29D0A0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = type metadata accessor for IsolatedTask.ObserverBox(255, v3, v4, v5);
  v7 = type metadata accessor for ObserverAndTokenStorage(255, v6, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v8 = type metadata accessor for PromiseFulfillment(255, v3, v4, v5);
  v9 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v7, v8, MEMORY[0x277D84F78] + 8);
  v11 = *(updated - 8);
  v12 = MEMORY[0x28223BE20](updated);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-v15];
  v17 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v17;
  v34 = *(a1 + 32);
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v33;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A02BC, v21, v9 + 8, v18);
  (*(v11 + 16))(v14, v16, updated);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v11 + 8))(v16, updated);
  }

  v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  v27 = 124;
  v28 = 2;
  v29 = xmmword_25F312840;
  v30 = "manage(token:)";
  v31 = 14;
  v32 = 2;
  sub_25F29FB04();
  v19 = *(v11 + 8);
  v19(v16, updated);
  return (v19)(v14, updated);
}

uint64_t sub_25F29D2E8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25F2F05C4(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_25F2F05C4((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[5 * v6];
  v8 = *a2;
  v9 = a2[1];
  v7[8] = *(a2 + 4);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  *(a1 + 16) = v4;
  return sub_25F2A02C8(a2, v11);
}

BOOL IsolatedTask.isFulfilled.getter(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = type metadata accessor for IsolatedTask.ObserverBox(255, v1, v2, v3);
  v5 = type metadata accessor for ObserverAndTokenStorage(255, v4, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v6 = type metadata accessor for PromiseFulfillment(255, v1, v2, v3);
  v8 = type metadata accessor for FulfillOnceState.State(0, v5, v6, v7);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  FulfillOnceState.snapshot.getter(v10, v13, v14, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v17 = swift_checkMetadataState();
    (*(*(v17 - 8) + 8))(v12, v17);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t IsolatedTask.result.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = type metadata accessor for PromiseFulfillment(0, v2, v3, v4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for IsolatedTask.ObserverBox(255, v2, v3, v4);
  v10 = type metadata accessor for ObserverAndTokenStorage(255, v9, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v12 = type metadata accessor for FulfillOnceState.State(0, v10, v5, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  FulfillOnceState.snapshot.getter(v14, v17, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v16, v5);
    v20 = v25;
    sub_25F227FB8(v5, v25);
    (*(v6 + 8))(v8, v5);
    v21 = 0;
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    v21 = 1;
    v20 = v25;
  }

  v22 = sub_25F30678C();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t IsolatedTask<>.value(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getObjectType();
  v7 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F29D82C, v7, v6);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getObjectType();
  v7 = sub_25F3053EC();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_25F29DF84, v7, v6);
}

uint64_t sub_25F29D82C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = *(v1 + 16);
  v5[2] = v6;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_25F29D934;
  v8 = v0[2];

  return MEMORY[0x2822007B8](v8, v3, v4, 0x6E6F2865756C6176, 0xEA0000000000293ALL, sub_25F29FC14, v5, v6);
}

uint64_t sub_25F29D934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F29DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 188, ObjectType, a3);
  v8 = sub_25F30542C();
  return CheckedContinuation.track(task:)(a4, v8);
}

uint64_t CheckedContinuation.track(task:)(uint64_t a1, void *a2)
{
  v3 = *(a2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = a2[2];
  v10 = a2[3];
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v11 = a2[4];
  *(v8 + 4) = v11;
  (*(v3 + 32))(&v8[v7], v5, a2);
  v12 = type metadata accessor for IsolatedTask(0, v9, v10, v11);
  sub_25F29C00C(sub_25F29FC20, v8, v12, &v15);

  if (v16)
  {
    v14 = v15;
    sub_25F29D0A0(&v15, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IsolatedTask<>.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84A98];
  v5 = MEMORY[0x277D84AC0];
  v6 = type metadata accessor for PromiseFulfillment(0, v3, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IsolatedTask.ObserverBox(255, v3, v4, v5);
  v11 = type metadata accessor for ObserverAndTokenStorage(255, v10, &type metadata for IsolatedTokenCallback, &protocol witness table for IsolatedTokenCallback);
  v13 = type metadata accessor for FulfillOnceState.State(0, v11, v6, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  FulfillOnceState.snapshot.getter(v15, v18, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v17, v6);
    sub_25F226D14(v6, a2);
    (*(v7 + 8))(v9, v6);
    v21 = 0;
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    v21 = 1;
  }

  return (*(*(v3 - 8) + 56))(a2, v21, 1, v3);
}

uint64_t sub_25F29DF84()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = *(v1 + 16);
  v5[2] = v6;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_25F29E08C;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, v3, v4, 0x6E6F2865756C6176, 0xEA0000000000293ALL, sub_25F29FCC0, v5, v6);
}

uint64_t sub_25F29E08C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_25F26B610, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_25F29E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 206, ObjectType, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30542C();
  return CheckedContinuation.track(task:)(a4, v8);
}

uint64_t sub_25F29E284(uint64_t a1)
{
  v3 = type metadata accessor for IsolatedTask(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  (*(*(v3 - 8) + 32))(v1 + 16, a1, v3);
  return v1;
}

uint64_t IsolatedTask.Promise.cancel<A>(file:line:column:function:onInvalidationOf:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a10;
  *(v18 + 24) = a11;
  *(v18 + 32) = v11;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  *(v18 + 80) = a6;
  *(v18 + 88) = a7;
  *(v18 + 96) = a8;

  IsolatedInvalidatable.onInvalidation(_:)(sub_25F29FCCC, v18, a10, a11);
}

void sub_25F29E424(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *a2;
  v11 = a2;
  v4 = a3[1];
  v9[0] = *a3;
  v9[1] = v4;
  v10[0] = a3[2];
  *(v10 + 9) = *(a3 + 41);
  sub_25F30543C();
  sub_25F1B4F70();
  v5 = swift_allocError();
  sub_25F304A2C();
  v8 = v5;
  v6 = type metadata accessor for IsolatedTask.Promise(0, *(v3 + 80), *(v3 + 88), MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  sub_25F226F8C(v9, &v8, v6, WitnessTable);
}

uint64_t IsolatedTask.Promise.deinit()
{
  v1 = type metadata accessor for IsolatedTask(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  return v0;
}

uint64_t IsolatedTask.Promise.__deallocating_deinit()
{
  IsolatedTask.Promise.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F29E5F0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = *v5;
  v11 = a1[1];
  v15[0] = *a1;
  v15[1] = v11;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v12 = type metadata accessor for IsolatedTask(0, v10[10], v10[11], v10[12]);
  sub_25F29B754(v15, a2, a3, a4, a5, v12);
  return v13 & 1;
}

uint64_t IsolatedTask.init<>(file:line:column:function:on:work:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  swift_unknownObjectRetain();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = MEMORY[0x277D84950];
  IsolatedTask.init(callsite:on:)(&v24, a11, a14, v15, MEMORY[0x277D84950], a9);
  type metadata accessor for IsolatedTask.Promise(0, a14, v15, v16);
  v17 = type metadata accessor for IsolatedTask(0, a14, v15, v16);
  (*(*(v17 - 1) + 16))(&v24, a9, v17);
  swift_allocObject();
  v18 = sub_25F29E284(&v24);
  ObjectType = swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = a10;
  v20[3] = a11;
  v20[4] = a12;
  v20[5] = a13;
  v20[6] = v18;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = ObjectType;
  v21[4] = a11;
  v21[5] = &unk_25F3128B0;
  v21[6] = v20;
  swift_unknownObjectRetain();

  v22 = Actor.makeIsolatedTask(_:)(&unk_25F3128C0, v21, ObjectType, a11);

  sub_25F29CE58(sub_25F29FE88, v22, v17);

  swift_unknownObjectRelease();
}

{
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  swift_unknownObjectRetain();
  v15 = MEMORY[0x277D84A98];
  v16 = MEMORY[0x277D84AC0];
  IsolatedTask.init(callsite:on:)(&v23, a11, a14, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], a9);
  type metadata accessor for IsolatedTask.Promise(0, a14, v15, v16);
  v17 = type metadata accessor for IsolatedTask(0, a14, v15, v16);
  (*(*(v17 - 8) + 16))(&v23, a9, v17);
  swift_allocObject();
  v18 = sub_25F29E284(&v23);
  ObjectType = swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = a10;
  v20[3] = a11;
  v20[4] = a12;
  v20[5] = a13;
  v20[6] = v18;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = ObjectType;
  v21[4] = a11;
  v21[5] = &unk_25F3128D0;
  v21[6] = v20;
  swift_unknownObjectRetain();

  Actor.makeIsolatedTask(_:)(&unk_25F3128E0, v21, ObjectType, a11);

  swift_unknownObjectRelease();
}

uint64_t sub_25F29E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[4] = a3;
  v7[9] = *a7;
  v8 = *(*a7 + 80);
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  swift_getObjectType();
  v10 = sub_25F3053EC();
  v7[13] = v10;
  v7[14] = v9;

  return MEMORY[0x2822009F8](sub_25F29EA44, v10, v9);
}

uint64_t sub_25F29EA44()
{
  v2 = v0[5];
  v1 = v0[6];
  ObjectType = swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 270, ObjectType, v2);
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_25F29EB88;
  v5 = v0[12];

  return v7(v5);
}

uint64_t sub_25F29EB88()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_25F29EDC8;
  }

  else
  {
    v5 = sub_25F29ECC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F29ECC4()
{
  v14 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v0[3] = v0[8];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v8 + 1) = 124;
  v9 = 2;
  v10 = xmmword_25F312850;
  v11 = "init(file:line:column:function:on:work:)";
  v12 = 40;
  v13 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill(callsite:returning:)(&v8, v1, v4, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F29EDC8()
{
  v12 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v0[2] = v0[8];
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v6 + 1) = 124;
  v7 = 2;
  v8 = xmmword_25F312860;
  v9 = "init(file:line:column:function:on:work:)";
  v10 = 40;
  v11 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill<>(callsite:throwing:)(&v6, v1, v2, WitnessTable);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F29EEB0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_25F1AFDB0;

  return v11(a1, a6);
}

uint64_t sub_25F29F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a3;
  v7[8] = *a7;
  v8 = *(*a7 + 80);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  swift_getObjectType();
  v10 = sub_25F3053EC();
  v7[12] = v10;
  v7[13] = v9;

  return MEMORY[0x2822009F8](sub_25F29F2C0, v10, v9);
}

uint64_t sub_25F29F2C0()
{
  v2 = v0[4];
  v1 = v0[5];
  ObjectType = swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/IsolatedTask.swift", 39, 2, 298, ObjectType, v2);
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_25F29F404;
  v5 = v0[11];

  return v7(v5);
}

uint64_t sub_25F29F404()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_25F29F524, v3, v2);
}

uint64_t sub_25F29F524()
{
  v14 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v0[2] = v0[7];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v8 + 1) = 124;
  v9 = 2;
  v10 = xmmword_25F312870;
  v11 = "init(file:line:column:function:on:work:)";
  v12 = 40;
  v13 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill(callsite:returning:)(&v8, v1, v4, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F29F628(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_25F1B51E0;

  return v11(a1, a6);
}

uint64_t sub_25F29F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25F30678C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for PromiseFulfillment(0, a3, a4, a5);
  sub_25F227FB8(v12, v11);
  v13 = sub_25F30542C();
  sub_25F29ADF8(v11, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t Continuation.track(task:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = swift_allocObject();
  v8 = a2[2];
  v9 = a2[3];
  v7[2] = v8;
  v7[3] = v9;
  v10 = a2[4];
  v7[4] = v10;
  v7[5] = v5;
  v7[6] = v4;
  v7[7] = v6;
  v11 = type metadata accessor for IsolatedTask(0, v8, v9, v10);

  sub_25F29C00C(sub_25F2A00A0, v7, v11, &v13);

  if (v14)
  {
    sub_25F29D0A0(&v13, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25F30678C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v17 = type metadata accessor for PromiseFulfillment(0, a5, a6, a7);
  sub_25F227FB8(v17, v16);
  *&v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v19 + 1) = 124;
  v20 = 2;
  *v21 = *v29;
  *&v21[3] = *&v29[3];
  v22 = xmmword_25F312880;
  v23 = "track(task:)";
  v24 = 12;
  v25 = 2;
  type metadata accessor for Continuation(0, a5, a6, a7);
  Continuation.resume(with:callsite:)(v16, &v19);
  return (*(v14 + 8))(v16, v13);
}

void sub_25F29FB04()
{
  v1 = *(v0[4] + 152);
  os_unfair_lock_lock(v1 + 19);
  sub_25F1D3F70(&v1[4], &v6);
  os_unfair_lock_unlock(v1 + 19);
  if ((v6 & 1) == 0)
  {
    v3 = v0[2];
    if (*v0)
    {
      v4 = v0[1];
      ObjectType = swift_getObjectType();
      v2 = Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/CancelationToken.swift", 43, 2, 57, ObjectType, v4);
    }

    v3(v2);
  }
}

uint64_t sub_25F29FC20(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_25F30542C() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_25F29F72C(a1, v7, v3, v4, v5);
}

uint64_t sub_25F29FCDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F1AFDB0;

  return sub_25F29E928(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25F29FDB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F29EEB0(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F29FEF4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F1B51E0;

  return sub_25F29F1A4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25F29FFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F29F628(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_25F2A00B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F2A00F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A018C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A01C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F2A0210(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F2A02C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD576C8, &qword_25F312A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2A03C0()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](qword_25F312BA8[v1]);
  return sub_25F30676C();
}

uint64_t sub_25F2A0448(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](qword_25F312BA8[v2]);
  return sub_25F30676C();
}

uint64_t sub_25F2A0494@<X0>(Swift::Int *a1@<X0>, PreviewsFoundationOS::CommandLinePrintingAttribute_optional *a2@<X8>)
{
  result = _s20PreviewsFoundationOS28CommandLinePrintingAttributeO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t AnyCommandLinePrinter.printInColumns<A, B, C>(headers:rows:attributes:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v125 = a6;
  v108 = a5;
  v122 = a3;
  v123 = a4;
  v112 = a2;
  v117 = a13;
  v133 = a10;
  v114 = *(a9 - 8);
  v127 = a11;
  MEMORY[0x28223BE20](a1);
  v113 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F305C1C();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v121 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v96 - v21;
  v115 = *(a8 - 8);
  MEMORY[0x28223BE20](v20);
  v111 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(a12 + 8);
  v124 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v107 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = (&v96 - v25);
  v26 = sub_25F305C1C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v96 - v31;
  v33 = *(a7 - 8);
  v34 = MEMORY[0x28223BE20](v30);
  v96 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - v36;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_25F1B6DBC(MEMORY[0x277D84F90]);
  v103 = v27;
  v39 = *(v27 + 16);
  v106 = a1;
  v100 = v27 + 16;
  v99 = v39;
  v39(v32, a1, v26);
  v40 = *(v33 + 48);
  v98 = v33 + 48;
  v97 = v40;
  v41 = v40(v32, 1, a7);
  v42 = v117;
  v132 = a12;
  v43 = v127;
  v128 = v38;
  v105 = v33;
  v104 = v26;
  if (v41 == 1)
  {
    v44 = a7;
    (*(v103 + 8))(v32, v26);
    v45 = v124;
  }

  else
  {
    (*(v33 + 32))(v37, v32, a7);
    v95 = v42;
    v45 = v124;
    sub_25F2A0FDC(v37, v38, v125, a7, v124, a9, a7, v133, v43, a12, v95, v43);
    v44 = a7;
    (*(v33 + 8))(v37, a7);
  }

  v129 = v44;
  v46 = *(v115 + 16);
  v115 += 16;
  v101 = v46;
  v46(v111, v112, v45);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v120;
  v131 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v49 = v48;
  v50 = v114 + 48;
  v130 = *(v114 + 48);
  v51 = v130(v48, 1, a9);
  v52 = v117;
  v53 = v127;
  v54 = v128;
  v55 = v113;
  if (v51 != 1)
  {
    v118 = *(v114 + 32);
    v56 = (v114 + 8);
    do
    {
      v118(v55, v49, a9);
      sub_25F2A0FDC(v55, v54, v125, v129, v45, a9, a9, v133, v53, v132, v52, v52);
      (*v56)(v55, a9);
      sub_25F305CDC();
      v49 = v120;
    }

    while (v130(v120, 1, a9) != 1);
  }

  v57 = *(v116 + 8);
  v116 += 8;
  v119 = v50;
  v120 = v57;
  (v57)(v126, AssociatedTypeWitness);
  v58 = v102;
  v59 = v104;
  v99(v102, v106, v104);
  v60 = v129;
  v61 = v97(v58, 1, v129);
  v62 = v132;
  if (v61 == 1)
  {
    (*(v103 + 8))(v58, v59);
    v63 = v45;
    v64 = v125;
  }

  else
  {
    v65 = v96;
    v66 = v58;
    v67 = v60;
    (*(v105 + 32))(v96, v66, v60);
    v68 = v127;
    *(&v92 + 1) = v62;
    *&v92 = v127;
    *(&v88 + 1) = v45;
    *&v88 = v67;
    v69 = v109;
    v70 = v108;
    v71 = v125;
    sub_25F2A1300(v65, 0, v122, v128, v109, v123, v108, v125, v88, a9, v67, v133, v92, v117, v127);
    v135 = sub_25F1C1AC4(sub_25F2A1774, 0, v67, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v68, MEMORY[0x277D84AC0], v72);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    v74 = sub_25F2A2264(&qword_27FD576D8, MEMORY[0x277D83988]);
    *(&v93 + 1) = v62;
    *&v93 = v68;
    v91 = v73;
    v63 = v124;
    *(&v89 + 1) = v124;
    *&v89 = v67;
    v75 = v69;
    v64 = v71;
    sub_25F2A1300(&v135, 0, v122, v128, v75, v123, v70, v71, v89, a9, v91, v133, v93, v117, v74);

    (*(v105 + 8))(v65, v67);
  }

  v76 = v107;
  v77 = v130;
  v101(v111, v112, v63);
  sub_25F3050DC();
  v78 = v121;
  sub_25F305CDC();
  v79 = v78;
  v80 = v77(v78, 1, a9);
  v81 = v117;
  v82 = v114;
  v83 = v76;
  v84 = v113;
  v85 = v109;
  v86 = v108;
  if (v80 != 1)
  {
    v126 = *(v114 + 32);
    do
    {
      v126(v84, v79, a9);
      *(&v94 + 1) = v132;
      *&v94 = v127;
      *(&v90 + 1) = v124;
      *&v90 = v129;
      sub_25F2A1300(v84, 1, v122, v128, v85, v123, v86, v64, v90, a9, a9, v133, v94, v81, v81);
      (*(v82 + 8))(v84, a9);
      sub_25F305CDC();
      v79 = v121;
    }

    while (v130(v121, 1, a9) != 1);
  }

  (v120)(v83, AssociatedTypeWitness);
}

uint64_t sub_25F2A0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 8);
  v15 = sub_25F3062EC();
  MEMORY[0x28223BE20](v15);
  v16 = sub_25F3062DC();
  v41 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x25F8D72E0](a7, v14);
  sub_25F3062BC();
  sub_25F3062CC();
  if (!v44)
  {
    return (*(v41 + 8))(v18, v16);
  }

  v19 = v43;
  while (1)
  {
    swift_beginAccess();
    v20 = *(a2 + 16);
    if (*(v20 + 16) && (v21 = sub_25F2192AC(v19), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v23 = 0;
    }

    swift_endAccess();
    v24 = sub_25F304F2C();

    if (v24 > v23)
    {
      v23 = v24;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(a2 + 16);
    v26 = v42;
    *(a2 + 16) = 0x8000000000000000;
    v27 = sub_25F2192AC(v19);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      sub_25F21CEBC(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_25F2192AC(v19);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_24;
      }

LABEL_16:
      v35 = v42;
      if (v33)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v27;
    sub_25F21F2C4();
    v27 = v38;
    v35 = v42;
    if (v33)
    {
LABEL_3:
      *(v35[7] + 8 * v27) = v23;
      goto LABEL_4;
    }

LABEL_17:
    v35[(v27 >> 6) + 8] |= 1 << v27;
    *(v35[6] + 8 * v27) = v19;
    *(v35[7] + 8 * v27) = v23;
    v36 = v35[2];
    v31 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v31)
    {
      goto LABEL_23;
    }

    v35[2] = v37;
LABEL_4:
    *(a2 + 16) = v35;
    swift_endAccess();
    sub_25F3062CC();
    v19 = v43;
    if (!v44)
    {
      return (*(v41 + 8))(v18, v16);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2A1300(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v39 = a7;
  v38 = a6;
  v37 = a5;
  v35 = a3;
  v36 = a2;
  v31 = a1;
  v34 = a13;
  v33 = a12;
  v30 = a9;
  v32 = a14;
  v17 = *(a15 + 8);
  v18 = sub_25F3062EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  MEMORY[0x25F8D72E0](a11, v17);
  v44 = a8;
  v45 = v30;
  v46 = a10;
  v47 = a11;
  v22 = v33;
  v48 = v33;
  v49 = v34;
  v50 = v32;
  v51 = a15;
  v52 = v35;
  v53 = a4 + 16;
  v54 = v37;
  v55 = v36;
  v41 = sub_25F2A22B4;
  v42 = &v43;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_25F1C1AC4(sub_25F2A2300, v40, v18, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);
  (*(v19 + 8))(v21, v18);
  v56 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F2A2264(qword_27FD52F88, MEMORY[0x277D83958]);
  v26 = sub_25F304CAC();
  v28 = v27;

  (*(v22 + 8))(v26, v28, MEMORY[0x277D84F90], a8, v22);
}

uint64_t sub_25F2A15E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = result;
  if (*(a4 + 16) <= result)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    if (result < 0)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v19 = *(a4 + 8 * result + 32);
  }

  swift_beginAccess();
  v20 = *a5;
  if (*(*a5 + 16) && (v21 = sub_25F2192AC(v18), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  swift_endAccess();
  result = sub_25F304F2C();
  if (__OFSUB__(v23, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((a7 & 1) == 0)
  {

    v19 = MEMORY[0x277D84F90];
  }

  v24 = (*(a13 + 32))(a2, a3, v19, a8, a13);

  v25 = sub_25F30507C();
  v27 = v26;

  MEMORY[0x25F8D7130](v25, v27);

  return v24;
}

uint64_t sub_25F2A1774@<X0>(uint64_t *a2@<X8>)
{
  sub_25F304F2C();
  result = sub_25F30507C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25F2A17BC()
{
  v0 = sub_25F3047DC();
  v1 = fileno(v0);
  result = isatty(v1);
  if (result != 1)
  {
    goto LABEL_8;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v4 = [v3 environment];

  v5 = sub_25F304A6C();
  if (!*(v5 + 16) || (v6 = sub_25F219234(0x53524F4C4F43534CLL, 0xE800000000000000), (v7 & 1) == 0))
  {

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v9 = *v8;
  v10 = v8[1];

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_9:
  byte_27FD576D0 = v12;
  return result;
}

uint64_t static CommandLinePrinter.allowsColor.getter()
{
  if (qword_27FD52948 != -1)
  {
    swift_once();
  }

  return byte_27FD576D0;
}

uint64_t sub_25F2A190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD52948 != -1)
  {
    v10 = a3;
    swift_once();
    a3 = v10;
  }

  if (byte_27FD576D0 == 1)
  {
    v5 = sub_25F2A1DC4(a3);
    MEMORY[0x25F8D7130](v5);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v6 = 993024795;
    v7 = 0x6D3B305B1BLL;
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v11 = v6;

  MEMORY[0x25F8D7130](a1, a2);

  MEMORY[0x25F8D7130](v7, v8);

  return v11;
}

Swift::String __swiftcall CommandLinePrinter.format(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27FD52948 != -1)
  {
    rawValue = a2._rawValue;
    swift_once();
    a2._rawValue = rawValue;
  }

  if (byte_27FD576D0 == 1)
  {
    v4 = sub_25F2A1DC4(a2._rawValue);
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v5 = 993024795;
    v6 = 0xE400000000000000;
    v7 = 0x6D3B305B1BLL;
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v8 = 0xE000000000000000;
    v6 = 0xE000000000000000;
  }

  v13 = v5;

  MEMORY[0x25F8D7130](countAndFlagsBits, object);

  MEMORY[0x25F8D7130](v7, v8);

  v9 = v13;
  v10 = v6;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t static CommandLinePrinter.printError(_:)()
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C440);
}

Swift::Void __swiftcall CommandLinePrinter.printError(_:)(Swift::String a1)
{
  MEMORY[0x25F8D7130](a1._countAndFlagsBits, a1._object);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C468);
}

void static CommandLinePrinter.printError(_:exitCode:)(uint64_t a1, uint64_t a2, int a3)
{
  MEMORY[0x25F8D7130](a1, a2);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C490);

  exit(a3);
}

Swift::Void __swiftcall CommandLinePrinter.printError(_:exitCode:)(Swift::String _, Swift::Int32 exitCode)
{
  MEMORY[0x25F8D7130](_._countAndFlagsBits, _._object);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C4B8);

  exit(exitCode);
}

uint64_t sub_25F2A1D0C()
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C4E0);
}

void sub_25F2A1D70(uint64_t a1, uint64_t a2, int a3)
{
  MEMORY[0x25F8D7130](a1, a2);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C418);

  exit(a3);
}

uint64_t sub_25F2A1DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v1, 0);
    v3 = v14;
    v4 = a1 + 32;
    do
    {
      ++v4;
      v5 = sub_25F3064DC();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_25F1BD008((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F2A2264(qword_27FD52F88, MEMORY[0x277D83958]);
  v12 = sub_25F304CAC();

  return v12;
}

uint64_t _s20PreviewsFoundationOS28CommandLinePrintingAttributeO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if (a1 <= 32)
  {
    if (a1 <= 30)
    {
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 == 30)
      {
        return 1;
      }

      return 9;
    }

    if (a1 == 31)
    {
      return 5;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 > 34)
    {
      switch(a1)
      {
        case '#':
          return 6;
        case '$':
          return 4;
        case '%':
          return 8;
      }

      return 9;
    }

    if (a1 == 33)
    {
      return 7;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54690, &qword_25F30B7B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25F3077D0;
  if (qword_27FD52948 != -1)
  {
    swift_once();
  }

  if (byte_27FD576D0 == 1)
  {
    v7 = sub_25F2A1DC4(a3);
    MEMORY[0x25F8D7130](v7);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v8 = 993024795;
    v9 = 0xE400000000000000;
    v10 = 0x6D3B305B1BLL;
    v11 = 0xE500000000000000;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0xE000000000000000;
    v9 = 0xE000000000000000;
  }

  v13 = v8;

  MEMORY[0x25F8D7130](a1, a2);

  MEMORY[0x25F8D7130](v10, v11);

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v13;
  *(v6 + 40) = v9;
  sub_25F3066EC();
}

unint64_t sub_25F2A21A0()
{
  result = qword_27FD576E0;
  if (!qword_27FD576E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD576E0);
  }

  return result;
}

uint64_t sub_25F2A2264(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F2A2300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25F2A2350(char a1)
{
  result = 1667329385;
  switch(a1)
  {
    case 1:
      result = 0x656E6F687069;
      break;
    case 2:
      result = 1684107369;
      break;
    case 3:
      result = 0x64756F6C6369;
      break;
    case 4:
      result = 1685024873;
      break;
    case 5:
      result = 0x6567617373656D69;
      break;
    case 6:
      result = 7565161;
      break;
    case 7:
      result = 0x73656E757469;
      break;
    case 8:
      result = 6578537;
      break;
    case 9:
      result = 0x6F746F687069;
      break;
    case 10:
      result = 0x6566696C69;
      break;
    case 11:
      result = 0x6569766F6D69;
      break;
    case 12:
      result = 0x736B6F6F6269;
      break;
    case 13:
      result = 0x6B726F7769;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_25F2A2478()
{
  result = sub_25F2A2498();
  off_27FD576E8 = result;
  return result;
}

uint64_t sub_25F2A2498()
{
  v12 = MEMORY[0x277D84F90];
  sub_25F1BD008(0, 14, 0);
  v0 = 0;
  while (2)
  {
    v1 = byte_28715C508[v0 + 32];
    switch(byte_28715C508[v0 + 32])
    {
      case 6u:

        goto LABEL_5;
      default:
        v2 = sub_25F30659C();

        if (v2)
        {
LABEL_5:
          v3 = 0xE200000000000000;
          v4 = 21327;
        }

        else
        {
          v5 = 0xE300000000000000;
          switch(v1)
          {
            case 0:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 1:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 2:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 3:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 4:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 5:
              v5 = 0xE800000000000000;
              goto LABEL_19;
            case 6:
            case 8:
              goto LABEL_19;
            case 7:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 9:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 10:
              v5 = 0xE500000000000000;
              goto LABEL_19;
            case 11:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 12:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 13:
              v5 = 0xE500000000000000;
LABEL_19:
              v6 = sub_25F304F3C();

              if (((v5 >> 40) & 0xF0000) >> 14 < v6 >> 14)
              {
                __break(1u);
LABEL_26:
                JUMPOUT(0);
              }

              sub_25F3050CC();

              sub_25F2A3D58();
              v4 = sub_25F305CFC();
              v3 = v7;

              break;
            default:
              goto LABEL_26;
          }
        }

        v9 = *(v12 + 16);
        v8 = *(v12 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_25F1BD008((v8 > 1), v9 + 1, 1);
        }

        ++v0;
        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v4;
        *(v10 + 40) = v3;
        if (v0 != 14)
        {
          continue;
        }

        return v12;
    }
  }
}

uint64_t sub_25F2A286C()
{
  result = sub_25F2A2890();
  qword_27FD576F0 = result;
  *algn_27FD576F8 = v1;
  return result;
}

uint64_t sub_25F2A2890()
{
  if (qword_27FD52950 != -1)
  {
    swift_once();
  }

  v0 = off_27FD576E8;
  v1 = *(off_27FD576E8 + 2);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v1, 0);
    v2 = objc_opt_self();
    v3 = v0 + 40;
    do
    {

      v4 = sub_25F304DDC();
      v5 = [v2 escapedPatternForString_];

      v6 = sub_25F304E0C();
      v8 = v7;

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_25F1BD008((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v12 = sub_25F304CAC();

  return v12;
}

uint64_t sub_25F2A2A48()
{
  result = sub_25F2A2A6C();
  qword_27FD57700 = result;
  *algn_27FD57708 = v1;
  return result;
}

uint64_t sub_25F2A2A6C()
{
  v20 = MEMORY[0x277D84F90];
  sub_25F1BD008(0, 2, 0);
  v0 = v20;
  v1 = objc_opt_self();
  v2 = sub_25F304DDC();
  v3 = [v1 escapedPatternForString_];

  v4 = sub_25F304E0C();
  v6 = v5;

  v8 = *(v20 + 16);
  v7 = *(v20 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_25F1BD008((v7 > 1), v8 + 1, 1);
    v0 = v20;
  }

  *(v0 + 16) = v8 + 1;
  v9 = v0 + 16 * v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  v10 = sub_25F304DDC();
  v11 = [v1 escapedPatternForString_];

  v12 = sub_25F304E0C();
  v14 = v13;

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_25F1BD008((v15 > 1), v16 + 1, 1);
    v0 = v20;
  }

  *(v0 + 16) = v16 + 1;
  v17 = v0 + 16 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v18 = sub_25F304CAC();

  return v18;
}

id sub_25F2A2C38()
{
  if (qword_27FD52958 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD576F0;
  v1 = *algn_27FD576F8;
  MEMORY[0x25F8D7130](qword_27FD576F0, *algn_27FD576F8);
  MEMORY[0x25F8D7130](41, 0xE100000000000000);
  MEMORY[0x25F8D7130](v0, v1);
  MEMORY[0x25F8D7130](41, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F31AA80);
  MEMORY[0x25F8D7130](975257384, 0xE400000000000000);

  MEMORY[0x25F8D7130](0x213F283A3F282B29, 0xE800000000000000);
  if (qword_27FD52960 != -1)
  {
    swift_once();
  }

  v2 = qword_27FD57700;
  v3 = *algn_27FD57708;
  MEMORY[0x25F8D7130](qword_27FD57700, *algn_27FD57708);
  MEMORY[0x25F8D7130](0x3A3F28497CLL, 0xE500000000000000);
  MEMORY[0x25F8D7130](v0, v1);
  MEMORY[0x25F8D7130](0xD000000000000013, 0x800000025F31AAB0);
  MEMORY[0x25F8D7130](v2, v3);
  MEMORY[0x25F8D7130](0x693A3F283A3F287CLL, 0xEC0000002829497CLL);
  MEMORY[0x25F8D7130](3817256, 0xE300000000000000);

  MEMORY[0x25F8D7130](0x5D7A2D615B7C2929, 0xE800000000000000);
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0, 0xE000000000000000, 0);
  qword_27FD57710 = result;
  return result;
}

id sub_25F2A2EE0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0x292B2E282A5FLL, 0xE600000000000000, 0);
  qword_27FD57718 = result;
  return result;
}

Swift::String __swiftcall String.englishName(strippingClassPrefix:)(Swift::Bool strippingClassPrefix)
{
  v3 = v2;
  v4 = v1;
  v95 = strippingClassPrefix;
  v5 = sub_25F30427C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  v102 = v4;
  v103 = v3;
  sub_25F30422C();
  sub_25F1BF118();
  v9 = sub_25F305D1C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v57 = v93;
    goto LABEL_83;
  }

  if (qword_27FD52968 != -1)
  {
LABEL_49:
    swift_once();
  }

  v13 = qword_27FD57710;
  v14 = sub_25F304DDC();

  v15 = MEMORY[0x25F8D71F0](v9, v11);

  v16 = [v13 matchesInString:v14 options:0 range:{0, v15}];

  sub_25F2A3CC0();
  v17 = sub_25F30525C();

  v101 = sub_25F304DDC();

  if (!(v17 >> 62))
  {
    v100 = v17 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v3;
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_51:
    v94 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v100 = v17 & 0xFFFFFFFFFFFFFF8;
  v18 = sub_25F30631C();
  v92 = v3;
  if (!v18)
  {
    goto LABEL_51;
  }

LABEL_7:
  v3 = 0;
  v99 = v17 & 0xC000000000000001;
  v94 = MEMORY[0x277D84F90];
  v97 = v18;
  v98 = v17;
  while (2)
  {
    v19 = v3;
    while (1)
    {
      if (v99)
      {
        v20 = MEMORY[0x25F8D81E0](v19, v17);
      }

      else
      {
        if (v19 >= *(v100 + 16))
        {
          goto LABEL_48;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v3 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v19)
      {
        v22 = 0;
        v11 = 0;
      }

      else
      {
        v23 = [v20 range];
        v22 = 0;
        v11 = 0;
        if (v23 && !v95)
        {
          v24 = [v101 substringToIndex_];
          v22 = sub_25F304E0C();
          v11 = v25;
        }
      }

      v96 = v22;
      v26 = [v21 range];
      v28 = [v101 substringWithRange_];
      v9 = v28;
      v29 = v28;
      if (!v28)
      {
        sub_25F304E0C();
        v29 = sub_25F304DDC();

        sub_25F304E0C();
        v9 = sub_25F304DDC();
      }

      sub_25F304E0C();
      v31 = v30;
      v32 = qword_27FD52970;
      v33 = v28;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = qword_27FD57718;
      v35 = (v31 & 0x1000000000000000) != 0 ? sub_25F30501C() : sub_25F30502C();
      v36 = v35;
      v37 = v34;

      v38 = [v37 firstMatchInString:v29 options:0 range:{0, v36}];

      if (v38)
      {
        break;
      }

      ++v19;
      v17 = v98;
      if (v3 == v97)
      {
        goto LABEL_52;
      }
    }

    v39 = [v38 rangeAtIndex_];
    v41 = v40;
    v42 = [v9 substringWithRange_];

    v43 = sub_25F304E0C();
    v45 = v44;

    if (!v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_25F2EFB20(0, *(v94 + 2) + 1, 1, v94);
      }

      v17 = v98;
LABEL_37:
      v48 = v97;
      v50 = *(v94 + 2);
      v49 = *(v94 + 3);
      v11 = v50 + 1;
      if (v50 < v49 >> 1)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }

    if (v39 == [v38 range] && v41 == v46)
    {
      v102 = v96;
      v103 = v11;
      MEMORY[0x25F8D7130](v43, v45);

      v43 = v102;
      v45 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v94 = sub_25F2EFB20(0, *(v94 + 2) + 1, 1, v94);
      }

      goto LABEL_37;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v17 = v98;
    if ((v53 & 1) == 0)
    {
      v94 = sub_25F2EFB20(0, *(v94 + 2) + 1, 1, v94);
    }

    v48 = v97;
    v9 = *(v94 + 2);
    v49 = *(v94 + 3);
    v54 = v49 >> 1;
    v50 = v9 + 1;
    if (v49 >> 1 <= v9)
    {
      v94 = sub_25F2EFB20((v49 > 1), v9 + 1, 1, v94);
      v49 = *(v94 + 3);
      v54 = v49 >> 1;
    }

    v55 = v94;
    *(v94 + 2) = v50;
    v56 = &v55[16 * v9];
    *(v56 + 4) = v96;
    *(v56 + 5) = v11;
    v11 = v9 + 2;
    if (v54 < (v9 + 2))
    {
LABEL_45:
      v94 = sub_25F2EFB20((v49 > 1), v11, 1, v94);
    }

LABEL_38:

    v51 = v94;
    *(v94 + 2) = v11;
    v52 = &v51[16 * v50];
    *(v52 + 4) = v43;
    *(v52 + 5) = v45;
    if (v3 != v48)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v58 = v94;
  if (!*(v94 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_25F3077D0;
    *(v64 + 32) = v93;
    *(v64 + 40) = v92;

    v58 = v64;
    while (1)
    {
      v65 = *(v58 + 2);
      v66 = MEMORY[0x277D84F90];
      if (!v65)
      {
        break;
      }

      v106 = MEMORY[0x277D84F90];
      sub_25F1BD008(0, v65, 0);
      v66 = v106;
      v94 = v58;
      v67 = (v58 + 40);
      v58 = 0xE100000000000000;
      while (2)
      {
        v69 = *(v67 - 1);
        v68 = *v67;
        v70 = sub_25F304BFC();
        v72 = v71;

        v73 = sub_25F2A3D0C(v70, v72);
        switch(v73)
        {
          case 6:

            goto LABEL_62;
          case 14:
            goto LABEL_79;
          default:
            v74 = sub_25F30659C();

            if (v74)
            {
LABEL_62:
              v75 = 0xE200000000000000;
              v76 = 21327;
              goto LABEL_78;
            }

            object = 0xE300000000000000;
            switch(v73)
            {
              case 1:
                object = 0xE600000000000000;
                break;
              case 2:
                object = 0xE400000000000000;
                break;
              case 3:
                object = 0xE600000000000000;
                break;
              case 4:
                object = 0xE400000000000000;
                break;
              case 5:
                object = 0xE800000000000000;
                break;
              case 6:
              case 8:
                break;
              case 7:
                object = 0xE600000000000000;
                break;
              case 9:
                object = 0xE600000000000000;
                break;
              case 10:
                object = 0xE500000000000000;
                break;
              case 11:
                object = 0xE600000000000000;
                break;
              case 12:
                object = 0xE600000000000000;
                break;
              case 13:
                object = 0xE500000000000000;
                break;
              default:
                object = 0xE400000000000000;
                break;
            }

            countAndFlagsBits = sub_25F304F3C();

            if (((object >> 40) & 0xF0000) >> 14 >= countAndFlagsBits >> 14)
            {
              v77 = sub_25F3050CC();
              v79 = v78;
              v81 = v80;
              v83 = v82;

              v102 = v77;
              v103 = v79;
              v104 = v81;
              v105 = v83;
              sub_25F2A3D58();
              v84 = sub_25F305CFC();
              v75 = v85;

              v76 = v84;
LABEL_78:
              v102 = 105;
              v103 = 0xE100000000000000;
              MEMORY[0x25F8D7130](v76, v75);

              v69 = v102;
              v68 = v103;
LABEL_79:
              v106 = v66;
              v87 = *(v66 + 16);
              v86 = *(v66 + 24);
              if (v87 >= v86 >> 1)
              {
                sub_25F1BD008((v86 > 1), v87 + 1, 1);
                v66 = v106;
              }

              *(v66 + 16) = v87 + 1;
              v88 = v66 + 16 * v87;
              *(v88 + 32) = v69;
              *(v88 + 40) = v68;
              v67 += 2;
              if (!--v65)
              {
                goto LABEL_82;
              }

              continue;
            }

            __break(1u);
LABEL_85:
            v62 = sub_25F1E1114(v58);
            v58 = v62;
            if (!*(v62 + 16))
            {
              goto LABEL_86;
            }

LABEL_55:
            *(v58 + 4) = countAndFlagsBits;
            *(v58 + 5) = object;

            break;
        }

        break;
      }
    }

LABEL_82:
    v102 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1C3498();
    v57 = sub_25F304CAC();
    v3 = v89;

LABEL_83:
    v62 = v57;
    v63 = v3;
    goto LABEL_87;
  }

  v59 = String.uppercasingFirstLetter()();
  countAndFlagsBits = v59._countAndFlagsBits;
  object = v59._object;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  if ((v62 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (*(v58 + 2))
  {
    goto LABEL_55;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  result._object = v63;
  result._countAndFlagsBits = v62;
  return result;
}

uint64_t String.firstEnglishNameLetter.getter()
{
  v0 = sub_25F30427C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String.englishName(strippingClassPrefix:)(1);
  sub_25F30424C();
  sub_25F1BF118();
  sub_25F305D0C();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5)
  {

    return 0;
  }

  else
  {
    sub_25F3050CC();

    sub_25F305C6C();

    v7 = sub_25F30509C();

    return v7;
  }
}

unint64_t sub_25F2A3CC0()
{
  result = qword_27FD57720;
  if (!qword_27FD57720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD57720);
  }

  return result;
}

unint64_t sub_25F2A3D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3063BC();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F2A3D58()
{
  result = qword_27FD57728[0];
  if (!qword_27FD57728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57728);
  }

  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v6 = sub_25F305C1C();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(AssociatedTypeWitness - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = *(a1 - 8);
  v3[14] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2A3FE0, 0, 0);
}

uint64_t sub_25F2A3FE0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[5];
  v4 = v0[3];
  v0[2] = sub_25F3052DC();
  (*(v2 + 16))(v1, v3, v4);
  sub_25F3055EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_25F2A4100;
  v7 = v0[15];
  v8 = v0[9];

  return MEMORY[0x282200308](v8, v7, AssociatedConformanceWitness);
}

uint64_t sub_25F2A4100()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_25F2A444C;
  }

  else
  {
    v2 = sub_25F2A421C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2A421C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[7];
    v5 = v0[8];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v5 + 8))(v1, v4);
    v6 = v0[2];

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    (*(v2 + 32))(v9, v1, v3);
    (*(v2 + 16))(v10, v9, v3);
    sub_25F30539C();
    sub_25F30533C();
    (*(v2 + 8))(v9, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_25F2A4100;
    v13 = v0[15];
    v14 = v0[9];

    return MEMORY[0x282200308](v14, v13, AssociatedConformanceWitness);
  }
}

uint64_t sub_25F2A444C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t OrderedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F3052DC();
  v12 = sub_25F304A3C();
  v23 = v11;
  v24 = v12;
  if (sub_25F30531C())
  {
    v20 = v9;
    v21 = a4;
    v13 = 0;
    while (1)
    {
      v14 = sub_25F3052FC();
      sub_25F30528C();
      if (v14)
      {
        (*(v8 + 16))(v10, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, a2);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*(v8 + 16))(v10, &v22, a2);
        swift_unknownObjectRelease();
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v11 = v23;
          v12 = v24;
          a4 = v21;
          goto LABEL_13;
        }
      }

      v17 = type metadata accessor for OrderedSet(0, a2, a3, v15);
      OrderedSet.append(_:)(v10, v17);
      (*(v8 + 8))(v10, a2);
      ++v13;
      if (v16 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a4 = v11;
  a4[1] = v12;
  return result;
}

uint64_t OrderedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v26 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F305C1C();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v22 - v17;
  (*(v13 + 16))(v15, v26, a3);
  sub_25F3050DC();
  swift_getAssociatedConformanceWitness();
  v25 = v18;
  v26 = AssociatedTypeWitness;
  sub_25F305CDC();
  v19 = *(v6 + 48);
  if (v19(v12, 1, v5) != 1)
  {
    v20 = *(v6 + 32);
    do
    {
      v20(v8, v12, v5);
      OrderedSet.append(_:)(v8, v24);
      (*(v6 + 8))(v8, v5);
      sub_25F305CDC();
    }

    while (v19(v12, 1, v5) != 1);
  }

  return (*(v23 + 8))(v25, v26);
}

BOOL OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_25F3056BC();
  if ((v10 & 1) == 0)
  {
    v11 = a1;
    v15 = a1;
    v12 = *(v4 + 16);
    v12(v7, v11, v3);
    sub_25F3056FC();
    sub_25F30568C();
    (*(v4 + 8))(v9, v3);
    v12(v9, v15, v3);
    sub_25F30539C();
    sub_25F30533C();
  }

  return (v10 & 1) == 0;
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a3@<X8>)
{
  *a3 = sub_25F3052DC();
  result = sub_25F304A3C();
  a3[1] = result;
  return result;
}

Swift::Void __swiftcall OrderedSet.reserveCapacity(_:)(Swift::Int a1)
{
  sub_25F30539C();
  sub_25F30529C();
  sub_25F3056FC();
  sub_25F30564C();
}

double OrderedSet.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a6@<X8>)
{
  v37 = a4;
  v33 = a6;
  v34 = a1;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F305C1C();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v28 - v18;
  v20 = sub_25F3052DC();
  v21 = sub_25F304A3C();
  *&v38 = v20;
  *(&v38 + 1) = v21;
  v31 = v14;
  (*(v14 + 16))(v16, v34, a3);
  sub_25F3050DC();
  v32 = a3;
  swift_getAssociatedConformanceWitness();
  v35 = v19;
  v36 = AssociatedTypeWitness;
  sub_25F305CDC();
  v22 = v29;
  v23 = *(v29 + 48);
  if (v23(v13, 1, a2) != 1)
  {
    v24 = *(v22 + 32);
    do
    {
      v24(v9, v13, a2);
      v26 = type metadata accessor for OrderedSet(0, a2, v37, v25);
      OrderedSet.append(_:)(v9, v26);
      (*(v22 + 8))(v9, a2);
      sub_25F305CDC();
    }

    while (v23(v13, 1, a2) != 1);
  }

  (*(v31 + 8))(v34, v32);
  (*(v30 + 8))(v35, v36);
  result = *&v38;
  *v33 = v38;
  return result;
}

uint64_t OrderedSet.isEmpty.getter(uint64_t a1)
{
  sub_25F30539C();
  swift_getWitnessTable();
  return sub_25F30588C() & 1;
}

uint64_t OrderedSet.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (sub_25F30531C() < 1)
  {
    v4 = 1;
  }

  else
  {
    sub_25F3053DC();
    v4 = 0;
  }

  v5 = *(*(v3 - 8) + 56);

  return v5(a2, v4, 1, v3);
}

uint64_t OrderedSet.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (sub_25F30531C() < 1)
  {
    v7 = 1;
  }

  else
  {
    v4 = sub_25F30531C();
    v5 = __OFSUB__(v4, 1);
    result = v4 - 1;
    if (v5)
    {
      __break(1u);
      return result;
    }

    sub_25F3053DC();
    v7 = 0;
  }

  v8 = *(*(v3 - 8) + 56);

  return v8(a2, v7, 1, v3);
}

uint64_t OrderedSet.indexOf(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F3058CC();
  return v3;
}

BOOL OrderedSet.appending(_:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  *a3 = v6;
  a3[1] = v7;

  return OrderedSet.append(_:)(a1, a2);
}

uint64_t static OrderedSet.+ infix(_:_:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v10[0] = *a2;
  v10[1] = v6;
  v7 = type metadata accessor for OrderedSet(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.appending<A>(contentsOf:)(v10, v7, v7, WitnessTable, a5);
}

uint64_t OrderedSet.removeLast()()
{
  v2 = sub_25F305C1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30597C();
  sub_25F3056FC();
  sub_25F30569C();
  return (*(v3 + 8))(v5, v2);
}

void *OrderedSet.insert(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  if ((sub_25F3056BC() & 1) == 0)
  {
    v15[0] = a2;
    v14 = *(v7 + 16);
    v14(v10, a1, v6);
    sub_25F3056FC();
    sub_25F30568C();
    (*(v7 + 8))(v12, v6);
    v14(v12, a1, v6);
    sub_25F30539C();
    return sub_25F30534C();
  }

  v15[1] = *v3;
  sub_25F30539C();
  swift_getWitnessTable();
  result = sub_25F3058CC();
  if (v16)
  {
    __break(1u);
    return result;
  }

  if (v15[2] != a2)
  {
    sub_25F30535C();
    (*(v7 + 8))(v12, v6);
    (*(v7 + 16))(v12, a1, v6);
    return sub_25F30534C();
  }

  return result;
}

uint64_t OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_25F305C1C();
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(*(v8 - 8) + 56);
  v22 = a3;
  v12(a3, 1, 1, v8);
  v13 = v4[1];
  v23 = *v4;
  v24 = v13;

  OrderedSet.indexOf(_:)(a1, a2);
  LOBYTE(a1) = v14;

  if ((a1 & 1) == 0)
  {
    OrderedSet.remove(at:)();
    v17 = v20;
    v16 = v21;
    v18 = v22;
    (*(v20 + 8))(v22, v21);
    v12(v11, 0, 1, v8);
    return (*(v17 + 32))(v18, v11, v16);
  }

  return result;
}

uint64_t OrderedSet.remove(at:)()
{
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_25F30539C();
  sub_25F30535C();
  sub_25F3056FC();
  sub_25F30569C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t OrderedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v40 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_25F305C1C();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v39 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v38 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v31 - v20;
  v37 = a2;
  sub_25F3056FC();
  sub_25F3056CC();
  (*(v39 + 16))(v38, a1, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v21;
  v39 = AssociatedTypeWitness;
  v36 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v23 = v40;
  v35 = *(v40 + 48);
  if (v35(v17, 1, v9) != 1)
  {
    v34 = *(v23 + 32);
    v40 = v23 + 32;
    v25 = (v23 + 8);
    v34(v13, v17, v9);
    while (1)
    {
      v28 = v5[1];
      v41 = *v5;
      v42 = v28;

      OrderedSet.indexOf(_:)(v13, v37);
      v30 = v29;

      if (v30)
      {
        (*v25)(v13, v9);
      }

      else
      {
        sub_25F30539C();
        v26 = v33;
        sub_25F30535C();
        v27 = *v25;
        (*v25)(v26, v9);
        v27(v13, v9);
      }

      sub_25F305CDC();
      if (v35(v17, 1, v9) == 1)
      {
        break;
      }

      v34(v13, v17, v9);
    }
  }

  return (*(v32 + 8))(v38, v39);
}

uint64_t OrderedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F3056FC();
  sub_25F30565C();
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F30599C();
}

uint64_t sub_25F2A5FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v12 = *v6;
  v13 = v6[1];
  *a6 = v12;
  a6[1] = v13;

  return a5(a1, a2, a3, a4);
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_25F30539C();
  sub_25F30538C();
  sub_25F3056FC();
  sub_25F3056EC();
}

uint64_t OrderedSet.makeIterator()(uint64_t a1)
{
  sub_25F30539C();

  swift_getWitnessTable();
  sub_25F3061EC();
  swift_getWitnessTable();
  return sub_25F305EEC();
}

uint64_t sub_25F2A6168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = OrderedSet.makeIterator()(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25F2A61AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2A6200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_25F2A626C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2A62F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedSet.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F2A631C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2A63A4(v6, *a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F2A63A4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_25F3053DC();
  return sub_25F1DC510;
}

uint64_t sub_25F2A6478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2A64EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2A6574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

BOOL sub_25F2A6604(uint64_t a1)
{

  v1 = sub_25F3056BC();

  return (v1 & 1) == 0;
}

uint64_t sub_25F2A67AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_25F2A67F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v48 = MEMORY[0x277D84F90];
  sub_25F1BD1E8(0, v2, 0);
  v3 = a1;
  v41 = a1;
  v42 = a1 + 64;
  v4 = -1;
  v5 = -1 << *(a1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a1 + 64);
  v7 = (63 - v5) >> 6;
  v43 = v2;
  if (!v2)
  {

    v9 = 0;
    goto LABEL_29;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    if (v6)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }

      if (v10 >= v7)
      {
        goto LABEL_54;
      }

      v6 = *(v42 + 8 * v10);
      ++v9;
    }

    while (!v6);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = v12[1];
    v45 = *v12;
    v14 = *(v3 + 56) + 24 * v11;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);

    sub_25F1B708C(v15, v16, v17);
    if (!v13)
    {
      goto LABEL_54;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
        v19 = sub_25F305B4C();
        v3 = v41;
      }

      else if (v17 == 4)
      {
        v19 = sub_25F30452C();
      }

      else
      {
        v19 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      goto LABEL_23;
    }

    if (!v17)
    {
      v19 = sub_25F304DDC();
LABEL_23:
      v44 = v19;
      goto LABEL_24;
    }

    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (v17 == 1)
    {
      v18 = sub_25F305B5C();
    }

    else
    {
      v18 = sub_25F305B6C();
    }

    v44 = v18;
    v3 = v41;
LABEL_24:
    sub_25F1D4C04(v15, v16, v17);
    v21 = *(v48 + 16);
    v20 = *(v48 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_25F1BD1E8((v20 > 1), v21 + 1, 1);
      v3 = v41;
    }

    ++v8;
    v6 &= v6 - 1;
    *(v48 + 16) = v21 + 1;
    v22 = (v48 + 24 * v21);
    v22[4] = v45;
    v22[5] = v13;
    v22[6] = v44;
  }

  while (v8 != v43);
LABEL_29:
  v47 = v48;
  v23 = v42;
  if (v6)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v24 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_53;
    }

    if (v24 < v7)
    {
      v6 = *(v23 + 8 * v24);
      ++v9;
      if (!v6)
      {
        continue;
      }

      v9 = v24;
LABEL_34:
      v25 = __clz(__rbit64(v6)) | (v9 << 6);
      v26 = (*(v3 + 48) + 16 * v25);
      v27 = v26[1];
      v28 = *(v3 + 56) + 24 * v25;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v46 = *v26;
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
          v32 = v27;

          v34 = sub_25F305B4C();
          v3 = v41;
        }

        else if (v31 == 4)
        {
          v32 = v26[1];

          sub_25F1B708C(v29, v30, 4);
          v34 = sub_25F30452C();
        }

        else
        {
          v36 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          v32 = v27;

          v34 = [v36 init];
        }
      }

      else
      {
        if (*(v28 + 16))
        {
          sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
          v32 = v27;

          if (v31 == 1)
          {
            v33 = sub_25F305B5C();
          }

          else
          {
            v33 = sub_25F305B6C();
          }

          v35 = v33;
          v3 = v41;
LABEL_47:
          sub_25F1D4C04(v29, v30, v31);
          v37 = v47;
          v39 = *(v47 + 16);
          v38 = *(v47 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_25F1BD1E8((v38 > 1), v39 + 1, 1);
            v3 = v41;
            v37 = v47;
          }

          v6 &= v6 - 1;
          *(v37 + 16) = v39 + 1;
          v47 = v37;
          v40 = (v37 + 24 * v39);
          v40[4] = v46;
          v40[5] = v32;
          v40[6] = v35;
          v23 = v42;
          if (!v6)
          {
            continue;
          }

          goto LABEL_34;
        }

        v32 = v26[1];

        sub_25F1B708C(v29, v30, 0);
        v34 = sub_25F304DDC();
      }

      v35 = v34;
      goto LABEL_47;
    }

    break;
  }
}

uint64_t CoreAnalyticsLogger.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54E60, &unk_25F30D660);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

Swift::Void __swiftcall CoreAnalyticsLogger.logEvent(identifierSuffix:fields:)(Swift::String identifierSuffix, Swift::OpaquePointer fields)
{
  v3 = v2;
  object = identifierSuffix._object;
  countAndFlagsBits = identifierSuffix._countAndFlagsBits;
  if (qword_27FD52980 != -1)
  {
    swift_once();
  }

  if (byte_27FD577D9 == 2)
  {
    v8 = qword_27FD577C0;
    v7 = *algn_27FD577C8;
    v9 = qword_27FD577D0;
    v10 = qword_27FD577E0;
    swift_bridgeObjectRetain_n();
    v11 = v9;

    v12 = v11;
    v13 = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(v8, v7, v12);
    if (v13 == 2)
    {
      v10(&rawValue);

      if ((rawValue & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }

  else if ((byte_27FD577D9 & 1) == 0)
  {
    return;
  }

  v15 = swift_allocObject();
  v15[2]._rawValue = fields._rawValue;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC38]);

  v17 = [v16 init];
  v18 = [v17 processName];

  v19 = sub_25F304E0C();
  v21 = v20;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = fields._rawValue;
  v15[2]._rawValue = 0x8000000000000000;
  sub_25F2105D0(v19, v21, 0, 0xD000000000000012, 0x800000025F31AAD0, isUniquelyReferenced_nonNull_native);
  v23 = rawValue;
  v15[2]._rawValue = rawValue;
  if (qword_27FD52978 != -1)
  {
    swift_once();
  }

  v25 = qword_27FD577B0;
  v24 = *algn_27FD577B8;

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if (v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  rawValue = v23;
  if (v24)
  {
    v28 = 0;
  }

  else
  {
    v28 = 5;
  }

  sub_25F2105D0(v27, v24, v28, 0x72655665646F6378, 0xEC0000006E6F6973, v26);
  v29 = rawValue;
  v15[2]._rawValue = rawValue;
  v30 = *(v3 + 16);
  os_unfair_lock_lock((v30 + 20));
  v31 = *(v30 + 16);
  os_unfair_lock_unlock((v30 + 20));
  if (v31 != 2)
  {
    if (*(v29 + 16) && (v32 = sub_25F219234(0xD000000000000015, 0x800000025F31AB30), (v33 & 1) != 0) && (v34 = *(v29 + 56) + 24 * v32, *(v34 + 16) == 1) && (*v34 & 1) != 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = v31 & 1;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v29;
    v15[2]._rawValue = 0x8000000000000000;
    sub_25F2105D0(v35, 0, 1, 0xD000000000000015, 0x800000025F31AB30, v36);
    v15[2]._rawValue = rawValue;
  }

  rawValue = 0;
  v40 = 0xE000000000000000;
  sub_25F305FAC();

  rawValue = 0xD000000000000011;
  v40 = 0x800000025F31AAF0;
  MEMORY[0x25F8D7130](countAndFlagsBits, object);
  v37 = sub_25F304DDC();

  v43 = sub_25F2A7AA0;
  v44 = v15;
  rawValue = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_25F2A7880;
  v42 = &block_descriptor_10;
  v38 = _Block_copy(&rawValue);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

void CoreAnalyticsLogger.hints.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 20));
}

void CoreAnalyticsLogger.hints.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

void (*CoreAnalyticsLogger.hints.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 20));
  *(a1 + 8) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  return sub_25F2A72C0;
}

void sub_25F2A72C0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 5);
  *(v1 + 16) = v2;

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t CoreAnalyticsLogger.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54E60, &unk_25F30D660);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

Swift::Int sub_25F2A734C()
{
  result = sub_25F2A7370();
  qword_27FD577B0 = result;
  *algn_27FD577B8 = v1;
  return result;
}

Swift::Int sub_25F2A7370()
{
  v0 = sub_25F3044DC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v28[-v5];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = [v8 bundleURL];
  sub_25F30449C();

  sub_25F30447C();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v11 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v12 = sub_25F30446C();
  v13 = [v11 initWithContentsOfURL_];

  if (v13)
  {
    *&v31 = 0xD000000000000013;
    *(&v31 + 1) = 0x800000025F31ABB0;
    v14 = [v13 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_25F305DDC();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0;
    }

    *&v29.majorRelease = v31;
    v29.rawMinorRelease = v32;
    if (v32._object)
    {
      if (swift_dynamicCast())
      {
        BuildNumber.init(_:)(&v29, v30);
        if (!v15)
        {
          *&v31 = v29.majorRelease;
          v29.majorRelease = sub_25F3064DC();
          v29.majorBuild = v25;
          v26 = sub_25F304C0C();
          MEMORY[0x25F8D7130](v26);

          majorRelease = v29.majorRelease;
          v10(v6, v0);

          return majorRelease;
        }
      }
    }

    else
    {

      sub_25F1E1E04(&v29);
    }
  }

  v16 = [v7 mainBundle];
  v17 = [v16 infoDictionary];

  if (!v17)
  {
    v10(v6, v0);

    return 0;
  }

  v18 = sub_25F304A6C();

  result = *MEMORY[0x277CBED58];
  if (!*MEMORY[0x277CBED58])
  {
    __break(1u);
    return result;
  }

  v20 = sub_25F304E0C();
  if (!*(v18 + 16))
  {

    goto LABEL_21;
  }

  v22 = sub_25F219234(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_21:

    v10(v6, v0);
    return 0;
  }

  sub_25F1B7118(*(v18 + 56) + 32 * v22, &v29);

  v10(v6, v0);

  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}