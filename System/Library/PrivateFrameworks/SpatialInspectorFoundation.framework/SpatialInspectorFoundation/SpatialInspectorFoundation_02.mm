uint64_t InspectorComponentRepresentation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorComponentRepresentation.init(from:)(a1);
  return v2;
}

uint64_t InspectorComponentRepresentation.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46C8, &qword_26B2C03C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InspectorProperty();
  sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v10, (v3 + 64));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B76BC();
  sub_26B2BC248();
  if (v2)
  {

    type metadata accessor for InspectorComponentRepresentation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    sub_26B2B7B7C();
    sub_26B2BBFC8();
    v11 = v16;
    *(v3 + 16) = v15;
    *(v3 + 24) = v11;
    LOBYTE(v15) = 1;
    *(v3 + 32) = sub_26B2BBF88();
    *(v3 + 40) = v12;
    LOBYTE(v15) = 2;
    *(v3 + 48) = sub_26B2BBF98() & 1;
    LOBYTE(v17) = 3;
    sub_26B2944A8();
    sub_26B2BBFC8();
    *(v3 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    LOBYTE(v15) = 4;
    sub_26B2B8198(&qword_2803F44E8, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BBFC8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    swift_beginAccess();
    *(v3 + 64) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_26B2B7B7C()
{
  result = qword_2803F46D0;
  if (!qword_2803F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46D0);
  }

  return result;
}

uint64_t sub_26B2B7BD0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double InspectorComponentRepresentation.hash(into:)(uint64_t a1)
{
  sub_26B2BB9E8();
  sub_26B2BB9E8();
  v4 = v1[7];
  sub_26B2A58A8();
  sub_26B2BB8A8();
  v2 = sub_26B2BC208();
  (*(*v1 + 120))(&v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
  sub_26B2B8198(&qword_2803F41D8, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BB8A8();

  return result;
}

uint64_t InspectorComponentRepresentation.hashValue.getter()
{
  sub_26B2BC1E8();
  InspectorComponentRepresentation.hash(into:)(v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2B7DB0()
{
  sub_26B2BC1E8();
  InspectorComponentRepresentation.hash(into:)(v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2B7E18(uint64_t a1)
{
  sub_26B2BC1E8();
  InspectorComponentRepresentation.hash(into:)(v2);
  return sub_26B2BC238();
}

uint64_t sub_26B2B7E58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449797469746E65 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t _s26SpatialInspectorFoundation0B23ComponentRepresentationC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_26B2BC138()) && (*(a1 + 32) == *(a2 + 32) ? (v5 = *(a1 + 40) == *(a2 + 40)) : (v5 = 0), (v5 || (sub_26B2BC138()) && (*&v14 = *(a1 + 56), *&v13 = *(a2 + 56), static EntityID.== infix(_:_:)(&v14, &v13)) && *(a1 + 48) == *(a2 + 48)))
  {
    v8 = (*(*a1 + 120))(&v14);
    v13 = v14;
    (*(*a2 + 120))(&v12, v8);
    v11 = v12;
    v9 = type metadata accessor for InspectorProperty();
    v10 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
    v6 = static InspectorCollection.== infix(_:_:)(&v13, &v11, v9, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_26B2B8198(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F41D0, &unk_26B2BFF80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2B81E8(void *a1)
{
  a1[1] = sub_26B2B7B7C();
  a1[2] = sub_26B2B7710();
  a1[3] = sub_26B2B8228();
  result = sub_26B2B827C();
  a1[4] = result;
  return result;
}

unint64_t sub_26B2B8228()
{
  result = qword_2803F46D8;
  if (!qword_2803F46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46D8);
  }

  return result;
}

unint64_t sub_26B2B827C()
{
  result = qword_2803F46E0;
  if (!qword_2803F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46E0);
  }

  return result;
}

unint64_t sub_26B2B82D4()
{
  result = qword_2803F46E8;
  if (!qword_2803F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46E8);
  }

  return result;
}

unint64_t sub_26B2B832C()
{
  result = qword_2803F46F0;
  if (!qword_2803F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46F0);
  }

  return result;
}

uint64_t sub_26B2B8380(void *a1, uint64_t a2)
{
  a1[1] = sub_26B2B84A0(&qword_2803F46F8, a2, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  a1[2] = sub_26B2B84A0(&qword_2803F4700, v3, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  a1[3] = sub_26B2B84A0(&qword_2803F4708, v4, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  result = sub_26B2B84A0(&qword_2803F4710, v5, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  a1[4] = result;
  return result;
}

uint64_t sub_26B2B84A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_26B2B8638()
{
  result = qword_2803FB7A0[0];
  if (!qword_2803FB7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB7A0);
  }

  return result;
}

unint64_t sub_26B2B8690()
{
  result = qword_2803FB9B0[0];
  if (!qword_2803FB9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB9B0);
  }

  return result;
}

unint64_t sub_26B2B86E8()
{
  result = qword_2803FBAC0;
  if (!qword_2803FBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FBAC0);
  }

  return result;
}

unint64_t sub_26B2B8740()
{
  result = qword_2803FBAC8[0];
  if (!qword_2803FBAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FBAC8);
  }

  return result;
}

unint64_t sub_26B2B8798()
{
  result = qword_2803FBB50;
  if (!qword_2803FBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FBB50);
  }

  return result;
}

unint64_t sub_26B2B87F0()
{
  result = qword_2803FBB58[0];
  if (!qword_2803FBB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FBB58);
  }

  return result;
}

uint64_t EntityIDMap.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_26B2B9844(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_26B2B9844(v1);
  return v0;
}

uint64_t EntityIDMap.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_26B2B9844(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_26B2B9844(v1);
  return v0;
}

uint64_t sub_26B2B88E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

double sub_26B2B8930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_26B2B89C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_26B2B8A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

double sub_26B2B8A5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

double sub_26B2B8AF4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_26B2B8B3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_26B2B95D4(v3, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_26B2B95D4(v4, v3, v6);
  *(v2 + 24) = v9;
  return swift_endAccess();
}

double sub_26B2B8C18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*v2 + 128))();
  if (*(v5 + 16) && (v6 = sub_26B2B9080(v4), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v8;

  return result;
}

double sub_26B2B8CB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*v2 + 104))();
  if (*(v5 + 16) && (v6 = sub_26B2B9080(v4), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v8;

  return result;
}

uint64_t sub_26B2B8D50(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (*(v4 + 16) && (v5 = sub_26B2B9080(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    swift_beginAccess();
    v8 = sub_26B2B9080(v7);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26B2B96F8();
      }

      sub_26B2B9438(v10, v12);
      *(v2 + 16) = v12;
    }

    swift_endAccess();
  }

  else
  {
  }

  swift_beginAccess();
  v13 = sub_26B2B9080(v3);
  if (v14)
  {
    v15 = v13;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!v16)
    {
      sub_26B2B96F8();
    }

    sub_26B2B9438(v15, v17);
    *(v2 + 24) = v17;
  }

  return swift_endAccess();
}

uint64_t sub_26B2B8EB4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (*(v4 + 16) && (v5 = sub_26B2B9080(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    swift_beginAccess();
    v8 = sub_26B2B9080(v7);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26B2B96F8();
      }

      sub_26B2B9438(v10, v12);
      *(v2 + 24) = v12;
    }

    swift_endAccess();
  }

  else
  {
  }

  swift_beginAccess();
  v13 = sub_26B2B9080(v3);
  if (v14)
  {
    v15 = v13;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    if (!v16)
    {
      sub_26B2B96F8();
    }

    sub_26B2B9438(v15, v17);
    *(v2 + 16) = v17;
  }

  return swift_endAccess();
}

uint64_t EntityIDMap.deinit()
{

  return v0;
}

uint64_t EntityIDMap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26B2B9080(uint64_t a1)
{
  sub_26B2A58A8();
  v1 = sub_26B2BB898();
  return sub_26B2B90E8(a1, v1);
}

unint64_t sub_26B2B90E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B2A5954();
    do
    {
      if (sub_26B2BB938())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26B2B91B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
  result = sub_26B2BBEE8();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v4;
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
      v30 = *(*(v5 + 48) + 8 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      sub_26B2A58A8();
      result = sub_26B2BB898();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
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

    if ((v29 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_26B2B9438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B2BBDB8() + 1) & ~v5;
    sub_26B2A58A8();
    do
    {
      result = sub_26B2BB898();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v9 >= v8 || v3 >= v9)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26B2B95D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26B2B9080(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_26B2B96F8();
    result = v17;
    goto LABEL_8;
  }

  sub_26B2B91B0(v14, a3 & 1);
  result = sub_26B2B9080(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_26B2BC198();
  __break(1u);
  return result;
}

void *sub_26B2B96F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
  v2 = *v0;
  v3 = sub_26B2BBED8();
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

unint64_t sub_26B2B9844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
    v3 = sub_26B2BBEF8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26B2B9080(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL sub_26B2B9A7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B2BBF18();

  return v2 != 0;
}

uint64_t sub_26B2B9B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B2B9B74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B2B9BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B2B9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26B2B9CC0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B2B9A7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_26B2B9D10@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B2B9A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B2B9D3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B2A4554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26B2B9D6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B2B9DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_26B2B9E20(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_26B2BB1EC(v4, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  return v6;
}

uint64_t InspectorCollection.isEmpty.getter(uint64_t a1)
{
  sub_26B2BBC28();
  swift_getWitnessTable();
  return sub_26B2BBC88() & 1;
}

void InspectorCollection.init()(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = sub_26B2BBBB8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_26B2BB1EC(v6, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  a3[1] = v8;
}

double InspectorCollection.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_26B2BB1EC(v9, AssociatedTypeWitness, a2, AssociatedConformanceWitness);

  *a4 = a1;
  a4[1] = v11;
  v13 = type metadata accessor for InspectorCollection(0, a2, a3, v12);
  return sub_26B2BA154(v13);
}

double sub_26B2BA154(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_26B2BB848();
  sub_26B2BB838();
  sub_26B2BBC28();

  swift_getWitnessTable();
  sub_26B2BBB48();

  return result;
}

double InspectorCollection.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v32 = a1;
  v28 = a4;
  type metadata accessor for InspectorCollection.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v29 = sub_26B2BC018();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v26 - v8;
  v34 = sub_26B2BBBB8();
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v11 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = AssociatedTypeWitness;
  v14 = v32;
  v15 = sub_26B2BB1EC(v11, v13, a2, AssociatedConformanceWitness);

  v35 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v16 = v31;
  sub_26B2BC248();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v18 = v27;
    v17 = v28;
    sub_26B2BBC28();
    v19 = v30;
    v33 = *(v30 + 8);
    swift_getWitnessTable();
    v20 = v29;
    sub_26B2BBFC8();

    v34 = v36;
    v23 = type metadata accessor for InspectorCollection(0, a2, v19, v22);
    v24 = sub_26B2BA154(v23);
    (*(v18 + 8))(v9, v20, v24);
    v25 = v35;
    *v17 = v34;
    v17[1] = v25;

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  return result;
}

uint64_t InspectorCollection.append(_:keepExisting:)(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v20) = a2;
  v19 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - v12;
  v24 = a1;
  sub_26B2BBE48();
  v21 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_26B2BB878();
  if (v24)
  {
    if (v20)
    {
      (*(v6 + 8))(v13, AssociatedTypeWitness);
      return swift_unknownObjectRelease();
    }

    v20 = AssociatedConformanceWitness;
    v16 = *v21;
    v22 = v24;
    v23 = v16;
    v17 = sub_26B2BBC28();
    swift_getWitnessTable();
    v19 = v17;
    sub_26B2BBC98();
    if (v25 != 1)
    {
      sub_26B2BBBF8();
      swift_unknownObjectRelease();
    }

    (*(v6 + 16))(v10, v13, AssociatedTypeWitness);
    v24 = 0;
    sub_26B2BB848();
    sub_26B2BB888();
    swift_unknownObjectRelease();
  }

  v24 = a1;
  sub_26B2BBC28();
  swift_unknownObjectRetain();
  sub_26B2BBBE8();
  (*(v6 + 16))(v10, v13, AssociatedTypeWitness);
  v24 = a1;
  sub_26B2BB848();
  swift_unknownObjectRetain();
  sub_26B2BB888();
  return (*(v6 + 8))(v13, AssociatedTypeWitness);
}

double InspectorCollection.merge(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  if (sub_26B2BBBD8())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_26B2BBBC8();
      sub_26B2BBBA8();
      if (v6)
      {
        v7 = *(v3 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = __OFADD__(v5, 1);
        v9 = v4 - 3;
        if (v8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_26B2BBE58();
        v8 = __OFADD__(v5, 1);
        v9 = v4 - 3;
        if (v8)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      InspectorCollection.append(_:keepExisting:)(v7, 1, a2);
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v9 != sub_26B2BBBD8());
  }

  return result;
}

uint64_t sub_26B2BA9C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  sub_26B2BBE48();
  swift_getAssociatedConformanceWitness();
  sub_26B2BB848();
  swift_unknownObjectRetain();
  return sub_26B2BB888();
}

uint64_t static InspectorCollection.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = a2[1];
  v7 = *(*(a4 + 24) + 8);
  if ((sub_26B2BBC48() & 1) == 0)
  {
    return 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x2821FB928](v5, v6, AssociatedTypeWitness, a3, AssociatedConformanceWitness, v7);
}

uint64_t InspectorCollection.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v14 = *(a2 + 16);
  v15 = v6;
  type metadata accessor for InspectorCollection.CodingKeys(255, v14, v6, a4);
  swift_getWitnessTable();
  v7 = sub_26B2BC0F8();
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  v11 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_26B2BC258();
  v18 = v11;
  sub_26B2BBC28();
  v17 = *(v15 + 16);
  swift_getWitnessTable();
  sub_26B2BC0B8();

  return (*(v16 + 8))(v10, v7);
}

uint64_t InspectorCollection.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 24);
  sub_26B2BBC38();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x2821FB920](a1, v4, AssociatedTypeWitness, v5, AssociatedConformanceWitness, v6);
}

uint64_t InspectorCollection.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_26B2BC1E8();
  InspectorCollection.hash(into:)(v4, a1);
  return sub_26B2BC238();
}

void sub_26B2BAEDC(uint64_t *a1@<X8>)
{
  v2 = sub_26B2BB508();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_26B2BAF3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26B2BB5F0(v2, a1, a2);

  return v3;
}

uint64_t sub_26B2BAFB8(uint64_t a1, uint64_t a2)
{
  sub_26B2BC1E8();
  InspectorCollection.hash(into:)(v4, a2);
  return sub_26B2BC238();
}

unint64_t sub_26B2BB008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2BB898();

  return sub_26B2BB064(a1, v6, a2, a3);
}

unint64_t sub_26B2BB064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1, a2);
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
      v19 = sub_26B2BB938();
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

unint64_t sub_26B2BB1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_26B2BBBD8())
  {
    sub_26B2BBF08();
    v14 = sub_26B2BBEF8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_26B2BBBD8();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_26B2BBBC8())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26B2BBE58();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26B2BB008(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
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

    return v14;
  }

  return result;
}

uint64_t sub_26B2BB5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}