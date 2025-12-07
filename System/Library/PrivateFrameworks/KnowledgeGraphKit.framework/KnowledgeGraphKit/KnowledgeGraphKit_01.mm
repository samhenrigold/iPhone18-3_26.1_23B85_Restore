uint64_t sub_2558877C0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255888484;

  return sub_2558866DC(a1, v4);
}

uint64_t sub_2558878A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255886C70(a1, v4, v5, v6, v7);
}

uint64_t sub_25588797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2558879EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255887A54@<X0>(uint64_t result@<X0>, uint64_t *a8@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255887B10()
{
  result = qword_27F7D62B0;
  if (!qword_27F7D62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D62B0);
  }

  return result;
}

uint64_t sub_255887B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255884434(a1, v5, v7, v6, v4);
}

uint64_t sub_255887C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_2558847B4(a1, v5, v7, v6, v4);
}

uint64_t sub_255887CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255882590(a1, v5, v7, v6, v4);
}

uint64_t sub_255887DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255883F00(a1, v5, v7, v6, v4);
}

uint64_t sub_255887E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_255887268(a1, a2, a3, v3);
}

uint64_t sub_255887F18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255888484;

  return sub_2558824D8(a1, v4, v5, v6);
}

uint64_t sub_255887FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255888484;

  return sub_255883E48(a1, v4, v5, v6);
}

uint64_t sub_255888080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_255883FC8;

  return sub_255881EAC(a1, v4, v5);
}

uint64_t sub_255888134(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25588817C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2558881D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255888218(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_255888484;

  return sub_255881AEC(a1, v1);
}

uint64_t getEnumTagSinglePayload for GraphStoreManager.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphStoreManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255888428()
{
  result = qword_27F7D6318;
  if (!qword_27F7D6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6318);
  }

  return result;
}

uint64_t sub_255888570()
{

  sub_255879018(v0, &v4);
  v1 = *(v4 + 16);
  [v1 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v3;
}

uint64_t sub_255888674()
{
  v1 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v2 = objc_allocWithZone(KGMutableElementIdentifierSet);

  v3 = [v2 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(inited + 16);
      [v13 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_255888134(0, &qword_2810B7360, off_2797FD128);
      swift_dynamicCast();
      v14 = swift_allocObject();
      *(v14 + 16) = v16;

      inited = v14;
    }

    v7 &= v7 - 1;
    [*(inited + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v15 = *(inited + 16);
      [v15 copy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_255888134(0, qword_2810B7368, off_2797FD0B8);
      swift_dynamicCast();

      return v16;
    }

    v7 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_255888974(void *a1)
{
  v10[4] = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v9 = inited;
  DirectedBinaryAdjacency.intersectingSources(with:)(&v9, v10);

  v4 = v10[0];
  v5 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_255888B00(void *a1, void (*a2)(void **, void **, uint64_t))
{
  v5 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  v6 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  v13 = v5;
  v14 = sub_255879DA8(MEMORY[0x277D84F90]);
  a2(&v13, &v14, inited);

  v8 = v14;
  v9 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_255888C90(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  v4 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  v11 = v3;
  v12[0] = sub_255879DA8(MEMORY[0x277D84F90]);
  sub_25587AA1C(&v11, inited, v12);

  v6 = v12[0];
  v7 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_255888E10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v8 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9 = v2;

  static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v9, &v8, &v10);

  v3 = v10;
  v4 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_255888FD4(void *a1)
{
  v8 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v7[0] = inited;
  DirectedBinaryAdjacency.targets(forSources:)(v7, &v9);

  v4 = *(v9 + 16);
  [v4 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();
  v5 = v8;

  return v5;
}

uint64_t sub_255889190(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  if (*(v2 + 16) && (v3 = sub_255875B4C(a1), (v4 & 1) != 0))
  {
    v5 = *(*(*(v2 + 56) + 8 * v3) + 16);
  }

  else
  {
    v5 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    *(swift_allocObject() + 16) = v5;
  }

  v6 = v5;
  [v6 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v8;
}

id sub_255889458(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v8 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9 = v2;

  ElementIdentifierTupleSet.formUnion(_:)(&v8);
  v3 = v9;
  v4 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_255889540(unint64_t a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  DirectedBinaryAdjacency.targets(minCount:)(a1, &v7);

  v3 = *(v7 + 16);
  [v3 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v6;
}

uint64_t sub_255889664(uint64_t a1)
{
  sub_255880728(a1, v7);
  if (!v8)
  {
    sub_255880798(v7);
    goto LABEL_5;
  }

  type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v3 = *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue];

  v4 = sub_2558936EC(v2, v3);

  return v4 & 1;
}

id sub_255889930(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_255889AD0(void *a1, uint64_t a2)
{
  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  v5 = a2;
  v6[0] = v3;
  return ElementIdentifierTupleSet.subscript.setter(v6, &v5);
}

id sub_255889CBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_255889D18()
{
  result = qword_27F7D6448;
  if (!qword_27F7D6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6448);
  }

  return result;
}

id sub_255889D6C(void *a1)
{
  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  v7 = inited;
  sub_2558776CC(&v7, v8);

  v2 = v8[0];
  v3 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_255889E54(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v4 = *(v3 + 64);
  v18 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v10 << 9) | (8 * v11);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(*(v3 + 56) + v12) + 16);

    v15 = v14;
    [v15 copy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, qword_2810B7368, off_2797FD0B8);
    swift_dynamicCast();
    (*(a2 + 16))(a2, v13, v17, &v18);

    if (v18 == 1)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t ElementIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_25588A0C4()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_25588A138(uint64_t a1)
{
  v2 = *v1;
  sub_255965D50();
  MEMORY[0x259C43B00](v2);
  return sub_255965D90();
}

unint64_t sub_25588A180()
{
  result = qword_2810B73F0;
  if (!qword_2810B73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B73F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ElementIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t AccelerateBuffer<>.approximatelyEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  v17 = AccelerateBuffer<>.approximatelyEqual<A>(to:maxAbsoluteDifference:maxRelativeDifference:)(a1, v16, v13, a2, a3, a4, v20);
  v18 = *(v11 + 8);
  v18(v13, AssociatedTypeWitness);
  v18(v16, AssociatedTypeWitness);
  return v17 & 1;
}

uint64_t AccelerateBuffer<>.approximatelyEqual<A>(to:maxAbsoluteDifference:maxRelativeDifference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_255964FF0();
  if (v7 != sub_255964FF0())
  {
    return 0;
  }

  v8 = sub_255964FF0();
  MEMORY[0x28223BE20](v8);
  sub_255964FE0();
  return v10;
}

uint64_t sub_25588A4D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v20[2] = a3;
  v20[1] = a6;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_255965C50();
  sub_255965C50();
  sub_255965B10();
  v16 = *(v7 + 8);
  v16(v9, a4);
  v16(v12, a4);
  sub_2559652F0();
  sub_255965C70();
  v16(v9, a4);
  v16(v15, a4);
  v17 = v7 + 32;
  v18 = *(v7 + 32);
  v20[0] = v17;
  v18(v15, v12, a4);
  sub_2559652E0();
  sub_255965C60();
  v16(v9, a4);
  v16(v15, a4);
  v18(v15, v12, a4);
  sub_2559652D0();
  return (v16)(v15, a4);
}

uint64_t static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a3;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  if (sub_255965390())
  {
    v16 = 1;
  }

  else
  {
    v19[1] = v6;
    v19[2] = a4;
    sub_255965B20();
    sub_255965C50();
    v17 = *(v10 + 8);
    v17(v12, a5);
    if (sub_255965330())
    {
      sub_25588A4D4(a1, v15, a5, v12);
      v16 = sub_255965350();
      v17(v12, a5);
    }

    else
    {
      v16 = 1;
    }

    v17(v15, a5);
  }

  return v16 & 1;
}

uint64_t static FloatingPoint.approximatelyEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  v14 = static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(a1, a2, v13, v10, a3, a4);
  v15 = *(v8 + 8);
  v15(v10, a3);
  v15(v13, a3);
  return v14 & 1;
}

void sub_25588AB28(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a4;
  v32 = a5;
  v29 = a1;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  v33 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = a7;
    v21 = 0;
    v28 = a11;
    while (1)
    {
      if (v33 == v21)
      {
        v25 = 1;
        goto LABEL_8;
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v22 = v14[9] * v21;
      v23 = v14[2];
      v23(v20, v30 + v22, AssociatedTypeWitness, v18);
      (v23)(v16, v29 + v22, AssociatedTypeWitness);
      LOBYTE(v22) = static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(v20, v16, v31, v32, AssociatedTypeWitness, v28);
      v24 = v14[1];
      v24(v16, AssociatedTypeWitness);
      v24(v20, AssociatedTypeWitness);
      ++v21;
      if ((v22 & 1) == 0)
      {
        v25 = 0;
LABEL_8:
        *v27 = v25;
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

KnowledgeGraphKit::BernoulliSampledIndexSequence __swiftcall BernoulliSampledIndexSequence.init(p:max:)(Swift::Double p, Swift::Int max)
{
  v3 = 1.0;
  v4 = p <= 0.0 || p > 1.0;
  if (v4 || max < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0.0;
    if (p != 1.0)
    {
      v5 = p;
      v6 = max;
      v7 = v2;
      v9 = log(1.0 - p);
      v2 = v7;
      max = v6;
      v10 = v9;
      p = v5;
      v3 = 1.0 / v10;
    }

    *v2 = -1;
    *(v2 + 8) = p;
    *(v2 + 16) = max;
    *(v2 + 24) = v3;
  }

  result.cachedDenominator = v3;
  result.p = p;
  result.max = v8;
  result.currentElement = max;
  return result;
}

Swift::Int_optional __swiftcall BernoulliSampledIndexSequence.next()()
{
  if (*(v0 + 1) != 1.0)
  {
LABEL_5:
    sub_25588AF30(0.0, 1.0);
    v5 = ceil(*(v0 + 3) * log(1.0 - v2));
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v1 = *v0 + v5;
        if (!__OFADD__(*v0, v5))
        {
          goto LABEL_9;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  v1 = *v0 + 1;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  *v0 = v1;
  v6 = v0[2];
  v4 = v6 < v1;
  if (v6 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

double sub_25588AEAC@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

Swift::Int sub_25588AF00@<X0>(uint64_t a1@<X8>)
{
  v3 = BernoulliSampledIndexSequence.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void sub_25588AF30(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x259C44FA0](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_25588AF30(a1, a2);
  }
}

unint64_t sub_25588AFD8()
{
  result = qword_27F7D6450;
  if (!qword_27F7D6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6450);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25588B038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25588B058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_25588B094(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = (MEMORY[0x277D84F90] + 32);
  if (a3 != 1.0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v11 = __OFADD__(a1++, 1);
  if (v11)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    while (a1 <= a2)
    {
      if (!v8)
      {
        v14 = v9[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6458, "VW");
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 25;
        }

        v20 = v19 >> 3;
        v17[2] = v16;
        v17[3] = 2 * (v19 >> 3);
        v21 = (v17 + 4);
        v22 = v9[3] >> 1;
        if (v9[2])
        {
          v23 = v9 + 4;
          if (v17 != v9 || v21 >= v23 + 8 * v22)
          {
            memmove(v17 + 4, v23, 8 * v22);
          }

          v9[2] = 0;
        }

        v10 = (v21 + 8 * v22);
        v8 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

        v9 = v17;
      }

      v11 = __OFSUB__(v8--, 1);
      if (v11)
      {
        __break(1u);
        goto LABEL_31;
      }

      *v10++ = a1;
      if (a3 == 1.0)
      {
        goto LABEL_2;
      }

LABEL_5:
      sub_25588AF30(0.0, 1.0);
      v13 = ceil(log(1.0 - v12) * a4);
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_33;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v11 = __OFADD__(a1, v13);
      a1 += v13;
      if (v11)
      {
        goto LABEL_35;
      }
    }

    v24 = v9[3];
    if (v24 < 2)
    {
      return;
    }

    v25 = v24 >> 1;
    v11 = __OFSUB__(v25, v8);
    v26 = v25 - v8;
    if (!v11)
    {
      v9[2] = v26;
      return;
    }
  }

  __break(1u);
}

void *sub_25588B28C(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 4;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = v4[v3];

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 4 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 29;
          }

          v19 = v18 >> 2;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 2);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 4 * v21)
            {
              v23 = v18 >> 2;
              memmove(v16 + 4, v22, 4 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 4 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_25588B47C(void *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 4;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = v4[v3];

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t BinaryPredicate.init(comparator:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = [objc_allocWithZone(KGBinaryPredicate) initWithComparator:a1 value:sub_255965C00()];
  swift_unknownObjectRelease();
  v13 = *(v8 + 8);
  v13(v11, a3);
  a4[3] = sub_25588B7C4();
  *a4 = v12;
  return (v13)(a2, a3);
}

unint64_t sub_25588B7C4()
{
  result = qword_27F7D6468[0];
  if (!qword_27F7D6468[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27F7D6468);
  }

  return result;
}

uint64_t sub_25588B81C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25588B8A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25588B81C(v15, v14);
  (*(v11 + 16))(v13, a4, a5);
  return BinaryPredicate.init(comparator:value:)(a7, v13, a5, a2);
}

uint64_t sub_25588B9C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[1];
  *v16 = *v14;
  v16[1] = v15;
  (*(v17 + 16))(v13, v18, v19, v11);

  return BinaryPredicate.init(comparator:value:)(a8, v13, a6, a2);
}

uint64_t sub_25588BAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25588BAF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25588BB38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25588BB90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t UniqueSortedBuffer.count.getter(uint64_t a1)
{
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  return sub_255965740();
}

uint64_t static UniqueSortedBuffer.SearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void UniqueSortedBuffer.binarySearchSeek(_:startOffset:endOffset:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v9;
  if (__OFSUB__(*v10, *v9))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = *v10 - *v9;
  v15 = v13 + v14 / 2;
  if (__OFADD__(v13, v14 / 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v4[1];
  v19 = *v4;
  v20 = v16;
  v18[1] = v13 + v14 / 2;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  sub_255965D30();
  if (sub_255965390())
  {
    (*(v8 + 8))(v12, v7);
    *a2 = v15;
    return;
  }

  v17 = sub_255965340();
  (*(v8 + 8))(v12, v7);
  if (v17)
  {
    *a3 = v15;
    return;
  }

  if (!__OFADD__(v15, 1))
  {
    *a2 = v15 + 1;
    return;
  }

LABEL_11:
  __break(1u);
}

void UniqueSortedBuffer.linearSearch(_:startOffset:endOffset:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v10;
  v11 = *v10;
  v13 = *v12;
  if (*v12 < *v10)
  {
    v14 = *v4;
    v19 = v4[1];
    v20 = v14;
    sub_2559653C0();
    v15 = (v7 + 8);
    while (1)
    {
      v23 = v20;
      v24 = v19;
      v22 = v13;
      swift_getWitnessTable();
      sub_255965D20();
      sub_255965D30();
      if ((sub_255965330() & 1) == 0)
      {
        break;
      }

      (*v15)(v9, v6);
      *a2 = ++v13;
      if (v11 == v13)
      {
        return;
      }
    }

    v16 = sub_255965340();
    (*v15)(v9, v6);
    if (v16)
    {
      *v18 = v13;
    }
  }
}

void UniqueSortedBuffer.binarySearch(_:startOffset:endOffset:)(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  while (!__OFSUB__(*a3, *a2))
  {
    if ((*a3 - *a2) < 129)
    {
      UniqueSortedBuffer.linearSearch(_:startOffset:endOffset:)(result, a2, a3, a4);
      return;
    }

    UniqueSortedBuffer.binarySearchSeek(_:startOffset:endOffset:)(result, a2, a3, a4);
    if (v8)
    {
      return;
    }
  }

  __break(1u);
}

void UniqueSortedBuffer.find(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  sub_255965CF0();
  sub_255965D00();
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  UniqueSortedBuffer.binarySearch(_:startOffset:endOffset:)(a1, &v13, v12, a2);
  v11 = v13 != v12[0];
  *a3 = v13;
  *(a3 + 8) = v11;
}

uint64_t sub_25588C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25588C2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25588C304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25588C358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t static NodeCollection<>.fetch(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(a3 + 16);
  v16 = type metadata accessor for Filter(0, a2, v10, v11);
  v14[1] = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  v9(v15, a2, a3);
  AbstractGraph.nodeIdentifiers(matching:)(v15, v7, v8, v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  sub_25588B81C(a1, v15);
  return NodeCollection.init(with:in:)(v14, v15, a4);
}

uint64_t static NodeCollection<>.fetch(with:in:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  sub_25588C578(a1, a3, a4, v14);
  AbstractGraph.nodeIdentifiers(matching:)(v14, v10, v11, &v13);
  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_25588B81C(a2, v14);
  return NodeCollection.init(with:in:)(&v13, v14, a5);
}

__n128 sub_25588C578@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  (*(a3 + 16))(&v33, a2, a3);
  v7 = v33;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  *&v33 = v7;

  sub_25587E01C(v10);
  v11 = sub_25588DCDC(v33);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_25588025C(*(v11 + 16), 0);
    v14 = sub_2558AA2A0(&v33, v13 + 4, v12, v11);
    sub_25588DD74(v33);
    if (v14 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_5:

  v16 = sub_25588DCDC(v15);

  swift_bridgeObjectRelease_n();
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = sub_25588CFC4(v19, v16);

  v21 = v20[2];
  if (!v21)
  {
LABEL_8:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v22 = sub_25588025C(v20[2], 0);
  v23 = sub_2558AA2A0(&v33, v22 + 4, v21, v20);
  sub_25588DD74(v33);
  if (v23 != v21)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 24))(&v32, v24, v25);
  Filter.init(with:anyOfLabels:properties:)(v13, v22, &v32, &v33);
  v26 = v34;
  v29 = type metadata accessor for Filter(0, a2, v27, v28);
  v31 = v33;
  a4[1].n128_u64[1] = v29;
  a4[2].n128_u64[0] = swift_getWitnessTable();
  result = v31;
  *a4 = v31;
  a4[1].n128_u64[0] = v26;
  return result;
}

uint64_t static NodeCollection<>.fetch(with:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = a2;
  v8 = a5;
  v9 = *a1;
  if ((a1[1] & 1) == 0)
  {
    v62 = *a1;
    v30 = a2[3];
    v31 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v30);
    v34 = type metadata accessor for Filter(0, a3, v32, v33);
    v67 = v34;
    v60[1] = *(a4 + 8);
    WitnessTable = swift_getWitnessTable();
    v68 = WitnessTable;
    sub_2559655E0();

    swift_getWitnessTable();
    sub_2559657E0();
    v59 = a3;
    sub_25588C578(&v64, a3, a4, v69);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    AbstractGraph.nodeIdentifiers(matching:)(v69, v30, v31, &v61);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v35 = v62;
    if (sub_255965570())
    {
      v36 = 0;
      v37 = (v35 + 48);
      while (1)
      {
        v38 = sub_255965550();
        result = sub_2559654E0();
        if ((v38 & 1) == 0)
        {
          goto LABEL_24;
        }

        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_26;
        }

        v41 = *(v37 - 1);
        v40 = *v37;
        v42 = *(v37 - 2);
        v43 = a2[3];
        v44 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v43);
        v67 = v34;
        v68 = WitnessTable;
        v64 = v42;
        v65 = v41;
        v66 = v40;

        sub_25588C578(&v64, v59, a4, v69);
        __swift_destroy_boxed_opaque_existential_0(&v64);
        v45 = v61;
        v60[0] = v61;

        AbstractGraph.nodeIdentifiers(matching:in:)(v69, v60, v43, v44, &v64);

        __swift_destroy_boxed_opaque_existential_0(v69);
        v46 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v45 + 16);
          [v47 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          v48 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v45 = swift_allocObject();
          *(v45 + 16) = v48;

          v61 = v45;
        }

        [*(v45 + 16) intersectWithIdentifierSet_];

        ++v36;
        v37 += 3;
        if (v39 == sub_255965570())
        {

          v7 = a2;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v64 = v61;
    sub_25588B81C(v7, v69);
    v49 = a5;
    return NodeCollection.init(with:in:)(&v64, v69, v49);
  }

  v10 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v14 = type metadata accessor for Filter(0, a3, v12, v13);

  if (!sub_255965570())
  {

LABEL_19:
    v64 = v11;
    sub_25588B81C(v7, v69);
    v49 = v8;
    return NodeCollection.init(with:in:)(&v64, v69, v49);
  }

  v50 = v8;
  v58 = a3;
  v15 = 0;
  v16 = (v9 + 48);
  v52 = v14;
  while (1)
  {
    v17 = sub_255965550();
    result = sub_2559654E0();
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_25;
    }

    v53 = v15 + 1;
    v54 = v11;
    v20 = *(v16 - 1);
    v19 = *v16;
    v21 = *(v16 - 2);
    v22 = v7[3];
    v23 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v22);
    v67 = v14;
    v63 = *(a4 + 8);
    v24 = swift_getWitnessTable();
    v64 = v21;
    v65 = v20;
    v68 = v24;
    v66 = v19;

    sub_25588C578(&v64, v58, a4, v69);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    v25 = v23;
    v11 = v54;
    AbstractGraph.nodeIdentifiers(matching:)(v69, v22, v25, &v64);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v26 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v54 + 16);
      [v27 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v28 = v64;
      v29 = swift_allocObject();
      *(v29 + 16) = v28;

      v11 = v29;
    }

    [*(v11 + 16) unionWithIdentifierSet_];

    v14 = v52;
    ++v15;
    v16 += 3;
    v7 = a2;
    if (v53 == sub_255965570())
    {

      v8 = v50;
      goto LABEL_19;
    }
  }

  sub_2559659C0();
  __break(1u);
LABEL_24:
  result = sub_2559659C0();
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25588CE74(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_255965D50();
  sub_255965400();
  v8 = sub_255965D90();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_255965C10() & 1) != 0)
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

    sub_25588D7C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t *sub_25588CFC4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_25588D3C4(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_25588DD7C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x259C44F80](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_25588D164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965960();
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
      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
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

unint64_t *sub_25588D3C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_255965D50();

          sub_255965400();
          v13 = sub_255965D90();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_255965C10() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_25588D5A4(v25, a2, v24, a4);
}

uint64_t sub_25588D5A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965970();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_255965D50();

    sub_255965400();
    result = sub_255965D90();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25588D7C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25588D164(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25588D948();
      goto LABEL_16;
    }

    sub_25588DAA4(v8 + 1);
  }

  v10 = *v4;
  sub_255965D50();
  sub_255965400();
  result = sub_255965D90();
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

      result = sub_255965C10();
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
  result = sub_255965C90();
  __break(1u);
  return result;
}

void *sub_25588D948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  v2 = *v0;
  v3 = sub_255965950();
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

uint64_t sub_25588DAA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965960();
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
      sub_255965D50();

      sub_255965400();
      result = sub_255965D90();
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

uint64_t sub_25588DCDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C43450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25588CE74(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_25588DD7C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_25588D3C4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MADataFrame.slice(name:columnLabels:)(MADataFrame_optional *__return_ptr retstr, Swift::String_optional name, Swift::OpaquePointer columnLabels)
{
  v4 = v3;
  object = name.value._object;
  countAndFlagsBits = name.value._countAndFlagsBits;
  v7 = *(columnLabels._rawValue + 2);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_9:
    v17 = [v4 matrix];
    v18 = [v17 wrapper];

    (*((*MEMORY[0x277D85000] & *v18) + 0x70))(&v38);
    v36 = v38;
    v37 = v39;
    Matrix<A>.subscript.getter(v8, &v34);

    v32 = v34;
    v19 = v35;
    v20 = type metadata accessor for MAFloatMatrixWrapper();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
    *v22 = v32;
    *(v22 + 2) = v19;
    v33.receiver = v21;
    v33.super_class = v20;
    v23 = [(MADataFrame_optional *)&v33 init];
    v24 = [objc_allocWithZone(MAFloatMatrix) initWithWrapper_];

    v25 = [v4 rowLabels];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2559654C0();

      if (!object)
      {
LABEL_12:
        if (v27)
        {
          v28 = sub_2559654B0();
        }

        else
        {
          v28 = 0;
        }

        v29 = objc_allocWithZone(MADataFrame);
        v30 = sub_2559654B0();
        [v29 initWithName:object rowLabels:v28 columnLabels:v30 matrix:v24];

        return;
      }
    }

    else
    {
      v27 = 0;
      if (!object)
      {
        goto LABEL_12;
      }
    }

    object = sub_2559653D0();
    goto LABEL_12;
  }

  v31 = name.value._object;
  v38 = MEMORY[0x277D84F90];
  sub_2558A5744(0, v7, 0);
  v8 = v38;
  v9 = (columnLabels._rawValue + 40);
  while (1)
  {
    v11 = *(v9 - 1);
    v10 = *v9;

    v12 = sub_2559653D0();
    v13 = [v4 indexOfColumnWithLabel_];

    if (v13 == sub_255965120())
    {
      break;
    }

    v38 = v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2558A5744((v14 > 1), v15 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v15 + 1;
    *(v8 + 8 * v15 + 32) = v13;
    v9 += 2;
    if (!--v7)
    {
      object = v31;
      goto LABEL_9;
    }
  }

  sub_25588EA30();
  swift_allocError();
  *v16 = v11;
  *(v16 + 8) = v10;
  *(v16 + 16) = 0;
  swift_willThrow();
}

MASeries __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MADataFrame.row(forLabel:)(Swift::String forLabel)
{
  v2 = v1;
  object = forLabel._object;
  countAndFlagsBits = forLabel._countAndFlagsBits;
  v5 = sub_2559653D0();
  v6 = [v2 indexOfRowWithLabel_];

  if (v6 == sub_255965120())
  {
    sub_25588EA30();
    swift_allocError();
    *v7 = countAndFlagsBits;
    *(v7 + 8) = object;
    *(v7 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v12 = [v2 columnLabels];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2559654C0();
    }

    else
    {
      v14 = 0;
    }

    v15 = [v2 matrix];
    v16 = [v15 row_];

    v17 = sub_2559653D0();

    if (v14)
    {
      v18 = sub_2559654B0();
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(MASeries) initWithName:v17 labels:v18 vector:v16];

    v8 = v19;
  }

  result._vector = v11;
  result._indexCache = v10;
  result._name = v9;
  result.super.isa = v8;
  return result;
}

uint64_t MADataFrame.columnLabelValuesByRowLabel(withThreshold:)(float a1)
{
  v2 = v1;
  v4 = [v1 rowLabels];
  if (!v4)
  {
    return sub_255879EF8(MEMORY[0x277D84F90]);
  }

  v5 = v4;
  v6 = sub_2559654C0();

  v7 = [v2 columnLabels];
  if (!v7)
  {

    return sub_255879EF8(MEMORY[0x277D84F90]);
  }

  v8 = v7;
  v9 = sub_2559654C0();

  v37 = *(v6 + 16);
  if (v37)
  {
    v10 = 0;
    v36 = v6 + 32;
    v11 = MEMORY[0x277D84F98];
    v35 = v6;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_255965CA0();
        __break(1u);
        return result;
      }

      v13 = (v36 + 16 * v10);
      v40 = *v13;
      v14 = *(v9 + 16);
      v41 = v13[1];
      v42 = v11;

      if (v14)
      {
        break;
      }

      v43 = MEMORY[0x277D84F98];
LABEL_6:
      ++v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_255879B10(v43, v40, v41, isUniquelyReferenced_nonNull_native);

      v11 = v42;
      v6 = v35;
      if (v10 == v37)
      {
        goto LABEL_31;
      }
    }

    v15 = 0;
    v43 = MEMORY[0x277D84F98];
    while (2)
    {
      v16 = (v9 + 40 + 16 * v15);
      v17 = v15;
      while (1)
      {
        if (v17 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v18 = *(v16 - 1);
        v19 = *v16;
        v15 = v17 + 1;

        [v2 floatAtRowIndex:v10 columnIndex:v17];
        if (v20 > a1)
        {
          break;
        }

        v16 += 2;
        ++v17;
        if (v14 == v15)
        {
          goto LABEL_6;
        }
      }

      v21 = v20;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v43;
      v23 = sub_255875C80(v18, v19);
      v24 = *(v43 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_34;
      }

      if (*(v43 + 24) < v26)
      {
        v44 = v22;
        sub_255895FA0(v26, v38);
        v27 = sub_255875C80(v18, v19);
        if ((v44 & 1) != (v28 & 1))
        {
          goto LABEL_36;
        }

        v23 = v27;
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        v29 = v23;

        v43 = v46;
        *(v46[7] + 4 * v29) = v21;
        goto LABEL_26;
      }

      if (v38)
      {
        if (v22)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v39 = v23;
        v45 = v22;
        sub_255896D58();
        v23 = v39;
        if (v45)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v46[(v23 >> 6) + 8] |= 1 << v23;
      v30 = (v46[6] + 16 * v23);
      *v30 = v18;
      v30[1] = v19;
      *(v46[7] + 4 * v23) = v21;
      v31 = v46[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_35;
      }

      v43 = v46;
      v46[2] = v33;
LABEL_26:
      if (v14 - 1 != v17)
      {
        continue;
      }

      goto LABEL_6;
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_31:

  return v11;
}

void __swiftcall MADataFrame.normalizedByRowMagnitude()(MADataFrame_optional *__return_ptr retstr)
{
  v4 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v5 = [v1 matrix];
  v6 = [v5 wrapper];

  v7 = v6;
  (*((*MEMORY[0x277D85000] & *v6) + 0x70))(&v37);

  v8 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v7 = v37;
  v2 = v39;
  if (!v38)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v9 = sub_255965530();
  *(v9 + 16) = v8;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_43:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v3 = v9;
  v10 = 0;
  do
  {
    if ((v10 * v2) >> 64 != (v10 * v2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = v10 + 1;
    v12 = v3 + 4 * v10;
    cblas_snrm2_NEWLAPACK();
    *(v12 + 32) = v13;
    v10 = v11;
  }

  while (v8 != v11);
LABEL_10:
  *(v3 + 16) = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  for (; v8; v7 = sub_2558803F4(v7))
  {
    v14 = 0;
    while ((v14 * v2) >> 64 == (v14 * v2) >> 63)
    {
      if (v14 >= *(v3 + 16))
      {
        goto LABEL_22;
      }

      __B = *(v3 + 32 + 4 * v14);
      if (__B != 0.0)
      {
        if (v2 < 0)
        {
          __break(1u);
          goto LABEL_20;
        }

        vDSP_vsdiv(&v7[4 * v14 * v2 + 32], 1, &__B, &v7[4 * v14 * v2 + 32], 1, v2);
      }

      if (v8 == ++v14)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  v37 = v7;

  v15 = [v4 name];
  if (v15)
  {
    v16 = v15;
    sub_2559653E0();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v4 rowLabels];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2559654C0();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v4 columnLabels];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2559654C0();
  }

  else
  {
    v24 = 0;
  }

  v25 = v38;
  v26 = v39;
  v27 = type metadata accessor for MAFloatMatrixWrapper();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v29 = v7;
  v29[1] = v25;
  v29[2] = v26;
  v35.receiver = v28;
  v35.super_class = v27;
  v30 = [(MADataFrame_optional *)&v35 init];
  v31 = [objc_allocWithZone(MAFloatMatrix) initWithWrapper_];

  if (v18)
  {
    v32 = sub_2559653D0();

    if (v21)
    {
      goto LABEL_36;
    }

LABEL_39:
    v33 = 0;
    if (v24)
    {
      goto LABEL_37;
    }

LABEL_40:
    v34 = 0;
    goto LABEL_41;
  }

  v32 = 0;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_36:
  v33 = sub_2559654B0();

  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_37:
  v34 = sub_2559654B0();

LABEL_41:
  [objc_allocWithZone(MADataFrame) initWithName:v32 rowLabels:v33 columnLabels:v34 matrix:v31];
}

unint64_t sub_25588EA30()
{
  result = qword_27F7D65F8;
  if (!qword_27F7D65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D65F8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25588EAA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25588EAEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

double SparseArray.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = a1;
  v7 = sub_2559655E0();
  WitnessTable = swift_getWitnessTable();
  SparseArray.init<A>(denseValues:)(&v10, a2, v7, a3, WitnessTable, &v11);
  result = *&v11;
  *a4 = v11;
  return result;
}

uint64_t SparseArray.append(offset:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v12 + 24) + 16))(v7, *(v12 + 24), v9);
  v13 = sub_255965390();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    v15 = *(v4 + 8);
    v16 = *(v15 + 2);
    if (v16 && *&v15[8 * v16 + 24] >= a1)
    {
      __break(1u);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2558914EC(0, v16 + 1, 1, v15, &qword_27F7D66A8, &qword_25596EE40);
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_2558914EC((v17 > 1), v18 + 1, 1, v15, &qword_27F7D66A8, &qword_25596EE40);
      }

      *(v15 + 2) = v18 + 1;
      *&v15[8 * v18 + 32] = a1;
      *(v4 + 8) = v15;
      (*(v8 + 16))(v11, a2, v7);
      sub_2559655E0();
      return sub_255965590();
    }
  }

  return result;
}

uint64_t SparseArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2559652B0();
  swift_getWitnessTable();
  v8 = sub_255965480();
  v14[7] = v8;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6600, &qword_25596EC40);
  v10 = sub_255891DE0();
  v12 = sub_25588EF3C(sub_255891DBC, v14, v9, a2, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  *a4 = v12;
  a4[1] = v8;
  return result;
}

uint64_t SparseArray.init(values:offsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  result = sub_255965570();
  if (result == *(a2 + 16))
  {
    *a4 = a1;
    a4[1] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25588EF3C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_255965710();
  if (!v19)
  {
    return sub_255965520();
  }

  v41 = v19;
  v45 = sub_255965A30();
  v32 = sub_255965A40();
  sub_255965A10();
  result = sub_255965700();
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
      v22 = sub_2559657D0();
      v23 = v13;
      v24 = v13;
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
      sub_255965A20();
      result = sub_255965720();
      ++v21;
      v13 = v24;
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

uint64_t SparseArray.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_255965520();
  v4 = MEMORY[0x277D84F90];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static SparseArray.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a2[1];
  if ((sub_255965600() & 1) == 0)
  {
    return 0;
  }

  return sub_25587F960(v4, v5);
}

uint64_t sub_25588F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  v7 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v7;
  v10[5] = a1;
  v10[6] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  return sub_2558A2A48(sub_255892198, v10, v6, MEMORY[0x277D84A28], a4, v8, MEMORY[0x277D84950], &v11);
}

uint64_t SparseArray.withBuffer<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v9 = *v4;
  v10 = v5;
  v6 = *(a3 + 24);
  v8[2] = *(a3 + 16);
  v8[3] = a4;
  v8[4] = v6;
  v8[5] = v9;
  v8[6] = v5;
  v8[7] = a1;
  v8[8] = a2;
  return sub_25588F410(sub_255891E44, v8, a3, a4);
}

uint64_t sub_25588F51C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[1];
  v15 = *a1;
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v16 = v11;
  v17 = a4;
  v18 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  return sub_2558A2A48(sub_2558921EC, v14, a2, a6, a7, v12, MEMORY[0x277D84950], &v19);
}

uint64_t sub_25588F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v21[8] = a1;
  v21[9] = a2;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_2559657A0();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v16 = sub_2558A6C34(v21[4], v21[5], v21[6], v21[7], v21, v20);
  v17 = v21[12];
  result = (a7)(v20, v16);
  if (v17)
  {
    *a12 = v17;
  }

  return result;
}

double SparseArray.formUnion<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();
  SparseArrayProtocol.union<A>(with:combine:)(a1, a2, a3, a4, a5, WitnessTable, a6);

  result = *&v15;
  *v6 = v15;
  return result;
}

double SparseArray.formIntersection<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 + 16);
  WitnessTable = swift_getWitnessTable();
  SparseArrayProtocol.intersection<A, B>(with:combine:)(a1, a2, a3, a4, a5, v13, WitnessTable, a6, *(a4 + 24));

  result = *&v16;
  *v6 = v16;
  return result;
}

uint64_t SparseArray.sparseValues.getter()
{
  sub_255891CC4();
}

uint64_t SparseArray.sparseValueIndices.getter()
{
  sub_255891CCC();
}

double static SparseArray.defaultSparseValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_255965520();

  return SparseArray.init(arrayLiteral:)(v6, a1, a2, a3);
}

uint64_t SparseArray.getValue(atOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(a2 + 24);
  v9 = *(a2 + 16);
  v10 = v6;
  v11 = a1;
  v20 = v4;
  v21 = v5;
  v13 = v9;
  v14 = sub_2559658B0();
  v15 = v6;
  v16 = v4;
  v17 = v5;
  v18 = sub_255891E6C;
  v19 = &v8;
  return sub_25588F410(sub_255891E44, v12, a2, v14);
}

void SparseArray.set(_:atOffset:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v27 = v3;
  v11 = v3[1];
  v24 = v12;
  v25 = v3 + 1;
  v31 = v10;
  v32 = v11;
  v30 = v12;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6610, &qword_25596EC48);
  sub_25588F410(sub_255891ED8, v29, a2, v13);

  v14 = v33;
  v15 = v34;
  (*(*(a2 + 24) + 16))(v6, *(a2 + 24));
  v26 = a1;
  v16 = sub_255965390();
  v17 = *(v7 + 8);
  v17(v9, v6);
  if (v15 == 1)
  {
    v18 = v28;
    sub_255965640();
    (*(v7 + 56))(v18, 0, 1, v6);
    sub_2559655E0();
    if (v16)
    {
      sub_2559655B0();
      v17(v9, v6);
      sub_25588FD38(v14);
    }

    else
    {
      v19 = v27;
      sub_255965510();
      v20 = *v19;
      sub_255899B20(v14, *v19, v6);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = v20;
      }

      (*(v7 + 24))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v26, v6);
      nullsub_2();
    }
  }

  else
  {
    (*(v7 + 56))(v28, 1, 1, v6);
    if ((v16 & 1) == 0)
    {
      (*(v7 + 16))(v9, v26, v6);
      sub_2559655E0();
      sub_2559655A0();
      if (*(v11 + 16) < v14)
      {
        __break(1u);
      }

      else if ((v14 & 0x8000000000000000) == 0)
      {
        sub_2558917F8(v14, v14, v24);
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_25588FD38(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2558803E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25588FDC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2558803F4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 4 * a1 + 32), (v3 + 4 * a1 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_25588FE48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25588041C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 8 * a1 + 32), (v3 + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t SparseArray.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_2559658B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v15 = *v3;
  SparseArray.getValue(atOffset:)(a1, a2);
  v12 = *(v7 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, v7) != 1)
  {
    return (*(v12 + 32))(a3, v11, v7);
  }

  (*(*(a2 + 24) + 16))(v7);
  result = (v13)(v11, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_255890084@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = type metadata accessor for SparseArray(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  return SparseArray.subscript.getter(v5, v6, a3);
}

uint64_t SparseArray.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255891CD4(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*SparseArray.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0xA8uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[7] = a3;
  v9[8] = v4;
  v9[6] = a2;
  v11 = *(a3 + 16);
  v9[9] = v11;
  v12 = *(v11 - 8);
  v9[10] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[11] = swift_coroFrameAlloc();
    v10[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[11] = malloc(*(v12 + 64));
    v10[12] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[13] = v14;
  v15 = *v4;
  v16 = v4[1];
  v10[14] = v16;
  v22[5] = v15;
  v22[6] = v16;
  MEMORY[0x28223BE20](v14);
  v22[2] = a2;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6610, &qword_25596EC48);
  sub_25588F410(sub_25589222C, v22, a3, v17);

  v10[15] = v10[4];
  if (*(v10 + 40) == 1)
  {
    v10[16] = sub_2559655E0();
    v10[17] = sub_255965630();
    return sub_2558903BC;
  }

  else
  {
    v19 = *(a3 + 24);
    v10[18] = v19;
    v20 = *(v19 + 16);
    v10[19] = v20;
    v10[20] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0x98C2000000000000;
    v20(v11);
    return sub_255890508;
  }
}

void sub_2558903BC(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 136))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v6 = *(v3 + 72);
    v7 = *(v3 + 80);
    v8 = *(v3 + 56);
    sub_255965640();
    (*(*(v8 + 24) + 16))(v6, *(v8 + 24));
    LOBYTE(v8) = sub_255965390();
    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    if (v8)
    {
      v10 = *(v3 + 120);
      v11 = *(v3 + 104);
      v12 = *(v3 + 72);
      sub_2559655B0();
      v9(v11, v12);
      sub_25588FD38(v10);
    }
  }

  v13 = *(v3 + 96);
  v14 = *(v3 + 88);
  free(*(v3 + 104));
  free(v13);
  free(v14);

  free(v3);
}

void sub_255890508(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 144);
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);
    v7 = *(v2 + 80);
    v8 = *(v2 + 72);
    v9 = *(v7 + 16);
    v9(v5, *(v2 + 88), v8);
    v3(v8, v4);
    LOBYTE(v4) = sub_255965390();
    v10 = *(v7 + 8);
    v10(v6, v8);
    v10(v5, v8);
    if ((v4 & 1) == 0)
    {
      v12 = *(v2 + 112);
      v11 = *(v2 + 120);
      v9(*(v2 + 104), *(v2 + 88), *(v2 + 72));
      sub_2559655E0();
      sub_2559655A0();
      if (*(v12 + 16) < v11)
      {
        __break(1u);
      }

      else
      {
        v13 = *(v2 + 120);
        if ((v13 & 0x8000000000000000) == 0)
        {
          sub_2558917F8(v13, *(v2 + 120), *(v2 + 48));
          goto LABEL_7;
        }
      }

      __break(1u);
      return;
    }

LABEL_7:
    v10(*(v2 + 88), *(v2 + 72));
    goto LABEL_8;
  }

  (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));
LABEL_8:
  v14 = *(v2 + 96);
  v15 = *(v2 + 88);
  free(*(v2 + 104));
  free(v14);
  free(v15);

  free(v2);
}

uint64_t sub_2558906A4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_2559658B0();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - v8;
  v12[1] = *a1;
  sub_2559652C0();
  v10 = *(a3 - 8);
  result = (*(v10 + 48))(v9, 1, a3);
  if (result != 1)
  {
    return (*(v10 + 32))(a4, v9, a3);
  }

  __break(1u);
  return result;
}

double SparseArray.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a6@<X8>)
{
  v35 = a6;
  v36 = a1;
  v8 = *(a2 - 8);
  v40 = a4;
  v41 = v8;
  MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_2559658B0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v32 - v13);
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v32 - v20;
  *&v42 = sub_255965520();
  *(&v42 + 1) = MEMORY[0x277D84F90];
  v33 = v15;
  (*(v15 + 16))(v18, v36, a3);
  sub_255965430();
  v34 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2559658D0();
  v23 = *(*(TupleTypeMetadata2 - 8) + 48);
  if (v23(v14, 1, TupleTypeMetadata2) != 1)
  {
    v24 = *(v41 + 32);
    v41 += 32;
    v37 = (v41 - 24);
    v38 = v24;
    v39 = AssociatedConformanceWitness;
    do
    {
      v25 = v21;
      v26 = AssociatedTypeWitness;
      v27 = *v14;
      v38(v10, v14 + *(TupleTypeMetadata2 + 48), a2);
      v29 = type metadata accessor for SparseArray(0, a2, v40, v28);
      v30 = v27;
      AssociatedTypeWitness = v26;
      v21 = v25;
      sub_255891CD4(v10, v30, v29);
      (*v37)(v10, a2);
      sub_2559658D0();
    }

    while (v23(v14, 1, TupleTypeMetadata2) != 1);
  }

  (*(v33 + 8))(v36, v34);
  (*(v32 + 8))(v21, AssociatedTypeWitness);
  result = *&v42;
  *v35 = v42;
  return result;
}

double SparseArray.init<A>(denseValues:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6618, &qword_25596EC50);
  v12 = sub_255891F40();
  v13 = *(a5 + 8);
  *(&v19 + 1) = a3;
  v20 = v12;
  v21 = v13;
  v14 = sub_2559659B0();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  *&v19 = 0;
  sub_255965C80();
  swift_getWitnessTable();
  v17 = SparseArray.init<A>(_:)(v16, a2, v14, a4, &v19);
  (*(*(a3 - 8) + 8))(a1, a3, v17);
  result = *&v19;
  *a6 = v19;
  return result;
}

uint64_t static SparseArray<>.zero.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_255965520();
  result = sub_255965570();
  v5 = MEMORY[0x277D84F90];
  if (result == *(MEMORY[0x277D84F90] + 16))
  {
    *a2 = v3;
    a2[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255890DE0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[1] = *a1;
  v11[0] = *a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a3;
  v7 = type metadata accessor for SparseArray(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  return SparseArrayProtocol.union<A>(with:combine:)(v11, a6, v10, v7, v7, WitnessTable, WitnessTable);
}

double sub_255890E9C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a3;
  v7 = type metadata accessor for SparseArray(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  return SparseArray.formUnion<A>(with:combine:)(&v11, a6, v10, v7, v7, WitnessTable);
}

uint64_t SparseArray<>.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_2559655F0();
  result = MEMORY[0x259C43B00](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C43B20](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t SparseArray<>.hashValue.getter()
{
  sub_255965D50();
  SparseArray<>.hash(into:)();
  return sub_255965D90();
}

uint64_t sub_25589104C(uint64_t a1)
{
  sub_255965D50();
  SparseArray<>.hash(into:)();
  return sub_255965D90();
}

uint64_t SparseArray.description.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v20 = 91;
  v21 = 0xE100000000000000;
  *&v19[0] = v4;
  *(&v19[0] + 1) = v3;
  WitnessTable = swift_getWitnessTable();
  SparseValues.init(_:)(v19, a1, v17);
  v18[1] = v17[0];
  v7 = type metadata accessor for SparseValues(0, a1, WitnessTable, v6);

  v8 = swift_getWitnessTable();
  MEMORY[0x259C43210](v18, v7, v8);

  v17[2] = v18[0];
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = sub_25589201C;
  v12[5] = v9;
  sub_2559659A0();
  swift_getWitnessTable();
  sub_255965BB0();

  v17[0] = v19[0];
  v17[1] = v19[1];
  sub_255965A90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_255965320();
  v15 = v14;

  MEMORY[0x259C431B0](v13, v15);

  MEMORY[0x259C431B0](93, 0xE100000000000000);
  return v20;
}

uint64_t sub_25589132C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_255965BC0();
  MEMORY[0x259C431B0](v3);

  MEMORY[0x259C431B0](8250, 0xE200000000000000);
  sub_255965BD0();
  return 0;
}

char *sub_2558913D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2558914EC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2558915E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C0, &unk_25596EE30);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2558916F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2558917F8(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_2558914EC(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27F7D66A8, &qword_25596EE40);
    *v3 = v5;
  }

  result = sub_255891A84(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

float *sub_2558918DC(float *result, int64_t a2, float a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_2558913D4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_255891B44(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

double *sub_2558919B0(double *result, int64_t a2, double a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_2558916F4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_255891C04(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_255891A84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

float *sub_255891B44(float *result, uint64_t a2, uint64_t a3, float a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 4 * a2);
      if (result != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 4 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double *sub_255891C04(double *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_255891CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2559658B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  SparseArray.set(_:atOffset:)(a1, a3, &v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_255891DE0()
{
  result = qword_27F7D6608;
  if (!qword_27F7D6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6600, &qword_25596EC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6608);
  }

  return result;
}

uint64_t sub_255891E6C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  v5 = type metadata accessor for SparseBuffer(0, v2[2], v2[3], a1);
  return SparseBuffer.getValue(atOffset:)(v4, v5, a2);
}

unint64_t sub_255891F40()
{
  result = qword_27F7D6620[0];
  if (!qword_27F7D6620[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6618, &qword_25596EC50);
    sub_2558768D0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7D6620);
  }

  return result;
}

uint64_t sub_255892024@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_25589209C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2558920D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255892114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25589215C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_255892198(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 40);
    v7[0] = 0;
    v7[1] = a2;
    v7[2] = result;
    v7[3] = a2;
    result = v6(v7);
    if (v4)
    {
      *a3 = v4;
    }
  }

  return result;
}

void (*sub_255892250(uint64_t a1, uint64_t a2, void *(*a3)(void **__return_ptr)))()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v8 = v21;
  v9 = sub_255875B4C(a2);
  v11 = v21[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v10;
  if (v21[3] < v14)
  {
    sub_255895430(v14, isUniquelyReferenced_nonNull_native);
    v8 = v21;
    v9 = sub_255875B4C(a2);
    if ((v4 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_255965CA0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    v20 = v9;
    sub_2558966B4();
    v9 = v20;
    v8 = v21;
    *v3 = v21;
    if (v4)
    {
      return nullsub_2;
    }

    goto LABEL_7;
  }

LABEL_6:
  *v3 = v8;
  if (v4)
  {
    return nullsub_2;
  }

LABEL_7:
  v16 = v9;
  result = a3(&v21);
  v8[(v16 >> 6) + 8] |= 1 << v16;
  *(v8[6] + 8 * v16) = a2;
  *(v8[7] + 8 * v16) = v21;
  v18 = v8[2];
  v13 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v13)
  {
    v8[2] = v19;
    return nullsub_2;
  }

  __break(1u);
  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.init()()
{
  v1 = v0;
  result.targetsBySource._rawValue = sub_255879DA8(MEMORY[0x277D84F90]);
  v1->targetsBySource._rawValue = result.targetsBySource._rawValue;
  return result;
}

void ElementIdentifierTupleSet.sources.getter(uint64_t *a1@<X8>)
{

  sub_255879018(v2, a1);
}

uint64_t ElementIdentifierTupleSet.insert(_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = v4;
  v8 = *a3;
  v9 = *a4;
  v10 = *v4;
  if (*(v10 + 16) && (v11 = sub_255875B4C(*a3), (v12 & 1) != 0))
  {
    v13 = [*(*(*(v10 + 56) + 8 * v11) + 16) containsIdentifier_] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v33 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v6;
  v15 = v34;
  *v6 = 0x8000000000000000;
  v17 = sub_255875B4C(v8);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v16;
  if (v15[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_10:

      *v6 = v15;
      if ((v5 & 1) == 0)
      {
        v23 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v15[(v17 >> 6) + 8] |= 1 << v17;
        *(v15[6] + 8 * v17) = v8;
        *(v15[7] + 8 * v17) = v24;
        v25 = v15[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
          goto LABEL_23;
        }

        v15[2] = v27;
      }

      ElementIdentifierSet.insert(_:)(&v34, &v33);
      if (v15[2])
      {
        v28 = sub_255875B4C(v8);
        if (v29)
        {
          if ([*(*(v15[7] + 8 * v28) + 16) isEmpty])
          {
            sub_255897064(v8, &v32);
          }

          *a1 = v8;
          *a2 = v9;
          return v13;
        }
      }

      else
      {
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      sub_2558966B4();
      v15 = v34;
    }
  }

  sub_255895430(v20, isUniquelyReferenced_nonNull_native);
  v15 = v34;
  v21 = sub_255875B4C(v8);
  if ((v5 & 1) == (v22 & 1))
  {
    v17 = v21;
    goto LABEL_10;
  }

LABEL_23:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

void static ElementIdentifierTupleSet.joinOnTargets(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v37 = sub_255879DA8(MEMORY[0x277D84F90]);
  v38 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v42 = v4;
  v10 = v4 + 64;

  v11 = 0;
  v35 = v9;
  v36 = v3 + 64;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v39 = *(*(v38 + 48) + v14);
    v15 = *(*(v38 + 56) + v14);
    v16 = objc_allocWithZone(KGMutableElementIdentifierSet);
    v41 = v15;

    v17 = [v16 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v40 = swift_allocObject();
    *(v40 + 16) = v17;
    v18 = 1 << *(v42 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v42 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (!v20)
    {
      goto LABEL_16;
    }

    do
    {
      v23 = v22;
LABEL_19:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = (v23 << 9) | (8 * v24);
      v26 = *(*(v42 + 48) + v25);
      v27 = *(v41 + 16);
      v28 = *(*(*(v42 + 56) + v25) + 16);

      if ([v27 intersectsIdentifierSet_])
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = *(v40 + 16);
          [v33 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          v30 = swift_allocObject();
          *(v30 + 16) = v43;

          v29 = v30;
        }

        v40 = v29;
        v31 = *(v29 + 16);
        [v31 containsIdentifier_];
        [v31 addIdentifier_];
      }

      v22 = v23;
    }

    while (v20);
    while (1)
    {
LABEL_16:
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v10 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    if (([*(v40 + 16) isEmpty] & 1) == 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_255879810(v40, v39, isUniquelyReferenced_nonNull_native);
    }

    v9 = v35;
    v5 = v36;
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

      *a3 = v37;
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

LABEL_29:
  __break(1u);
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.contains(_:)(Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = *a1._1.rawValue, v4 = sub_255875B4C(*a1._0.rawValue), (v5 & 1) != 0))
  {
    return [*(*(*(v2 + 56) + 8 * v4) + 16) containsIdentifier_];
  }

  else
  {
    return 0;
  }
}

uint64_t ElementIdentifierTupleSet.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_255875B4C(*a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    result = swift_allocObject();
    *(result + 16) = v8;
    *a2 = result;
  }

  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.subtracting(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v3 = v1;
  v4 = *a1.targetsBySource._rawValue;
  *v3 = *v2;
  v6 = v4;

  ElementIdentifierTupleSet.subtract(_:)(&v6);
  return result;
}

uint64_t ElementIdentifierTupleSet.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formUnion(_:)(&v5);
}

Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier_optional __swiftcall ElementIdentifierTupleSet.remove(_:)(Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier a1)
{
  v4 = v2;
  v5 = v1;
  v6 = *a1._0.rawValue;
  v7 = *a1._1.rawValue;
  v8 = *v2;
  if (*(v8 + 16) && (v9 = sub_255875B4C(*a1._0.rawValue), (v10 & 1) != 0))
  {
    v11 = [*(*(*(v8 + 56) + 8 * v9) + 16) containsIdentifier_];
  }

  else
  {
    v11 = 0;
  }

  v34 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v4;
  v13 = v35;
  *v4 = 0x8000000000000000;
  v15 = sub_255875B4C(v6);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v14;
  if (v13[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:

      *v4 = v13;
      if ((v3 & 1) == 0)
      {
        v21 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        v13[(v15 >> 6) + 8] |= 1 << v15;
        *(v13[6] + 8 * v15) = v6;
        *(v13[7] + 8 * v15) = v22;
        v23 = v13[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          __break(1u);
          goto LABEL_29;
        }

        v13[2] = v25;
      }

      ElementIdentifierSet.remove(_:)(&v34);
      if (v13[2])
      {
        v26 = sub_255875B4C(v6);
        if (v27)
        {
          v28 = [*(*(v13[7] + 8 * v26) + 16) isEmpty];
          if (v28)
          {
            sub_255897064(v6, &v33);
          }

          if (v11)
          {
            v31 = v6;
          }

          else
          {
            v31 = 0;
          }

          if (v11)
          {
            v32 = v7;
          }

          else
          {
            v32 = 0;
          }

          *v5 = v31;
          *(v5 + 8) = v32;
          *(v5 + 16) = v11 ^ 1;
          goto LABEL_30;
        }
      }

      else
      {
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      sub_2558966B4();
      v13 = v35;
    }
  }

  sub_255895430(v18, isUniquelyReferenced_nonNull_native);
  v13 = v35;
  v19 = sub_255875B4C(v6);
  if ((v3 & 1) == (v20 & 1))
  {
    v15 = v19;
    goto LABEL_10;
  }

LABEL_29:
  v28 = sub_255965CA0();
  __break(1u);
LABEL_30:
  result.value._1.rawValue = v29;
  result.value._0.rawValue = v28;
  result.is_nil = v30;
  return result;
}

Swift::Void __swiftcall ElementIdentifierTupleSet.subtract(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = v1;
  v3 = *a1.targetsBySource._rawValue;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v41 = v3;

  v9 = 0;
  v39 = v2;
  v40 = v8;
  while (v7)
  {
LABEL_10:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
    v12 = *(*(v41 + 48) + v11);
    v13 = *(*(v41 + 56) + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v43 = *v2;
    *v2 = 0x8000000000000000;
    v17 = sub_255875B4C(v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_31;
    }

    v21 = v16;
    if (v15[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2558966B4();
        v15 = v43;
      }
    }

    else
    {
      sub_255895430(v20, isUniquelyReferenced_nonNull_native);
      v15 = v43;
      v22 = sub_255875B4C(v12);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_35;
      }

      v17 = v22;
    }

    *v2 = v15;
    if ((v21 & 1) == 0)
    {
      v24 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v15[(v17 >> 6) + 8] |= 1 << v17;
      *(v15[6] + 8 * v17) = v12;
      *(v15[7] + 8 * v17) = v25;
      v26 = v15[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_34;
      }

      v15[2] = v28;
    }

    v29 = v15[7];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = *(*(v29 + 8 * v17) + 16);
      [v30 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v31 = swift_allocObject();
      *(v31 + 16) = v42;
      *(v29 + 8 * v17) = v31;
    }

    [*(*(v29 + 8 * v17) + 16) subtractIdentifierSet_];
    if (!v15[2])
    {
      goto LABEL_32;
    }

    v32 = sub_255875B4C(v12);
    if ((v33 & 1) == 0)
    {
      goto LABEL_33;
    }

    v7 &= v7 - 1;
    if ([*(*(v15[7] + 8 * v32) + 16) isEmpty])
    {
      v34 = sub_255875B4C(v12);
      v2 = v39;
      if (v35)
      {
        v36 = v34;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v39;
        v44 = *v39;
        *v39 = 0x8000000000000000;
        if (!v37)
        {
          sub_2558966B4();
          v38 = v44;
        }

        sub_255879214(v36, v38);

        *v39 = v38;
        v8 = v40;
      }

      else
      {

        v8 = v40;
      }
    }

    else
    {

      v2 = v39;
      v8 = v40;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_255965CA0();
  __break(1u);
}

uint64_t ElementIdentifierTupleSet.subscript.setter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = [*(*a1 + 16) isEmpty];
  v6 = v5;
  if (*(*v2 + 16))
  {
    sub_255875B4C(v4);
    if (v6)
    {
      v8 = v7;

      if (v8)
      {
        sub_255897064(v4, &v11);
      }

      return result;
    }

LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    *v2 = 0x8000000000000000;
    result = sub_255879810(v3, v4, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }
}

Swift::Void __swiftcall ElementIdentifierTupleSet.removeTargets(for:)(KnowledgeGraphKit::ElementIdentifier a1)
{
  v2 = v1;
  v3 = sub_255875B4C(*a1.rawValue);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v7 = v8;
    }

    sub_255879214(v5, v7);

    *v2 = v7;
  }
}

uint64_t ElementIdentifierTupleSet.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  sub_255897194(v3, v1);
  return sub_255965D90();
}

uint64_t ElementIdentifierTupleSet.description.getter()
{
  sub_255889D18();

  return sub_2559652A0();
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.init(targetsBySource:)(Swift::OpaquePointer targetsBySource)
{
  v3 = v1;

  v3->_rawValue = targetsBySource._rawValue;
  return result;
}

uint64_t (*ElementIdentifierTupleSet.subscript.modify(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v5[4] = v2;
  v5[5] = v6;
  v5[6] = sub_255892250(v5, v6, sub_255893598);
  return sub_2558934E8;
}

void sub_2558934E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 48))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = **(v3 + 32);
    if (*(v4 + 16))
    {
      v5 = sub_255875B4C(*(v3 + 40));
      if (v6)
      {
        if ([*(*(*(v4 + 56) + 8 * v5) + 16) isEmpty])
        {
          sub_255897064(*(v3 + 40), &v7);
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:

  free(v3);
}

uint64_t sub_255893598@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t ElementIdentifierTupleSet.count.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v10 = v8;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(*(v1 + 56) + ((v10 << 9) | (8 * v11))) + 16) count];
    v12 = __OFADD__(v9, result);
    v9 += result;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v9;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2558936EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    v14 = *(*(v2 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_255875B4C(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(*(a2 + 56) + 8 * v16) + 16);
    v19 = v2;
    v20 = *(v14 + 16);

    v21 = v20;
    v2 = v19;
    LOBYTE(v18) = [v18 isEqualToElementIdentifierSet_];

    if ((v18 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255893874()
{
  v1 = *v0;
  sub_255965D50();
  sub_255897194(v3, v1);
  return sub_255965D90();
}

uint64_t sub_2558938C4(uint64_t a1)
{
  v2 = *v1;
  sub_255965D50();
  sub_255897194(v4, v2);
  return sub_255965D90();
}

uint64_t sub_255893914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_255879DA8(MEMORY[0x277D84F90]);
  v34 = *(a1 + 16);
  if (v34)
  {
    v33 = a2;
    v5 = 0;
    v6 = (a1 + 40);
    while (v5 < *(a1 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_255875B4C(v7);
      v12 = v4[2];
      v13 = (v10 & 1) == 0;
      v14 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        goto LABEL_27;
      }

      v15 = v10;
      if (v4[3] >= v14)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v14, isUniquelyReferenced_nonNull_native);
        v16 = sub_255875B4C(v7);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_31;
        }

        v11 = v16;
      }

      if ((v15 & 1) == 0)
      {
        v18 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        v4[(v11 >> 6) + 8] |= 1 << v11;
        *(v4[6] + 8 * v11) = v7;
        *(v4[7] + 8 * v11) = v19;
        v20 = v4[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_30;
        }

        v4[2] = v22;
      }

      v23 = v4[7];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(*(v23 + 8 * v11) + 16);
        [v24 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v25 = swift_allocObject();
        *(v25 + 16) = v35;
        *(v23 + 8 * v11) = v25;
      }

      v26 = *(*(v23 + 8 * v11) + 16);
      [v26 containsIdentifier_];
      [v26 addIdentifier_];

      if (!v4[2])
      {
        goto LABEL_28;
      }

      v27 = sub_255875B4C(v7);
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }

      if ([*(*(v4[7] + 8 * v27) + 16) isEmpty])
      {
        v29 = sub_255875B4C(v7);
        if (v30)
        {
          v31 = v29;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2558966B4();
          }

          sub_255879214(v31, v4);
        }
      }

      ++v5;
      v6 += 2;
      if (v34 == v5)
      {

        a2 = v33;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_255965CA0();
    __break(1u);
  }

  else
  {

LABEL_25:
    *a2 = v4;
  }

  return result;
}

uint64_t ElementIdentifierTupleSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v45 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v41 - v10;
  v12 = sub_255879DA8(MEMORY[0x277D84F90]);
  v42 = v6;
  v43 = a1;
  (*(v6 + 16))(v8, a1, a2);
  sub_255965430();
  v44 = a2;
  swift_getAssociatedConformanceWitness();
  sub_2559658D0();
  if (v49)
  {
LABEL_2:
    (*(v42 + 8))(v43, v44);
    result = (*(v41 + 8))(v11, AssociatedTypeWitness);
    *v45 = v12;
  }

  else
  {
    v14 = v47;
    v15 = v48;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v12;
      v18 = sub_255875B4C(v14);
      v19 = v12[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        break;
      }

      v22 = v17;
      if (v12[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_255875B4C(v14);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_27;
        }

        v18 = v23;
      }

      v12 = v47;

      if ((v22 & 1) == 0)
      {
        v25 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v12[(v18 >> 6) + 8] |= 1 << v18;
        *(v12[6] + 8 * v18) = v14;
        *(v12[7] + 8 * v18) = v26;
        v27 = v12[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        v12[2] = v29;
      }

      v30 = v12[7];
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = *(*(v30 + 8 * v18) + 16);
        [v31 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        v32 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        *(v30 + 8 * v18) = v33;
      }

      v34 = *(*(v30 + 8 * v18) + 16);
      [v34 containsIdentifier_];
      [v34 addIdentifier_];

      if (!v12[2])
      {
        goto LABEL_24;
      }

      v35 = sub_255875B4C(v14);
      if ((v36 & 1) == 0)
      {
        goto LABEL_25;
      }

      if ([*(*(v12[7] + 8 * v35) + 16) isEmpty])
      {
        v37 = sub_255875B4C(v14);
        if (v38)
        {
          v39 = v37;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v47 = v12;
          if (!v40)
          {
            sub_2558966B4();
            v12 = v47;
          }

          sub_255879214(v39, v12);
        }
      }

      sub_2559658D0();
      v14 = v47;
      v15 = v48;
      if (v49)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_255965CA0();
    __break(1u);
  }

  return result;
}

uint64_t ElementIdentifierTupleSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_255893914(a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_25589415C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_255893914(a1, &v4);
  *a2 = v4;
  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.intersection(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v3 = *a1.targetsBySource._rawValue;
  *v1 = *v2;
  v5 = v3;
  ElementIdentifierTupleSet.formIntersection(_:)(&v5);
  return result;
}

Swift::Void __swiftcall ElementIdentifierTupleSet.formIntersection(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = v1;
  v3 = *a1.targetsBySource._rawValue;
  v4 = *v1;
  if (*(*a1.targetsBySource._rawValue + 16) >= *(*v1 + 16))
  {

    sub_255879018(v5, v50);
    v6 = v50[0];
    v7 = *(v50[0] + 16);

    v8 = [v7 startIndex];
    v10 = v9;
    if (v8 == [*(v6 + 16) endIndex])
    {
LABEL_4:
    }

    else
    {
      v11 = v8;
      v47 = v2;
      while (1)
      {
        v48 = [*(v6 + 16) indexAfterIndex_];
        v14 = v13;
        if (*(v3 + 16) && (v15 = sub_255875B4C(v8), (v16 & 1) != 0))
        {
          v17 = *(*(v3 + 56) + 8 * v15);
        }

        else
        {
          v18 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v17 = swift_allocObject();
          *(v17 + 16) = v18;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = *v2;
        v20 = v50[0];
        *v2 = 0x8000000000000000;
        v22 = sub_255875B4C(v8);
        v23 = v20[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          break;
        }

        v26 = v21;
        if (v20[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
            v20 = v50[0];
          }
        }

        else
        {
          sub_255895430(v25, isUniquelyReferenced_nonNull_native);
          v20 = v50[0];
          v27 = sub_255875B4C(v8);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }

          v22 = v27;
        }

        *v2 = v20;
        if ((v26 & 1) == 0)
        {
          v29 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v30 = swift_allocObject();
          *(v30 + 16) = v29;
          v20[(v22 >> 6) + 8] |= 1 << v22;
          *(v20[6] + 8 * v22) = v8;
          *(v20[7] + 8 * v22) = v30;
          v31 = v20[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_32;
          }

          v20[2] = v33;
        }

        v34 = v14;
        v35 = v6;
        v36 = v3;
        v37 = v20[7];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(*(v37 + 8 * v22) + 16);
          [v38 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v39 = swift_allocObject();
          *(v39 + 16) = v49;
          *(v37 + 8 * v22) = v39;
        }

        [*(*(v37 + 8 * v22) + 16) intersectWithIdentifierSet_];

        if (!v20[2])
        {
          goto LABEL_30;
        }

        v40 = sub_255875B4C(v8);
        if ((v41 & 1) == 0)
        {
          goto LABEL_31;
        }

        v3 = v36;
        v6 = v35;
        v10 = v34;
        v2 = v47;
        if ([*(*(v20[7] + 8 * v40) + 16) isEmpty])
        {
          v42 = sub_255875B4C(v8);
          if (v43)
          {
            v44 = v42;
            v45 = swift_isUniquelyReferenced_nonNull_native();
            v46 = *v47;
            v50[0] = *v47;
            *v47 = 0x8000000000000000;
            if (!v45)
            {
              sub_2558966B4();
              v46 = v50[0];
            }

            sub_255879214(v44, v46);

            *v47 = v46;
          }
        }

        v12 = [*(v35 + 16) endIndex];
        v11 = v48;
        v8 = v48;
        if (v48 == v12)
        {
          goto LABEL_4;
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
      sub_255965CA0();
      __break(1u);
    }
  }

  else
  {
    v50[0] = *a1.targetsBySource._rawValue;

    v49 = v4;
    ElementIdentifierTupleSet.formIntersection(_:)(&v49);

    *v1 = v50[0];
  }
}

uint64_t ElementIdentifierTupleSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formSymmetricDifference(_:)(&v5);
}

uint64_t sub_255894684(uint64_t *a1, uint64_t (*a2)(uint64_t *), SEL *a3)
{
  v4 = v3;
  v5 = *a1;
  if (*(*v3 + 16) >= *(v5 + 16))
  {
    v7 = 0;
    v8 = v5 + 64;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v42 = v3;
    v43 = v12;
    v44 = v5;
    while (v11)
    {
LABEL_13:
      v14 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v15 = *(*(v5 + 48) + v14);
      v16 = *(*(v5 + 56) + v14);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v4;
      v18 = v47;
      *v4 = 0x8000000000000000;
      v20 = sub_255875B4C(v15);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_34;
      }

      v24 = v19;
      if (v18[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v18 = v47;
        }
      }

      else
      {
        sub_255895430(v23, isUniquelyReferenced_nonNull_native);
        v18 = v47;
        v25 = sub_255875B4C(v15);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_38;
        }

        v20 = v25;
      }

      *v4 = v18;
      if ((v24 & 1) == 0)
      {
        v27 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v18[(v20 >> 6) + 8] |= 1 << v20;
        *(v18[6] + 8 * v20) = v15;
        *(v18[7] + 8 * v20) = v28;
        v29 = v18[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_37;
        }

        v18[2] = v31;
      }

      v32 = v18[7];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(*(v32 + 8 * v20) + 16);
        [v33 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v34 = swift_allocObject();
        *(v34 + 16) = v46;
        *(v32 + 8 * v20) = v34;
      }

      [*(*(v32 + 8 * v20) + 16) *a3];

      if (!v18[2])
      {
        goto LABEL_35;
      }

      v35 = sub_255875B4C(v15);
      if ((v36 & 1) == 0)
      {
        goto LABEL_36;
      }

      v11 &= v11 - 1;
      if ([*(*(v18[7] + 8 * v35) + 16) isEmpty])
      {
        v37 = sub_255875B4C(v15);
        v4 = v42;
        if (v38)
        {
          v39 = v37;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v41 = *v42;
          v47 = *v42;
          *v42 = 0x8000000000000000;
          if (!v40)
          {
            sub_2558966B4();
            v41 = v47;
          }

          sub_255879214(v39, v41);

          *v42 = v41;
        }

        else
        {
        }
      }

      else
      {

        v4 = v42;
      }

      v12 = v43;
      v5 = v44;
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
      }

      v11 = *(v8 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_255965CA0();
    __break(1u);
  }

  else
  {
    v46 = *v3;
    v47 = v5;
    result = a2(&v46);
    *v3 = v47;
  }

  return result;
}

id ElementIdentifierTupleSet.update(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = *a1;
  v8 = *a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_255875B4C(*a1), (v11 & 1) != 0))
  {
    v12 = [*(*(*(v9 + 56) + 8 * v10) + 16) containsIdentifier_];
  }

  else
  {
    v12 = 0;
  }

  v33 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v5;
  v14 = v34;
  *v5 = 0x8000000000000000;
  v16 = sub_255875B4C(v7);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = v15;
  if (v14[3] >= v19)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:

      *v5 = v14;
      if ((v4 & 1) == 0)
      {
        v22 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v14[(v16 >> 6) + 8] |= 1 << v16;
        *(v14[6] + 8 * v16) = v7;
        *(v14[7] + 8 * v16) = v23;
        v24 = v14[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          __break(1u);
          goto LABEL_29;
        }

        v14[2] = v26;
      }

      ElementIdentifierSet.insert(_:)(&v34, &v33);
      if (v14[2])
      {
        v27 = sub_255875B4C(v7);
        if (v28)
        {
          result = [*(*(v14[7] + 8 * v27) + 16) isEmpty];
          if (result)
          {
            sub_255897064(v7, &v32);
          }

          if (v12)
          {
            v30 = 0;
          }

          else
          {
            v30 = v7;
          }

          if (v12)
          {
            v31 = 0;
          }

          else
          {
            v31 = v8;
          }

          *a3 = v30;
          *(a3 + 8) = v31;
          *(a3 + 16) = v12;
          return result;
        }
      }

      else
      {
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      sub_2558966B4();
      v14 = v34;
    }
  }

  sub_255895430(v19, isUniquelyReferenced_nonNull_native);
  v14 = v34;
  v20 = sub_255875B4C(v7);
  if ((v4 & 1) == (v21 & 1))
  {
    v16 = v20;
    goto LABEL_10;
  }

LABEL_29:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.intersects(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*a1.targetsBySource._rawValue + 16);
  if (v2 >= v3)
  {
    v4 = *a1.targetsBySource._rawValue;
  }

  else
  {
    v4 = *v1;
  }

  if (v2 >= v3)
  {
    v5 = *v1;
  }

  else
  {
    v5 = *a1.targetsBySource._rawValue;
  }

  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_15:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(*(v4 + 56) + 8 * v13);
    if (*(v5 + 16) && (v15 = sub_255875B4C(*(*(v4 + 48) + 8 * v13)), (v16 & 1) != 0))
    {
      v17 = *(*(*(v5 + 56) + 8 * v15) + 16);
    }

    else
    {
      v18 = objc_allocWithZone(KGMutableElementIdentifierSet);

      v17 = [v18 init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      *(swift_allocObject() + 16) = v17;
    }

    v8 &= v8 - 1;
    v19 = [v17 intersectsIdentifierSet_];

    if (v19)
    {

      return 1;
    }
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

      return 0;
    }

    v8 = *(v4 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.isDisjoint(with:)(KnowledgeGraphKit::ElementIdentifierTupleSet with)
{
  v2 = *v1;
  v4[0] = *with.targetsBySource._rawValue;
  v4[1] = v2;
  return !ElementIdentifierTupleSet.intersects(_:)(v4);
}

void *sub_255894EB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255879DA8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_255894EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formUnion(_:)(&v5);
}

void sub_255894F30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v4 = v3;
  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
}

uint64_t sub_255894F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formSymmetricDifference(_:)(&v5);
}

uint64_t sub_255894FB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = a2[1];
  v5 = v2;
  return ElementIdentifierTupleSet.insert(_:)(a1, a1 + 1, &v5, &v4) & 1;
}

id sub_255894FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = a1[1];
  v5 = v2;
  return ElementIdentifierTupleSet.update(with:)(&v5, &v4, a2);
}

uint64_t sub_25589502C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  ElementIdentifierTupleSet.subtract(_:)(&v6);
}

uint64_t sub_255895094(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;

  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
  LOBYTE(v2) = sub_2558936EC(v5, v2);

  return v2 & 1;
}

BOOL sub_2558950F8(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return !ElementIdentifierTupleSet.intersects(_:)(v4);
}

uint64_t sub_25589513C(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v5 = v2;

  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
  LOBYTE(v2) = sub_2558936EC(v5, v2);

  return v2 & 1;
}

uint64_t sub_2558951A0()
{
  v2 = *v1;
  v3 = sub_255879DA8(MEMORY[0x277D84F90]);
  LOBYTE(v2) = sub_2558936EC(v2, v3);

  return v2 & 1;
}

uint64_t sub_2558951F4()
{
  sub_255889D18();

  return sub_2559652A0();
}

uint64_t ElementIdentifierTupleSet.sparseMatrix<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;

  sub_255879018(v12, &v22);
  v13 = sub_2558972F8([*(v22 + 16) count], v22);

  sub_255879018(v14, &v22);
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = v11;
  v21[6] = a1;
  v16 = type metadata accessor for SparseArray(0, a2, a3, v15);
  v17 = sub_255897438();
  v19 = sub_25588EF3C(sub_255897410, v21, &type metadata for ElementIdentifierSet, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);

  swift_getWitnessTable();
  return SparseArray.init(values:offsets:)(v19, v13, a5);
}

uint64_t *sub_25589538C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_255875B4C(*result);
    if (v11)
    {

      ElementIdentifierSet.sparseArray<A>(of:)(a3, a4, a5, x8_0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255895430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v30 = v4;
  result = sub_255965B80();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_255965D50();
      MEMORY[0x259C43B00](v20);
      result = sub_255965D90();
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
      *(*(v7 + 48) + 8 * v15) = v20;
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

uint64_t sub_2558956C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66E0, &qword_25596F040);
  result = sub_255965B80();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_255965D50();
      MEMORY[0x259C43B00](v20);
      result = sub_255965D90();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_255895940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2559651D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66C8, &qword_25596F020);
  v44 = v4;
  result = sub_255965B80();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_25587AFF4();
      result = sub_255965310();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_255895CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
  v34 = v4;
  result = sub_255965B80();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255895FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D8, &qword_25596F038);
  v33 = v4;
  result = sub_255965B80();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255896244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D0, &qword_25596F028);
  v33 = v4;
  result = sub_255965B80();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25587B098(v24, v34);
      }

      else
      {
        sub_25588BB90(v24, v34);
      }

      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25587B098(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_2558964FC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_255896540(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2559651D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_255896600(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_255896648(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25587B098(a4, (a5[7] + 32 * a1));
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

void *sub_2558966B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v2 = *v0;
  v3 = sub_255965B70();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_255896810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66E0, &qword_25596F040);
  v2 = *v0;
  v3 = sub_255965B70();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_25589695C()
{
  v1 = v0;
  v35 = sub_2559651D0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66C8, &qword_25596F020);
  v3 = *v0;
  v4 = sub_255965B70();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v26 = *v24;
        v25 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v26;
        v28[1] = v25;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_255896BE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
  v2 = *v0;
  v3 = sub_255965B70();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_255896D58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D8, &qword_25596F038);
  v2 = *v0;
  v3 = sub_255965B70();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_255896EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D0, &qword_25596F028);
  v2 = *v0;
  v3 = sub_255965B70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_25588BB90(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25587B098(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_255897064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  result = sub_255875B4C(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v9 = v10;
    }

    *a2 = *(*(v9 + 56) + 8 * v7);
    result = sub_255879214(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double sub_2558970F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_255875C80(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255896EC0();
      v10 = v12;
    }

    sub_25587B098((*(v10 + 56) + 32 * v8), a3);
    sub_255879660(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_255897194(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 9) | (8 * __clz(__rbit64(v6)));
      v13 = *(*(a2 + 48) + v12);
      v14 = *(*(a2 + 56) + v12);

      if (!v14)
      {
        break;
      }

      v6 &= v6 - 1;
      MEMORY[0x259C43B00](v13);
      v15 = *(v14 + 16);
      MEMORY[0x259C43B00]([v15 hash]);

      result = sub_255965D90();
      v9 ^= result;
      v10 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x259C43B00](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2558972F8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_255965530();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = *(a2 + 16);

    v6 = [v5 startIndex];
    v8 = v7;
    v9 = 0;
    while (v6 != [*(a2 + 16) endIndex])
    {
      result = [*(a2 + 16) indexAfterIndex_];
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_14;
      }

      v8 = v10;
      *(v4 + 8 * v9 + 32) = v6;
      v6 = result;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    if (v9 > v3)
    {
      goto LABEL_15;
    }

    *(v4 + 16) = v9;
    return v4;
  }

  return result;
}

unint64_t sub_255897438()
{
  result = qword_27F7D66B0;
  if (!qword_27F7D66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66B0);
  }

  return result;
}

unint64_t sub_25589748C()
{
  result = qword_27F7D66B8;
  if (!qword_27F7D66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66B8);
  }

  return result;
}

unint64_t sub_2558974E4()
{
  result = qword_27F7D66C0;
  if (!qword_27F7D66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66C0);
  }

  return result;
}

__C::KGElementIdentifier __swiftcall KGElementIdentifier.advanced(by:)(__C::KGElementIdentifier by)
{
  if ((by.rawValue & 0x8000000000000000) == 0)
  {
    v2 = __CFADD__(v1, by.rawValue);
    by.rawValue += v1;
    if (!v2)
    {
      return by;
    }

    __break(1u);
  }

  v2 = v1 >= -by.rawValue;
  by.rawValue += v1;
  if (!v2)
  {
    __break(1u);
  }

  return by;
}

Swift::Int __swiftcall KGElementIdentifier.distance(to:)(__C::KGElementIdentifier to)
{
  v3 = to.rawValue >= v1;
  result = to.rawValue - v1;
  if (!v3)
  {
    v5 = v1 - to.rawValue;
    if (v5 >= 0)
    {
      return -v5;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t *sub_2558975C4@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (*result >= *v2)
  {
    if ((*result - *v2) >= 0)
    {
      *a2 = *result - *v2;
      return result;
    }
  }

  else
  {
    if ((v4 - v3) >= 0)
    {
      *a2 = v3 - v4;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_2558975FC@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v3 += v4;
    if (!v5)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = -v3;
  v5 = v4 >= v6;
  v3 = v4 - v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *a2 = v3;
  return result;
}

unint64_t *sub_25589762C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    v8 = __CFADD__(v6, v7);
    v6 += v7;
    if (!v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = -v7;
  v8 = v6 >= v9;
  v6 -= v9;
  if (!v8)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *result = v6;
  return 0;
}

unint64_t *sub_255897664(unint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if ((*a2 - *result) >= 0)
    {
      return (v4 > 0);
    }
  }

  else
  {
    if ((v2 - v3) >= 0)
    {
      v4 = v3 - v2;
      return (v4 > 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25589769C(uint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    if ((*result - *a2) >= 0)
    {
      return (v4 < 1);
    }
  }

  else
  {
    if ((v3 - v2) >= 0)
    {
      v4 = v2 - v3;
      return (v4 < 1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_2558976D4(unint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if ((*a2 - *result) >= 0)
    {
      return (v4 < 1);
    }
  }

  else
  {
    if ((v2 - v3) >= 0)
    {
      v4 = v3 - v2;
      return (v4 < 1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25589770C(uint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    if ((*result - *a2) >= 0)
    {
      return (v4 > 0);
    }
  }

  else
  {
    if ((v3 - v2) >= 0)
    {
      v4 = v2 - v3;
      return (v4 > 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255897784()
{
  result = qword_2810B71C0;
  if (!qword_2810B71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B71C0);
  }

  return result;
}

uint64_t sub_25589780C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KGElementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2558978A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25587B098(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_255879C58(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2558988BC(a1, &qword_27F7D60F0, &qword_25596E410);
    sub_2558970F0(a2, a3, v9);

    return sub_2558988BC(v9, &qword_27F7D60F0, &qword_25596E410);
  }

  return result;
}

uint64_t FilterProperties.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (!v3)
  {

    v52 = a2;
    v6 = MEMORY[0x277D84F98];
LABEL_31:
    *v52 = v6;
    return result;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(v2 + 16))
  {
    sub_255898194(v5, v68);
    sub_255872164(v68, v65);
    sub_255872164(v69, v63);
    sub_25588B81C(v63, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66F8, &qword_25596F168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6700, &qword_25596F170);
    if (swift_dynamicCast())
    {
      sub_255872164(v57, &v60);
      v9 = v66;
      v10 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v11 = (*(v10 + 8))(v9, v10);
      v13 = v12;
      v14 = v61;
      v15 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, v61);
      (*(v15 + 8))(v59, v14, v15);
      sub_25587B098(v59, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v17 = sub_255875C80(v11, v13);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_33;
      }

      v23 = v18;
      if (v6[3] >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v50 = v17;
        sub_255896EC0();
        v17 = v50;
        if (v23)
        {
          goto LABEL_3;
        }

LABEL_18:
        v6 = v56;
        v56[(v17 >> 6) + 8] |= 1 << v17;
        v43 = (v56[6] + 16 * v17);
        *v43 = v11;
        v43[1] = v13;
        sub_25587B098(v57, (v56[7] + 32 * v17));
        v44 = v56[2];
        v21 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v21)
        {
          goto LABEL_35;
        }

        v56[2] = v45;
      }

      else
      {
        sub_255896244(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_255875C80(v11, v13);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_37;
        }

LABEL_17:
        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_3:
        v7 = v17;

        v6 = v56;
        v8 = (v56[7] + 32 * v7);
        __swift_destroy_boxed_opaque_existential_0(v8);
        sub_25587B098(v57, v8);
      }

      __swift_destroy_boxed_opaque_existential_0(&v60);
      goto LABEL_5;
    }

    v25 = v3;
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_2558988BC(v57, &qword_27F7D6708, &qword_25596F178);
    v26 = v66;
    v27 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    v31 = v64;
    v32 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v61 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v60);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_0Tm, v32, v31);
    sub_25587B098(&v60, v59);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v57[0] = v6;
    v36 = sub_255875C80(v28, v30);
    v37 = v6[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_34;
    }

    v40 = v35;
    if (v6[3] >= v39)
    {
      if ((v34 & 1) == 0)
      {
        sub_255896EC0();
      }
    }

    else
    {
      sub_255896244(v39, v34);
      v41 = sub_255875C80(v28, v30);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_37;
      }

      v36 = v41;
    }

    v3 = v25;
    v2 = a1;
    if (v40)
    {

      v6 = *&v57[0];
      v46 = (*(*&v57[0] + 56) + 32 * v36);
      __swift_destroy_boxed_opaque_existential_0(v46);
      sub_25587B098(v59, v46);
    }

    else
    {
      v6 = *&v57[0];
      *(*&v57[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v47 = (v6[6] + 16 * v36);
      *v47 = v28;
      v47[1] = v30;
      sub_25587B098(v59, (v6[7] + 32 * v36));
      v48 = v6[2];
      v21 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v21)
      {
        goto LABEL_36;
      }

      v6[2] = v49;
    }

LABEL_5:
    ++v4;
    __swift_destroy_boxed_opaque_existential_0(v63);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v5 += 80;
    if (v3 == v4)
    {

      v52 = a2;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_255965CA0();
  __break(1u);
  return result;
}